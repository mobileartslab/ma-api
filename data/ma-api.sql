-- MySQL dump 10.13  Distrib 5.7.44, for osx10.19 (x86_64)
--
-- Host: localhost    Database: ma_api
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `subheadline` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'lp1.jpg','GIBSON','Les Paul Custom - Ebony with Ebony Fingerboard','The One, the Only Les Paul Custom','With its sonic punch, fluid playability, and classic \"tuxedo\" appointments, the Les Paul Custom is equal parts elegance and brute strength. Fitted with a matched 490/498 humbucker set that takes you from mellow jazz tones to full shred with a pinky twist, this majestic beast is ultra-responsive to your touch. Its fast-action neck, smooth-as-silk ebony fingerboard, and medium jumbo frets facilitate the speedy, dexterous fretwork we’ve heard across prog, fusion, and hard rock genres from guitar virtuosos like Robert Fripp, Al Di Meola, and Zakk Wylde. Gibson’s Custom Shop luthiers selected premium mahogany for the body and capped it with a 2-piece carved maple top — a classic recipe for rich, sustaining, articulate tone that’ll slice right through the mix.'),(2,'lp2.jpg','GIBSON','Slash Les Paul Standard Electric Guitar - November Burst','Whet Your Appetite with Slash\'s Signature Gibson Les Paul Standard','Part of Gibson’s Slash Collection, the Slash Les Paul Standard is a solidbody electric guitar that’s worthy of its namesake. Inject your playing with incredible warmth and sustain, thanks to a resonant solid mahogany body, that’s accented by an eye-catching AAA figured maple top. Enjoy unbelievable playability, courtesy of a comfortable rosewood-capped \"C\"-shaped neck. And when you plug into your British stack, you’ll experience a mid-forward sustain and crunch that every Slash fan is sure to recognize, by virtue of dual Custom Burstbucker Alnico II pickups. The Slash Les Paul Standard sports handwired electronics, color-coordinated hardware, and a bevy of special Slash-approved touches.'),(3,'lp3.jpg','GIBSON','Les Paul Standard \'60s Electric Guitar - Iced Tea','Burstbucker pickups deliver vintage PAF ton','When it comes to capturing vintage Patent Applied For (PAF) humbucker tone, nothing beats the sound of this Les Paul Standard 60\'s Burstbucker pickups. These magnets — along with period-correct unmatched windings on the bobbins — capture the subtle historical variations in true humbucker tone. Plug into your favorite amp, and experience smooth low-end response, complex midrange crunch, and sweet-sounding highs. These pickups sound great clean or they can be used to push your amp into overdrive for the legendary fat, snarling tone you can only get with a humbucker. Under the hood, the control assembly is handwired with matched potentiometers and Orange Drop capacitors, ensuring that you’ll hear the mellifluous voice of your Les Paul Standard ’60s in all its glory, even when you back down your volume. It\'s all driven by a nimble 3-way toggle switch for lightning-fast access to those glorious heritage tones.'),(4,'lp4.jpg','GIBSON','Les Paul Standard \'50s Electric Guitar - Gold Top','Les Paul Standard \'50s: Born to Roc','From its carved maple top to its stockpile of premium features, the Gibson Les Paul Standard ’50s is ready to rock. Burstbucker pickups and handwired electronics deliver a massive tone arsenal. And you’ll enjoy effortless playability courtesy of a satisfying vintage ’50s profile neck and fast-action rosewood fingerboard. If you’ve been wanting a modern Les Paul with a chunky neck feel and premium appointments, Sweetwater has your axe. The Gibson Les Paul Standard \'50s is the guitar you’ve been waiting for.'),(5,'lp5.jpg','GIBSON','Les Paul Standard \'60s Electric Guitar - Bourbon Burst','Les Paul Standard \'60s Electric Guitar - Bourbon Burst','From its carved maple top to its stockpile of premium features, the Gibson Les Paul Standard ’60s is ready to rock. 60s Burstbucker pickups and handwired electronics deliver a massive tone arsenal. And you’ll enjoy effortless playability courtesy of a fast SlimTaper-profile neck and silky-smooth rosewood fingerboard with Plek’d frets. If you’ve been wanting a modern Les Paul with a slinky ’60s feel and premium appointments, Sweetwater has your axe. The Gibson Les Paul Standard ’60s is the guitar you’ve been waiting for.'),(6,'lp6.jpg','EPIPHONE','Les Paul Classic Electric Guitar - Heritage Cherry Sunburst','Classic Looks and a Killer Sound','Modeled after Les Paul Standards produced in the late 1950s, the Epiphone Les Paul Classic has timeless visual appeal. And its modern appointments contribute to a stellar sounding LP that plays great but won’t break the bank. Guitarists at Sweetwater were impressed by the Epiphone Les Paul Classic’s balanced tone that evokes the sound and vibe of countless classic and modern rock hits. And, they were blown away by the super-hot Alnico Classic PRO pickups and the premium hardware and electronics package that make this guitar a total tone monster. For a legendary look and a killer sound, wrap your hands around the Les Paul Classic from Epiphone.'),(7,'lp7.jpg','GIBSON','Les Paul Classic: Iconic Tone and Uncompromising Playability','Les Paul Classic: Iconic Tone and Uncompromising Playability','Strap on Gibson\'s Les Paul Classic, and you\'ll experience iconic tone and uncompromising playability. A time-tested combination of maple and mahogany serves up the tone that’s fueled a million rock anthems, while 60s Burstbucker pickups inject your playing with loads of midrange muscle and sizzling overtones. You also get coil tapping, phase reversal, and pure bypass options for an endless variety of tonal textures. As for playing comfort, the Les Paul Classic feels as amazing as it sounds, thanks to a SlimTaper neck and easy-playing rosewood fingerboard. The Les Paul Classic includes a self-lubricating Graph Tech nut, Tune-o-matic bridge, vintage-style Grover Rotomatic tuners, and gold top hat knobs.'),(8,'lp8.jpg','GIBSON','Les Paul Studio - Ebony','Weight-relieved, Coil-tapped Gibson Les Paul Studio with Endless Player Potential','The Gibson Les Paul Studio is celebrated by live performers and session players alike. The modern Studio covers even wider sonic territory with its coil-tapped 490R/498T humbucking pickups. This combination unlocks plenty of creative textures to flesh out musical ideas, from classic cleans and modern crunch to single-coil cluck. The Gibson Les Paul Studio also benefits from an Ultra-modern weight-relieved body; this reduction of more than a pound in weight provides extra comfort for extended sessions and performances. A feature your fingers will thank you for is the SlimTaper mahogany guitar neck, which re-creates the speed and playability some of the \'60s Les Pauls are known for. Dependable Grover Rotomatic tuners keep this Gibson Les Paul Studio pitch-perfect and ready to rock.');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screen_instance`
--

DROP TABLE IF EXISTS `screen_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'nick@foo.com','$2b$10$tgkavV1jNH1Qhv6k.ebHoOKsOJ47VXItD0xCGIU.fwqvMpKX8sBNO','$2b$10$tgkavV1jNH1Qhv6k.ebHoO');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-22 23:01:30
