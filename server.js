const express = require('express');
const mysql = require('mysql2');
const app = express();
const port = 3000;
const cors = require('cors');

app.use(cors());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// Create MySQL connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '7140',
    database: 'hotelm',
});

// Connect to MySQL
db.connect(err => {
    if (err) throw err;
    console.log('Connected to MySQL Database');
});

app.post('/submit', (req, res) => {
    var {Chain_ID, Hotel_ID, C_Name, Check_In, Check_Out, Phone, Room_No, Room_Type} = req.body;
    Room_No=parseInt(Room_No);
    Chain_ID=parseInt(Chain_ID);
    Hotel_ID=parseInt(Hotel_ID);
    const arr= [Chain_ID, Hotel_ID, C_Name, Check_In, Check_Out, Phone, Room_No, Room_Type];
    console.log(req.body);

    const query = ` INSERT INTO customer (Chain_ID, Hotel_ID, C_Name, Check_In, Check_Out, Phone, Room_No, Room_Type)
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?)`;

    db.query(query, arr, (err, result) => {
        if (err) throw err;
        console.log('Data inserted successfully');
        res.send('Data saved successfully!');
    });
});

app.get('/customer-data', (req, res) => {
    const query = 'SELECT * FROM customer_wtimestamp order by c_id desc';

    db.query(query, (err, results) => {
        if (err) {
            console.error('Error fetching data:', err);
            res.status(500).json({ error: 'Database error' });
        } else {
            res.json(results);
        }
    });
});


app.get('/employees', (req, res) => {
    const query = 'SELECT * FROM employee_wyearsofservice ORDER BY e_id DESC';
    db.query(query, (err, results) => {
      if (err) {
        console.error('Error retrieving data:', err);
        res.status(500).json({ error: 'Internal Server Error' });
      } else {
        res.json(results);
      }
    });
  });  

app.get('/inventory', (req, res) => {
    const query = 'SELECT * FROM inventory_wrestockfunc';
    db.query(query, (err, results) => {
      if (err) {
        console.error('Error retrieving inventory data:', err);
        res.status(500).json({ error: 'Internal Server Error' });
      } else {
        res.json(results);
      }
    });
});
  

app.get('/customer-logs', (req, res) => {
    const query = 'SELECT * FROM customer_log ORDER BY c_id DESC';
    db.query(query, (err, results) => {
      if (err) {
        console.error('Error retrieving data:', err);
        res.status(500).json({ error: 'Internal Server Error' });
      } else {
        res.json(results);
      }
    });
  });  
app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
