-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (arm64)
--
-- Host: localhost    Database: app_studio_instance
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `app_instance`
--

DROP TABLE IF EXISTS `app_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_instance` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_instance`
--

LOCK TABLES `app_instance` WRITE;
/*!40000 ALTER TABLE `app_instance` DISABLE KEYS */;
INSERT INTO `app_instance` VALUES (1,'Test');
/*!40000 ALTER TABLE `app_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_instance`
--

DROP TABLE IF EXISTS `form_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_instance` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `data` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `app_id` int DEFAULT NULL,
  `screen_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_instance`
--

LOCK TABLES `form_instance` WRITE;
/*!40000 ALTER TABLE `form_instance` DISABLE KEYS */;
INSERT INTO `form_instance` VALUES (1,'Suggestion','[\n  {\n    \"id\": 1,\n    \"name\": \"name\",\n    \"label\": \"name:\",\n    \"placeholder\": \"enter your name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 2,\n    \"name\": \"company\",\n    \"label\": \"company:\",\n    \"placeholder\": \"enter your company name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 3,\n    \"name\": \"website\",\n    \"label\": \"website:\",\n    \"placeholder\": \"enter your company website...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 4,\n    \"name\": \"email\",\n    \"label\": \"email address:\",\n    \"placeholder\": \"enter your email address...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },  \n	{\n    \"id\": 5,\n    \"name\": \"specialty\",\n    \"label\": \"top candy specialty (enter only one):\",\n    \"placeholder\": \"enter a candy name...\",\n    \"FormComponent\": \"FormSelectInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\",\n    \"options\": [\n      { \"value\": \"MM\", \"label\": \"MMs\", \"id\": 1 },\n      { \"value\": \"MARS\", \"label\": \"Mars Bar\", \"id\": 2 },\n      { \"value\": \"MWAY\", \"label\": \"Milky Way\", \"id\": 3 },\n      { \"value\": \"SNICK\", \"label\": \"Snickers\", \"id\": 4 }\n    ]\n  },\n  {\n    \"id\": 6,\n    \"name\": \"price\",\n    \"label\": \"price per unit:\",\n    \"placeholder\": \"enter a suggested price...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n	{\n    \"id\": 7,\n    \"name\": \"demo\",\n    \"label\": \"demo stuff:\",\n    \"placeholder\": \"enter a demo item...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  }\n]',1,1),(2,'Log In','[\n  {\n    \"id\": 1,\n    \"name\": \"name\",\n    \"label\": \"name:\",\n    \"placeholder\": \"enter your name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 2,\n    \"name\": \"company\",\n    \"label\": \"company:\",\n    \"placeholder\": \"enter your company name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 3,\n    \"name\": \"website\",\n    \"label\": \"website:\",\n    \"placeholder\": \"enter your company website...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 4,\n    \"name\": \"email\",\n    \"label\": \"email address:\",\n    \"placeholder\": \"enter your email address...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },  \n	{\n    \"id\": 5,\n    \"name\": \"specialty\",\n    \"label\": \"top candy specialty (enter only one):\",\n    \"placeholder\": \"enter a candy name...\",\n    \"FormComponent\": \"FormSelectInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\",\n    \"options\": [\n      { \"value\": \"MM\", \"label\": \"MMs\", \"id\": 1 },\n      { \"value\": \"MARS\", \"label\": \"Mars Bar\", \"id\": 2 },\n      { \"value\": \"MWAY\", \"label\": \"Milky Way\", \"id\": 3 },\n      { \"value\": \"SNICK\", \"label\": \"Snickers\", \"id\": 4 }\n    ]\n  },\n  {\n    \"id\": 6,\n    \"name\": \"price\",\n    \"label\": \"price per unit:\",\n    \"placeholder\": \"enter a suggested price...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n	{\n    \"id\": 7,\n    \"name\": \"demo\",\n    \"label\": \"demo stuff:\",\n    \"placeholder\": \"enter a demo item...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  }\n]',1,1),(3,'Sign Up','[\n  {\n    \"id\": 1,\n    \"name\": \"name\",\n    \"label\": \"name:\",\n    \"placeholder\": \"enter your name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 2,\n    \"name\": \"company\",\n    \"label\": \"company:\",\n    \"placeholder\": \"enter your company name...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 3,\n    \"name\": \"website\",\n    \"label\": \"website:\",\n    \"placeholder\": \"enter your company website...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n  {\n    \"id\": 4,\n    \"name\": \"email\",\n    \"label\": \"email address:\",\n    \"placeholder\": \"enter your email address...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },  \n	{\n    \"id\": 5,\n    \"name\": \"specialty\",\n    \"label\": \"top candy specialty (enter only one):\",\n    \"placeholder\": \"enter a candy name...\",\n    \"FormComponent\": \"FormSelectInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\",\n    \"options\": [\n      { \"value\": \"MM\", \"label\": \"MMs\", \"id\": 1 },\n      { \"value\": \"MARS\", \"label\": \"Mars Bar\", \"id\": 2 },\n      { \"value\": \"MWAY\", \"label\": \"Milky Way\", \"id\": 3 },\n      { \"value\": \"SNICK\", \"label\": \"Snickers\", \"id\": 4 }\n    ]\n  },\n  {\n    \"id\": 6,\n    \"name\": \"price\",\n    \"label\": \"price per unit:\",\n    \"placeholder\": \"enter a suggested price...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  },\n	{\n    \"id\": 7,\n    \"name\": \"demo\",\n    \"label\": \"demo stuff:\",\n    \"placeholder\": \"enter a demo item...\",\n    \"FormComponent\": \"FormTextInput\",\n    \"value\": \"\",\n    \"state\": \"constants.ENABLED\",\n    \"style\": \"\",\n    \"onChange\": \"undefined\",\n    \"onClick\": \"undefined\"\n  }\n]',1,1);
/*!40000 ALTER TABLE `form_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screen_instance`
--

DROP TABLE IF EXISTS `screen_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screen_instance` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `app_id` int NOT NULL,
  `content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `main` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screen_instance`
--

LOCK TABLES `screen_instance` WRITE;
/*!40000 ALTER TABLE `screen_instance` DISABLE KEYS */;
INSERT INTO `screen_instance` VALUES (1,'Main',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSection\",\"id\":\"d49403b2-6e0e-4d08-99cc-34aeeb670771\",\"name\":\"One Column Foo\",\"orderId\":1,\"height\":94},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"1b9119a2-773d-42b9-b34a-ada56e0caad6\",\"name\":\"One Column\",\"orderId\":2,\"height\":300},{\"ScreenComponent\":\"Divider\",\"id\":\"2d27758f-0014-4f01-8143-1418c2281eff\",\"name\":\"Divider\",\"orderId\":3},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"d3a32740-33a9-4e1c-9c5e-d90c48c24134\",\"name\":\"Two Column\",\"orderId\":4,\"height\":299},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"3c8eb394-3d3a-459b-990e-0927f7a283ba\",\"name\":\"One Column\",\"orderId\":5,\"height\":130},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"ae7601bd-9528-4de6-a2d7-4a3ea40d381e\",\"name\":\"One Column\",\"orderId\":6,\"height\":110},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"fad24b71-669c-469c-a795-90403f83cdda\",\"name\":\"One Column\",\"orderId\":7,\"height\":110},{\"ScreenComponent\":\"Divider\",\"id\":\"7f396e9f-47c2-4b78-bf6f-3a6bd761392d\",\"name\":\"Divider\",\"orderId\":8},{\"ScreenComponent\":\"Divider\",\"id\":\"07924bcf-4426-4017-96f0-8b35db6c5b5b\",\"name\":\"Divider\",\"orderId\":9}]}',1),(2,'Log In',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"2d8bab9e-2a4a-4604-a636-ac5f2e104a0f\",\"name\":\"Two Column\",\"orderId\":1},{\"ScreenComponent\":\"Divider\",\"id\":\"b1521782-c2b4-42b8-89e7-9db6a1623b9d\",\"name\":\"Divider\",\"orderId\":2},{\"ScreenComponent\":\"Divider\",\"id\":\"811336ec-338d-437f-a287-50ccb8f34238\",\"name\":\"Divider\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"id\":\"ce5539b9-0a74-4c18-aa60-64a056cb46ae\",\"name\":\"Divider\",\"orderId\":4},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"13a9c80a-1603-4e8a-b6ad-06e456252e93\",\"name\":\"Two Column\",\"orderId\":5},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"49d77fa1-dc9e-4fe9-935e-2d08f4c38a42\",\"name\":\"Two Column\",\"orderId\":6},{\"ScreenComponent\":\"Divider\",\"id\":\"2ace2982-1951-475d-99c6-1f5b347f4214\",\"name\":\"Divider\",\"orderId\":7},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"30db95e1-bdfe-4037-b3e6-777140f4d06f\",\"name\":\"One Column\",\"orderId\":8},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"d95dc76a-7b6c-4b85-8487-c9dcda6d18de\",\"name\":\"One Column\",\"orderId\":9},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"928ce1b8-3b23-4adf-8176-9723e99bff0f\",\"name\":\"One Column\",\"orderId\":10},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"4dbb7e8b-7748-484c-b12a-e271692269cb\",\"name\":\"Two Column\",\"orderId\":11}]}',0),(3,'Sign Up',1,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"15952d87-be62-452f-bd82-647dcd4aea53\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"Divider\",\"id\":\"cb1be597-0187-48e0-a6d4-32f59c549f9d\",\"name\":\"Divider\",\"orderId\":2},{\"ScreenComponent\":\"Divider\",\"id\":\"ec1cc7d5-795e-462f-ae28-7321408e099c\",\"name\":\"Divider\",\"orderId\":3},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"d95dc76a-7b6c-4b85-8487-c9dcda6d18de\",\"name\":\"One Column\",\"orderId\":4},{\"ScreenComponent\":\"Divider\",\"id\":\"ce5539b9-0a74-4c18-aa60-64a056cb46ae\",\"name\":\"Divider\",\"orderId\":5},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"928ce1b8-3b23-4adf-8176-9723e99bff0f\",\"name\":\"One Column\",\"orderId\":6},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"30db95e1-bdfe-4037-b3e6-777140f4d06f\",\"name\":\"One Column\",\"orderId\":7},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"4dbb7e8b-7748-484c-b12a-e271692269cb\",\"name\":\"Two Column\",\"orderId\":8},{\"ScreenComponent\":\"Divider\",\"id\":\"811336ec-338d-437f-a287-50ccb8f34238\",\"name\":\"Divider\",\"orderId\":9}]}',0),(4,'Nick',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"af2b94f7-ac24-4176-96e9-65e029cf923f\",\"name\":\"Two Column\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"38697882-af81-48bf-a8ce-414bfa455451\",\"name\":\"One Column\",\"orderId\":2},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"f4e98123-0f06-41c2-b486-01a7e2fae089\",\"name\":\"One Column\",\"orderId\":3},{\"ScreenComponent\":\"Divider\",\"id\":\"92299a68-76dc-4b48-989d-9940835d9e6b\",\"name\":\"Divider\",\"orderId\":4},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"187e7852-7b99-4076-85e3-286c02917673\",\"name\":\"Two Column\",\"orderId\":5},{\"ScreenComponent\":\"Divider\",\"id\":\"2c8820fe-6753-415a-83b3-e91d281f3b01\",\"name\":\"Divider\",\"orderId\":6}]}',0),(5,'Nick 2',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSection\",\"id\":\"bfd47058-e420-477f-8681-8b3466241759\",\"name\":\"One Column\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"06246164-51bf-4467-aff8-502cc52e06eb\",\"name\":\"Two Column\",\"orderId\":2}]}',0),(6,'Nick Test',1,'',0),(7,'Nick\'s',1,'',0),(10,'Dimitri',1,'',0),(12,'Frank',1,'',0),(15,'Test Card',1,'{\"content\":[]}',NULL),(16,'New Cart',1,'{\"content\":[{\"ScreenComponent\":\"Divider\",\"id\":\"e9fe8483-58eb-4dfc-b597-89b59f4cfa87\",\"name\":\"Divider\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"3044cb8a-33de-43f8-ae28-75b41d1902d3\",\"name\":\"Two Column\",\"orderId\":2}]}',NULL),(17,'Another Card',1,'{\"content\":[]}',NULL),(18,'New Grid',1,'{\"content\":[]}',NULL),(19,'Another Screen',1,'{\"content\":[]}',NULL),(20,'New Login',1,'{\"content\":[]}',NULL),(22,'Cheese',1,'{\"content\":[]}',NULL),(23,'Nick Test 100',1,'{\"content\":[]}',NULL),(29,'Nick Screen',1,'{\"content\":[]}',NULL),(30,'Nick Log In',1,'{\"content\":[{\"ScreenComponent\":\"ScreenSectionTwo\",\"id\":\"13e62923-1fa0-4781-a308-d3b64a5a9fd1\",\"name\":\"Two Column\",\"orderId\":1},{\"ScreenComponent\":\"ScreenSection\",\"id\":\"6921e8ad-86ab-4ac6-941a-bd436d3cfe0f\",\"name\":\"One Column\",\"orderId\":2}]}',NULL),(33,'test',1,'{\"content\":[]}',NULL);
/*!40000 ALTER TABLE `screen_instance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-21 19:07:24
