-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: hotelm
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chain`
--

DROP TABLE IF EXISTS `chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chain` (
  `Chain_Name` varchar(45) DEFAULT NULL,
  `chain_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`chain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chain`
--

LOCK TABLES `chain` WRITE;
/*!40000 ALTER TABLE `chain` DISABLE KEYS */;
INSERT INTO `chain` VALUES ('Hilton Hotels',1),('Marriott International',2),('Hyatt Hotels',3),('Radisson Blu',4),('Taj Hotels',5);
/*!40000 ALTER TABLE `chain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Chain_ID` int DEFAULT NULL,
  `Hotel_ID` int DEFAULT NULL,
  `c_id` int NOT NULL AUTO_INCREMENT,
  `C_Name` varchar(30) DEFAULT NULL,
  `Check_In` date DEFAULT NULL,
  `Check_Out` date DEFAULT NULL,
  `Phone` bigint DEFAULT NULL,
  `Room_No` int DEFAULT NULL,
  `Room_Type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6032 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,101,5001,'John Smith','2025-03-01','2025-03-07',9876543201,101,'Deluxe'),(1,101,5002,'Emma Johnson','2025-03-02','2025-03-08',9876543202,102,'Suite'),(1,101,5003,'Liam Brown','2025-03-04','2025-03-10',9876543203,103,'Standard'),(1,101,5004,'Olivia Wilson','2025-03-05','2025-03-09',9876543204,104,'Deluxe'),(1,101,5005,'Noah Taylor','2025-03-06','2025-03-11',9876543205,105,'Suite'),(1,101,5006,'Sophia Davis','2025-03-07','2025-03-12',9876543206,106,'Standard'),(1,101,5007,'James Miller','2025-03-08','2025-03-14',9876543207,107,'Deluxe'),(1,101,5008,'Isabella Martinez','2025-03-09','2025-03-15',9876543208,108,'Suite'),(1,101,5009,'Lucas Anderson','2025-03-10','2025-03-17',9876543209,109,'Standard'),(1,101,5010,'Mia Thomas','2025-03-11','2025-03-18',9876543210,110,'Deluxe'),(1,102,5011,'Daniel Harris','2025-03-01','2025-03-06',9876543211,201,'Suite'),(1,102,5012,'Ava Clark','2025-03-02','2025-03-07',9876543212,202,'Deluxe'),(1,102,5013,'Benjamin Lewis','2025-03-03','2025-03-08',9876543213,203,'Standard'),(1,102,5014,'Charlotte Walker','2025-03-04','2025-03-09',9876543214,204,'Suite'),(1,102,5015,'Henry Young','2025-03-05','2025-03-10',9876543215,205,'Deluxe'),(1,102,5016,'Emily King','2025-03-06','2025-03-11',9876543216,206,'Standard'),(1,102,5017,'Mason Scott','2025-03-07','2025-03-12',9876543217,207,'Suite'),(1,103,5018,'Ella Carter','2025-03-01','2025-03-05',9876543218,301,'Deluxe'),(1,103,5019,'Jacob White','2025-03-02','2025-03-06',9876543219,302,'Suite'),(1,103,5020,'Amelia Hall','2025-03-03','2025-03-07',9876543220,303,'Standard'),(1,103,5021,'Ethan Adams','2025-03-04','2025-03-08',9876543221,304,'Deluxe'),(1,103,5022,'Lily Torres','2025-03-05','2025-03-09',9876543222,305,'Suite'),(1,103,5023,'William Moore','2025-03-06','2025-03-10',9876543223,306,'Standard'),(2,201,5024,'Oliver Bennett','2025-03-01','2025-03-06',9876543224,401,'Suite'),(2,201,5025,'Sophia Green','2025-03-02','2025-03-07',9876543225,402,'Deluxe'),(2,201,5026,'Jack Turner','2025-03-03','2025-03-08',9876543226,403,'Standard'),(2,201,5027,'Ava Phillips','2025-03-04','2025-03-09',9876543227,404,'Suite'),(2,201,5028,'Daniel Evans','2025-03-05','2025-03-10',9876543228,405,'Deluxe'),(2,201,5029,'Mia Cooper','2025-03-06','2025-03-11',9876543229,406,'Standard'),(2,201,5030,'Lucas Edwards','2025-03-07','2025-03-12',9876543230,407,'Suite'),(2,201,5031,'Emily Parker','2025-03-08','2025-03-13',9876543231,408,'Deluxe'),(2,202,5032,'Hugo Dupont','2025-03-01','2025-03-05',9876543232,501,'Deluxe'),(2,202,5033,'Chloe Lambert','2025-03-02','2025-03-06',9876543233,502,'Suite'),(2,202,5034,'Louis Martin','2025-03-03','2025-03-07',9876543234,503,'Standard'),(2,202,5035,'Camille Moreau','2025-03-04','2025-03-08',9876543235,504,'Deluxe'),(2,202,5036,'Arthur Dubois','2025-03-05','2025-03-09',9876543236,505,'Suite'),(3,301,5037,'Mathieu Bernard','2025-03-01','2025-03-06',9876543237,601,'Suite'),(3,301,5038,'Juliette Lefevre','2025-03-02','2025-03-07',9876543238,602,'Deluxe'),(3,301,5039,'Antoine Girard','2025-03-03','2025-03-08',9876543239,603,'Standard'),(3,301,5040,'Elise Fournier','2025-03-04','2025-03-09',9876543240,604,'Suite'),(3,301,5041,'Raphael Dupuis','2025-03-05','2025-03-10',9876543241,605,'Deluxe'),(3,301,5042,'Marion Perrot','2025-03-06','2025-03-11',9876543242,606,'Standard'),(3,302,5043,'Lukas Schmidt','2025-03-01','2025-03-06',9876543243,701,'Suite'),(3,302,5044,'Hannah Fischer','2025-03-02','2025-03-07',9876543244,702,'Deluxe'),(3,302,5045,'Niklas Hoffmann','2025-03-03','2025-03-08',9876543245,703,'Standard'),(3,302,5046,'Sophia Wagner','2025-03-04','2025-03-09',9876543246,704,'Suite'),(3,302,5047,'Felix Müller','2025-03-05','2025-03-10',9876543247,705,'Deluxe'),(3,302,5048,'Lea Becker','2025-03-06','2025-03-11',9876543248,706,'Standard'),(3,302,5049,'Jonas Weber','2025-03-07','2025-03-12',9876543249,707,'Suite'),(4,401,5050,'Maximilian Keller','2025-03-01','2025-03-06',9876543250,801,'Deluxe'),(4,401,5051,'Clara Bauer','2025-03-02','2025-03-07',9876543251,802,'Suite'),(4,401,5052,'Leon Meier','2025-03-03','2025-03-08',9876543252,803,'Standard'),(4,401,5053,'Hannah Schulz','2025-03-04','2025-03-09',9876543253,804,'Deluxe'),(4,401,5054,'Julian Braun','2025-03-05','2025-03-10',9876543254,805,'Suite'),(5,501,6001,'Amit Sharma','2025-03-15','2025-03-20',9876543210,101,'Deluxe'),(5,501,6002,'Priya Verma','2025-03-10','2025-03-18',9876543211,102,'Suite'),(5,501,6003,'Rahul Nair','2025-03-12','2025-03-16',9876543212,103,'Standard'),(5,501,6004,'Sneha Kapoor','2025-03-14','2025-03-19',9876543213,104,'Executive'),(5,501,6005,'Vikram Singh','2025-03-11','2025-03-17',9876543214,105,'Deluxe'),(5,501,6006,'Anjali Rao','2025-03-09','2025-03-13',9876543215,106,'Suite'),(5,501,6007,'Suresh Iyer','2025-03-07','2025-03-14',9876543216,107,'Standard'),(5,501,6008,'Kiran Joshi','2025-03-16','2025-03-22',9876543217,108,'Executive'),(5,502,6009,'Neha Malhotra','2025-03-08','2025-03-15',9876543220,201,'Suite'),(5,502,6010,'Rajesh Gupta','2025-03-10','2025-03-14',9876543221,202,'Deluxe'),(5,502,6011,'Swati Bhatt','2025-03-12','2025-03-18',9876543222,203,'Executive'),(5,502,6012,'Alok Mehta','2025-03-09','2025-03-12',9876543223,204,'Standard'),(5,502,6013,'Manisha Sen','2025-03-14','2025-03-20',9876543224,205,'Suite'),(5,502,6014,'Kunal Desai','2025-03-11','2025-03-17',9876543225,206,'Deluxe'),(5,503,6015,'Arjun Reddy','2025-03-05','2025-03-10',9876543230,301,'Standard'),(5,503,6016,'Divya Menon','2025-03-07','2025-03-14',9876543231,302,'Suite'),(5,503,6017,'Naveen Kumar','2025-03-10','2025-03-13',9876543232,303,'Executive'),(5,503,6018,'Pooja Shetty','2025-03-12','2025-03-18',9876543233,304,'Deluxe'),(5,503,6019,'Vishal Prasad','2025-03-14','2025-03-20',9876543234,305,'Standard'),(5,503,6020,'Madhuri Patil','2025-03-09','2025-03-12',9876543235,306,'Suite'),(5,504,6021,'Siddharth Jain','2025-03-06','2025-03-11',9876543240,401,'Deluxe'),(5,504,6022,'Meera Krishnan','2025-03-08','2025-03-14',9876543241,402,'Suite'),(5,504,6023,'Rohan Das','2025-03-10','2025-03-16',9876543242,403,'Executive'),(5,504,6024,'Anusha Reddy','2025-03-12','2025-03-19',9876543243,404,'Standard'),(5,504,6025,'Gaurav Bhatia','2025-03-14','2025-03-22',9876543244,405,'Deluxe'),(5,505,6026,'Prateek Sen','2025-03-06','2025-03-11',9876543250,501,'Suite'),(5,505,6027,'Shreya Mukherjee','2025-03-08','2025-03-14',9876543251,502,'Executive'),(5,505,6028,'Anirban Chatterjee','2025-03-10','2025-03-17',9876543252,503,'Standard'),(5,505,6029,'Deepika Ghosh','2025-03-12','2025-03-18',9876543253,504,'Deluxe'),(5,505,6030,'Subhajit Roy','2025-03-14','2025-03-20',9876543254,505,'Suite'),(5,505,6031,'Ritika Basu','2025-03-09','2025-03-12',9876543255,506,'Executive');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Chain_ID` int DEFAULT NULL,
  `Hotel_ID` int DEFAULT NULL,
  `e_id` int NOT NULL AUTO_INCREMENT,
  `E_Name` varchar(30) DEFAULT NULL,
  `Occupation` varchar(30) DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `Join_Date` date DEFAULT NULL,
  `Phone` bigint DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3521 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,101,3001,'Kevin Anderson','Manager',82000,'2018-04-03',9876543254),(1,101,3002,'Laura Collins','Receptionist',38000,'2023-02-15',9876543255),(1,101,3003,'Michael Johnson','Housekeeping',26000,'2022-06-10',9876543256),(1,101,3004,'Jessica White','Chef',54000,'2019-07-25',9876543257),(1,101,3005,'Daniel Harris','Security',32000,'2021-09-10',9876543258),(1,101,3006,'Emily Thomas','Concierge',41000,'2020-05-14',9876543259),(1,101,3007,'Robert Brown','Bartender',35000,'2022-03-20',9876543260),(1,101,3008,'Sarah Miller','Spa Therapist',46000,'2020-08-08',9876543261),(1,101,3009,'Chris Wilson','Valet',31000,'2019-12-15',9876543262),(1,101,3010,'Anna Lee','Accountant',60000,'2017-06-23',9876543263),(1,102,3011,'David Carter','Manager',84000,'2016-10-11',9876543264),(1,102,3012,'Sophia Martinez','Receptionist',39000,'2022-01-07',9876543265),(1,102,3013,'Liam Scott','Housekeeping',27000,'2023-05-30',9876543266),(1,102,3014,'Olivia Hall','Chef',55000,'2019-03-18',9876543267),(1,102,3015,'Ethan Young','Security',33000,'2021-11-15',9876543268),(1,102,3016,'Mia Walker','Event Coordinator',42000,'2020-09-21',9876543269),(1,102,3017,'Benjamin King','Laundry Staff',29000,'2019-07-19',9876543270),(1,102,3018,'Emma Lewis','Room Service',35000,'2020-12-05',9876543271),(1,102,3019,'Noah Allen','IT Support',49000,'2018-02-14',9876543272),(1,102,3020,'Charlotte Adams','Fitness Trainer',62000,'2017-04-08',9876543273),(1,103,3021,'Aiden Parker','Manager',81000,'2017-09-23',9876543274),(1,103,3022,'Isabella Harris','Receptionist',40000,'2023-03-12',9876543275),(1,103,3023,'Lucas Torres','Housekeeping',28000,'2022-09-10',9876543276),(1,103,3024,'Amelia White','Chef',57000,'2018-06-30',9876543277),(1,103,3025,'Mason Green','Security',34000,'2021-02-25',9876543278),(1,103,3026,'Evelyn Moore','Bellboy',27000,'2020-10-05',9876543279),(1,103,3027,'Elijah Taylor','Waiter',31000,'2019-07-22',9876543280),(1,103,3028,'Avery Carter','Spa Therapist',48000,'2023-01-19',9876543281),(1,103,3029,'James Rivera','Electrician',42000,'2018-11-17',9876543282),(1,103,3030,'Scarlett Brooks','Gardener',29000,'2017-05-09',9876543283),(2,201,3031,'Henry Lewis','Manager',85000,'2016-03-15',9876543295),(2,201,3032,'Isabella Martin','Receptionist',41000,'2021-05-19',9876543296),(2,201,3033,'Jacob Scott','Housekeeping',32000,'2022-02-08',9876543297),(2,201,3034,'Emily Clarke','Chef',54000,'2020-11-21',9876543298),(2,201,3035,'William Turner','Security',33000,'2019-09-10',9876543299),(2,201,3036,'Olivia Watson','Sommelier',46000,'2020-07-05',9876543300),(2,201,3037,'Benjamin Foster','Baker',38000,'2021-12-18',9876543301),(2,201,3038,'Charlotte King','Front Desk Supervisor',49000,'2018-04-22',9876543302),(2,201,3039,'Ethan Wright','Maintenance',40000,'2019-06-30',9876543303),(2,201,3040,'Ava Harris','Public Relations',57000,'2017-08-16',9876543304),(2,202,3041,'Liam Richardson','Manager',87000,'2015-07-25',9876543305),(2,202,3042,'Emma Robinson','Receptionist',42000,'2022-09-13',9876543306),(2,202,3043,'Oliver Walker','Housekeeping',31000,'2021-10-01',9876543307),(2,202,3044,'Sophia Wilson','Chef',58000,'2019-06-18',9876543308),(2,202,3045,'Noah Phillips','Security',35000,'2020-11-22',9876543309),(2,202,3046,'Lucas Carter','Florist',43000,'2018-03-11',9876543310),(2,202,3047,'Mia Evans','Pastry Chef',39000,'2021-05-17',9876543311),(2,202,3048,'James Brooks','Tech Support',52000,'2019-04-09',9876543312),(2,202,3049,'Isabelle Turner','Concierge',49000,'2020-07-30',9876543313),(2,202,3050,'Logan White','Event Planner',60000,'2017-01-26',9876543314),(3,301,3051,'Lucas Martin','Manager',80000,'2015-06-10',9876543315),(3,301,3052,'Emma Thomas','Receptionist',37000,'2022-11-09',9876543316),(3,301,3053,'Benjamin Moore','Housekeeping',30000,'2021-12-01',9876543317),(3,301,3054,'Sophia Jackson','Chef',57000,'2019-08-14',9876543318),(3,301,3055,'Liam Hill','Security',34000,'2020-03-23',9876543319),(3,301,3056,'Amelia Parker','Personal Trainer',48000,'2018-02-16',9876543320),(3,301,3057,'Oliver Wright','DJ',41000,'2021-06-27',9876543321),(3,301,3058,'Mia Carter','Yoga Instructor',45000,'2017-10-18',9876543322),(3,301,3059,'Ethan Wilson','IT Specialist',53000,'2018-11-05',9876543323),(3,301,3060,'Isabella Lewis','Baker',42000,'2019-09-20',9876543324),(4,401,3061,'Maximilian Schmidt','Manager',86000,'2016-12-01',9876543325),(4,401,3062,'Anna Becker','Receptionist',39000,'2022-05-11',9876543326),(4,401,3063,'Felix Wagner','Housekeeping',31000,'2021-03-07',9876543327),(4,401,3064,'Lena Fischer','Chef',60000,'2018-09-15',9876543328),(4,401,3065,'Noah Weber','Security',36000,'2020-02-14',9876543329),(4,401,3066,'Sophie Klein','Spa Manager',52000,'2019-04-19',9876543330),(4,401,3067,'Julian Meier','Bellboy',29000,'2021-01-10',9876543331),(4,401,3068,'Hannah Braun','Concierge',48000,'2017-08-05',9876543332),(4,401,3069,'Lukas Hoffmann','Driver',40000,'2019-11-30',9876543333),(4,401,3070,'Marie Schmid','Marketing Specialist',58000,'2016-07-12',9876543334),(5,501,3071,'Rajesh Sharma','Manager',88000,'2015-03-10',9876543335),(5,501,3072,'Priya Kapoor','Receptionist',42000,'2022-10-01',9876543336),(5,501,3073,'Amit Verma','Housekeeping',31000,'2021-08-15',9876543337),(5,501,3074,'Sneha Rao','Chef',62000,'2018-05-20',9876543338),(5,501,3075,'Vikas Nair','Security',37000,'2020-07-09',9876543339),(5,501,3076,'Neha Joshi','Event Planner',49000,'2019-06-12',9876543340),(5,501,3077,'Rohan Khanna','Valet',35000,'2021-04-14',9876543341),(5,501,3078,'Divya Iyer','Marketing',54000,'2017-09-25',9876543342),(5,501,3079,'Arjun Malhotra','Bartender',41000,'2018-11-22',9876543343),(5,501,3080,'Kavita Menon','Concierge',50000,'2016-01-30',9876543344),(5,502,3081,'Anjali Mehta','Manager',87000,'2016-04-10',9876543345),(5,502,3082,'Ravi Gupta','Receptionist',42000,'2022-09-12',9876543346),(5,502,3083,'Sunil Patil','Housekeeping',31000,'2021-10-15',9876543347),(5,502,3084,'Meera Deshmukh','Chef',62000,'2018-06-20',9876543348),(5,502,3085,'Nitin Rao','Security',37000,'2020-08-09',9876543349),(5,502,3086,'Sanjay Iyer','Event Planner',49000,'2019-07-12',9876543350),(5,502,3087,'Alok Khanna','Valet',35000,'2021-05-14',9876543351),(5,502,3088,'Kiran Nair','Marketing',54000,'2017-10-25',9876543352),(5,502,3089,'Sita Malhotra','Bartender',41000,'2018-12-22',9876543353),(5,502,3090,'Ramesh Menon','Concierge',50000,'2016-02-28',9876543354),(5,503,3091,'Ashok Bhatia','Manager',86000,'2015-05-12',9876543355),(5,503,3092,'Pooja Kulkarni','Receptionist',40000,'2022-07-11',9876543356),(5,503,3093,'Rajiv Shetty','Housekeeping',32000,'2021-09-20',9876543357),(5,503,3094,'Priyanka Sharma','Chef',63000,'2018-08-25',9876543358),(5,503,3095,'Arvind Kumar','Security',36000,'2020-06-18',9876543359),(5,503,3096,'Swati Desai','Event Planner',51000,'2019-05-17',9876543360),(5,503,3097,'Manoj Nair','Valet',34000,'2021-03-12',9876543361),(5,503,3098,'Lata Verma','Marketing',53000,'2017-11-20',9876543362),(5,503,3099,'Suresh Joshi','Bartender',42000,'2018-10-10',9876543363),(5,503,3100,'Kavita Rao','Concierge',51000,'2016-03-15',9876543364),(3,304,3101,'Jack Rivera','Manager',86000,'2015-09-15',9876543365),(3,304,3102,'Zoe Cooper','Receptionist',42000,'2022-06-09',9876543366),(3,304,3103,'Nathan Flores','Housekeeping',32000,'2021-01-15',9876543367),(3,304,3104,'Emma Gomez','Chef',62000,'2018-08-12',9876543368),(3,304,3105,'Caleb Turner','Security',37000,'2019-09-30',9876543369),(3,304,3106,'Madison Stewart','Beautician',49000,'2020-04-28',9876543370),(3,304,3107,'Luke Carter','Gym Trainer',52000,'2017-02-21',9876543371),(3,304,3108,'Isla Hill','Bellboy',30000,'2019-11-15',9876543372),(3,304,3109,'Sebastian Howard','Electrician',42000,'2018-05-23',9876543373),(3,304,3110,'Avery Bennett','Laundry Staff',29000,'2021-03-19',9876543374),(5,504,3111,'Daniel Patel','Manager',87000,'2016-07-01',9876543375),(5,504,3112,'Sofia Reddy','Receptionist',43000,'2022-08-21',9876543376),(5,504,3113,'Ryan Nair','Housekeeping',33000,'2021-02-18',9876543377),(5,504,3114,'Aishwarya Desai','Chef',65000,'2019-07-15',9876543378),(5,504,3115,'Vikram Menon','Security',38000,'2020-12-03',9876543379),(5,504,3116,'Kavita Malhotra','Marketing',56000,'2017-11-11',9876543380),(5,504,3117,'Rohan Chatterjee','Bartender',42000,'2018-06-30',9876543381),(5,504,3118,'Divya Iyer','Yoga Instructor',50000,'2020-05-09',9876543382),(5,504,3119,'Arjun Khanna','Event Planner',60000,'2019-04-14',9876543383),(5,504,3120,'Neha Kapoor','Concierge',51000,'2016-03-25',9876543384),(5,505,3121,'Amit Shah','Manager',89000,'2015-12-10',9876543385),(5,505,3122,'Priya Joshi','Receptionist',44000,'2022-10-05',9876543386),(5,505,3123,'Suresh Rao','Housekeeping',34000,'2021-06-01',9876543387),(5,505,3124,'Ananya Verma','Chef',67000,'2018-09-18',9876543388),(5,505,3125,'Rajat Tiwari','Security',39000,'2019-08-29',9876543389),(5,505,3126,'Sneha Singh','Florist',53000,'2020-02-16',9876543390),(5,505,3127,'Manoj Mehta','Tech Support',55000,'2017-04-30',9876543391),(5,505,3128,'Tanisha Bhatt','Driver',43000,'2018-05-27',9876543392),(5,505,3129,'Akshay Kapoor','Laundry Staff',31000,'2019-01-09',9876543393),(5,505,3130,'Pooja Nanda','Personal Assistant',57000,'2016-11-08',9876543394),(3,302,3501,'Daniel Robinson','Manager',82000,'2017-07-15',9876543345),(3,302,3502,'Sophia Brown','Receptionist',40000,'2023-02-10',9876543346),(3,302,3503,'James Wilson','Housekeeping',29000,'2022-05-30',9876543347),(3,302,3504,'Olivia Martinez','Chef',58000,'2018-04-20',9876543348),(3,302,3505,'Elijah Garcia','Security',35000,'2021-09-25',9876543349),(3,302,3506,'Mia Clark','Barista',36000,'2020-07-14',9876543350),(3,302,3507,'Noah Hernandez','Spa Therapist',47000,'2019-06-10',9876543351),(3,302,3508,'Ava Scott','IT Support',50000,'2018-03-29',9876543352),(3,302,3509,'Liam Lewis','Maintenance',42000,'2020-11-15',9876543353),(3,302,3510,'Isabella Young','Florist',43000,'2017-09-12',9876543354),(3,303,3511,'Ethan Walker','Manager',83000,'2016-10-08',9876543355),(3,303,3512,'Charlotte Hall','Receptionist',41000,'2023-03-11',9876543356),(3,303,3513,'Mason Allen','Housekeeping',31000,'2022-08-25',9876543357),(3,303,3514,'Harper King','Chef',59000,'2019-05-19',9876543358),(3,303,3515,'Benjamin Wright','Security',36000,'2020-10-22',9876543359),(3,303,3516,'Ella Baker','Bartender',38000,'2021-07-28',9876543360),(3,303,3517,'Henry Adams','Driver',40000,'2018-11-03',9876543361),(3,303,3518,'Lily Torres','Event Coordinator',47000,'2017-06-18',9876543362),(3,303,3519,'Samuel Brooks','Marketing',55000,'2019-12-11',9876543363),(3,303,3520,'Victoria Phillips','Concierge',49000,'2016-04-07',9876543364);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_main`
--

DROP TABLE IF EXISTS `hotel_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_main` (
  `Chain_ID` int DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Hotel` varchar(50) DEFAULT NULL,
  `Hotel_ID` int NOT NULL,
  PRIMARY KEY (`Hotel_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_main`
--

LOCK TABLES `hotel_main` WRITE;
/*!40000 ALTER TABLE `hotel_main` DISABLE KEYS */;
INSERT INTO `hotel_main` VALUES (1,'USA','New York','Hilton Manhattan',101),(1,'USA','Los Angeles','Hilton LA Downtown',102),(1,'USA','Chicago','Hilton Chicago Riverwalk',103),(2,'UK','London','Marriott London West',201),(2,'France','Paris','Marriott Champs-Elysées',202),(3,'France','Lyon','Hyatt Place Lyon',301),(3,'Germany','Berlin','Hyatt Berlin Central',302),(3,'Italy','Rome','Hyatt Regency Rome',303),(3,'Spain','Barcelona','Hyatt Grand Barcelona',304),(4,'Germany','Munich','Radisson Blu Munich',401),(5,'India','Mumbai','Taj Mahal Palace',501),(5,'India','Delhi','Taj Diplomatic Enclave',502),(5,'India','Bangalore','Taj Bangalore Royale',503),(5,'India','Chennai','Taj Marina Bay',504),(5,'India','Kolkata','Taj Eastern Pearl',505);
/*!40000 ALTER TABLE `hotel_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `Chain_ID` int DEFAULT NULL,
  `Hotel_ID` int DEFAULT NULL,
  `Item` varchar(30) NOT NULL,
  `Cost` int DEFAULT NULL,
  `Quantity_Left` int DEFAULT NULL,
  CONSTRAINT `inventory_chk_1` CHECK ((`Cost` >= 0)),
  CONSTRAINT `inventory_chk_2` CHECK ((`Quantity_Left` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,101,'Bedsheets',20,100),(1,101,'Towels',15,80),(1,101,'Shampoo',5,200),(1,101,'Water Bottles',1,300),(1,101,'Soap',3,250),(1,101,'Bathrobes',30,60),(1,101,'Slippers',8,120),(1,101,'Hair Dryer',25,40),(1,101,'Toothbrush Kit',5,150),(1,101,'Shaving Kit',10,90),(1,102,'Bedsheets',20,90),(1,102,'Towels',15,85),(1,102,'Shampoo',5,210),(1,102,'Water Bottles',1,280),(1,102,'Soap',3,260),(1,102,'Mini Bar Snacks',50,50),(1,102,'Electric Kettle',35,30),(1,102,'Bathrobes',30,55),(1,102,'Slippers',8,100),(1,102,'Face Masks',3,200),(1,103,'Bedsheets',20,110),(1,103,'Towels',15,95),(1,103,'Shampoo',5,230),(1,103,'Water Bottles',1,350),(1,103,'Soap',3,280),(1,103,'Room Freshener',15,80),(1,103,'Hand Sanitizer',10,150),(1,103,'Laundry Bag',12,70),(1,103,'Sewing Kit',8,60),(1,103,'Coffee Pods',20,50),(2,201,'Bedsheets',20,120),(2,201,'Towels',15,100),(2,201,'Shampoo',5,220),(2,201,'Water Bottles',1,320),(2,201,'Soap',3,270),(2,201,'Hair Dryer',25,50),(2,201,'Cotton Swabs',6,100),(2,201,'Bath Salt',18,80),(2,201,'Perfumed Candles',20,40),(2,201,'Hand Cream',15,90),(2,202,'Bedsheets',20,130),(2,202,'Towels',15,110),(2,202,'Shampoo',5,240),(2,202,'Water Bottles',1,330),(2,202,'Soap',3,290),(2,202,'Wine Glasses',35,60),(2,202,'Bathrobes',30,65),(2,202,'Aromatherapy Oils',25,70),(2,202,'Luxury Face Masks',15,80),(2,202,'Satin Pillowcases',25,45),(3,301,'Bedsheets',20,140),(3,301,'Towels',15,115),(3,301,'Shampoo',5,250),(3,301,'Water Bottles',1,400),(3,301,'Soap',3,300),(3,301,'Bath Mats',22,85),(3,301,'Face Towels',12,120),(3,301,'Toiletry Bag',18,100),(3,301,'Candle Set',30,50),(3,301,'Portable Fans',40,30),(3,302,'Bedsheets',20,150),(3,302,'Towels',15,120),(3,302,'Shampoo',5,260),(3,302,'Water Bottles',1,420),(3,302,'Soap',3,320),(3,302,'Essential Oils',30,80),(3,302,'Foot Cream',20,90),(3,302,'Travel Pillows',25,70),(3,302,'Bath Bombs',20,60),(3,302,'Silk Eye Masks',15,50),(4,401,'Bedsheets',20,160),(4,401,'Towels',15,130),(4,401,'Shampoo',5,280),(4,401,'Water Bottles',1,450),(4,401,'Soap',3,350),(4,401,'Yoga Mats',40,40),(4,401,'Hand Towels',12,150),(4,401,'Body Lotion',15,100),(4,401,'Massage Oil',35,50),(4,401,'Luxury Bed Covers',60,30),(5,501,'Bedsheets',20,170),(5,501,'Towels',15,140),(5,501,'Shampoo',5,290),(5,501,'Water Bottles',1,480),(5,501,'Soap',3,360),(5,501,'Perfumed Oils',50,50),(5,501,'Gold-Plated Utensils',100,20),(5,501,'Silk Robes',120,25),(5,501,'Traditional Indian Tea Set',80,30),(5,501,'Ayurvedic Skincare Kit',90,40),(5,502,'Bedsheets',20,180),(5,502,'Towels',15,150),(5,502,'Shampoo',5,300),(5,502,'Water Bottles',1,500),(5,502,'Soap',3,380),(5,502,'Kashmiri Shawls',150,15),(5,502,'Handcrafted Soap Set',50,40),(5,502,'Silver Tea Cups',90,25),(5,502,'Hand-Painted Vases',120,30),(5,502,'Luxury Perfume Collection',250,10),(2,202,'Scented Candles',20,40),(2,202,'Organic Bath Set',30,50),(2,202,'Herbal Teas',15,80),(2,202,'Luxury Towels',40,30),(3,303,'Bedsheets',20,130),(3,303,'Towels',15,110),(3,303,'Shampoo',5,270),(3,303,'Water Bottles',1,350),(3,303,'Soap',3,290),(3,303,'Luxury Room Sprays',25,50),(3,303,'Exotic Tea Collection',35,45),(3,303,'Custom Bathrobes',60,25),(3,303,'Gold-Plated Mirror',120,15),(3,303,'Jewelry Box',90,20),(3,304,'Bedsheets',20,125),(3,304,'Towels',15,100),(3,304,'Shampoo',5,260),(3,304,'Water Bottles',1,340),(3,304,'Soap',3,275),(3,304,'Premium Pillow Set',50,40),(3,304,'Silk Pajamas',80,30),(3,304,'Handwoven Carpets',100,15),(3,304,'Brass Handicrafts',75,20),(3,304,'Mini Fridge Stock',150,10),(5,504,'Bedsheets',20,140),(5,504,'Towels',15,120),(5,504,'Shampoo',5,280),(5,504,'Water Bottles',1,360),(5,504,'Soap',3,300),(5,504,'Luxury Hand Cream',25,50),(5,504,'Handwoven Baskets',60,25),(5,504,'Silverware Set',90,20),(5,504,'Perfumed Diffuser',40,35),(5,504,'Saffron Collection',70,30),(5,505,'Bedsheets',20,160),(5,505,'Towels',15,130),(5,505,'Shampoo',5,300),(5,505,'Water Bottles',1,400),(5,505,'Soap',3,320),(5,505,'Rose Water Sprays',30,50),(5,505,'Silk Scarves',90,20),(5,505,'Luxury Aroma Set',110,15),(5,505,'Gold-Trimmed Glasses',150,10),(5,505,'Premium Coffee Beans',50,40),(5,503,'Bedsheets',20,150),(5,503,'Towels',15,125),(5,503,'Shampoo',5,270),(5,503,'Water Bottles',1,380),(5,503,'Soap',3,310),(5,503,'Luxury Herbal Oils',40,45),(5,503,'Handcrafted Pottery',75,30),(5,503,'Exclusive Perfume Set',120,20),(5,503,'Velvet Cushion Covers',60,25),(5,503,'Organic Honey Collection',50,35);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `Chain_ID` int DEFAULT NULL,
  `Hotel_ID` int DEFAULT NULL,
  `Room_Type` varchar(20) DEFAULT NULL,
  `R_Cost` int DEFAULT NULL,
  `Total_RoomsofType` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,101,'Standard',150,50),(1,101,'Deluxe',200,30),(1,101,'Suite',300,20),(1,101,'Penthouse',500,5),(1,102,'Standard',140,40),(1,102,'Deluxe',190,25),(1,102,'Suite',280,15),(2,201,'Standard',160,45),(2,201,'Deluxe',220,35),(2,201,'Suite',310,18),(2,202,'Standard',145,30),(2,202,'Deluxe',195,22),(3,301,'Standard',155,55),(3,301,'Deluxe',210,32),(3,301,'Suite',320,12),(3,302,'Standard',150,40),(3,302,'Presidential',600,3),(3,303,'Suite',330,10),(3,303,'Standard',140,25),(5,501,'Standard',165,60),(5,501,'Deluxe',230,40),(5,501,'Penthouse',550,4),(5,502,'Standard',155,35),(5,502,'Deluxe',210,28),(5,503,'Standard',160,50),(5,503,'Suite',340,15),(5,504,'Standard',145,30),(5,504,'Deluxe',200,20),(1,103,'Standard',135,45),(1,103,'Deluxe',185,28),(1,103,'Suite',290,15),(1,103,'Penthouse',480,6),(2,202,'Suite',300,12),(3,302,'Deluxe',215,25),(3,302,'Suite',340,10),(3,303,'Deluxe',220,18),(3,303,'Penthouse',520,5),(3,304,'Standard',145,35),(3,304,'Deluxe',205,22),(3,304,'Suite',315,14),(3,304,'Penthouse',510,4),(5,505,'Standard',150,40),(5,505,'Deluxe',205,30),(5,505,'Suite',330,12),(5,505,'Presidential',650,3),(4,401,'Single',100,30),(4,401,'Double',180,40),(4,401,'Suite',300,20),(4,401,'Deluxe',400,15),(4,401,'Penthouse',800,5);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-03  2:35:24
