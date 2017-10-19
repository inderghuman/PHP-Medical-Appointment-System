-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: appointment_project
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `appointment_booking_statuses`
--

DROP TABLE IF EXISTS `appointment_booking_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_booking_statuses` (
  `appoint_booking_status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appointment_booking_id` int(11) NOT NULL,
  `status_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`appoint_booking_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_booking_statuses`
--

LOCK TABLES `appointment_booking_statuses` WRITE;
/*!40000 ALTER TABLE `appointment_booking_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_booking_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_bookings`
--

DROP TABLE IF EXISTS `appointment_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_bookings` (
  `appointment_booking_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appoint_time_slot_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`appointment_booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_bookings`
--

LOCK TABLES `appointment_bookings` WRITE;
/*!40000 ALTER TABLE `appointment_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_timeslots`
--

DROP TABLE IF EXISTS `booking_timeslots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_timeslots` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `room_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_timeslots`
--

LOCK TABLES `booking_timeslots` WRITE;
/*!40000 ALTER TABLE `booking_timeslots` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_timeslots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branches` (
  `branch_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors` (
  `doctor_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_Id` int(11) NOT NULL,
  `work_start_date` date NOT NULL,
  `credentials` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `front_desk_staff`
--

DROP TABLE IF EXISTS `front_desk_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `front_desk_staff` (
  `staff_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `front_desk_staff`
--

LOCK TABLES `front_desk_staff` WRITE;
/*!40000 ALTER TABLE `front_desk_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `front_desk_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_10_15_172316_create_doctor_table',1),(4,'2017_10_15_172336_create_patient_table',1),(5,'2017_10_15_172415_create_front_desk_staff_table',1),(6,'2017_10_15_172642_create_branch_table',1),(7,'2017_10_15_173346_create_service_table',1),(8,'2017_10_15_191533_create_booking_timeslot_table',1),(9,'2017_10_15_191926_create_appointment_booking_table',1),(10,'2017_10_15_192211_create_room',1),(11,'2017_10_15_192707_create_usergroup_table',1),(12,'2017_10_16_002428_create_patient_dental_history_table',1),(13,'2017_10_16_002544_create_patient_health_history_table',2),(14,'2017_10_16_013534_create_appointment_booking_status_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_dental_history`
--

DROP TABLE IF EXISTS `patient_dental_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_dental_history` (
  `dental_history_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `former_dentist_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `former_dentist_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `former_dentist_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `former_dentist_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `former_dentist_zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `former_dentist_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_visit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bad_breath` tinyint(4) NOT NULL,
  `bleeding_gum` tinyint(4) NOT NULL,
  `blister_on_lips_mouth` tinyint(4) NOT NULL,
  `burning_sensation_tongue` tinyint(4) NOT NULL,
  `chew_one_side_of_month` tinyint(4) NOT NULL,
  `smoking` tinyint(4) NOT NULL,
  `clicking_jaw` tinyint(4) NOT NULL,
  `dry_mouth` tinyint(4) NOT NULL,
  `fingernail_bitting` tinyint(4) NOT NULL,
  `food_collection_between_teeth` tinyint(4) NOT NULL,
  `foreign_objects` tinyint(4) NOT NULL,
  `grinding_teeth` tinyint(4) NOT NULL,
  `jaw_pain` tinyint(4) NOT NULL,
  `lip_bitting` tinyint(4) NOT NULL,
  `loose_teeth` tinyint(4) NOT NULL,
  `mouth_breathing` tinyint(4) NOT NULL,
  `mouth_pain` tinyint(4) NOT NULL,
  `orthondontic_treatment` tinyint(4) NOT NULL,
  `pain_around_ear` tinyint(4) NOT NULL,
  `sensitivity_to_cold` tinyint(4) NOT NULL,
  `sensitivity_to_heat` tinyint(4) NOT NULL,
  `sensitivity_to_sweets` tinyint(4) NOT NULL,
  `sensitivity_when_biting` tinyint(4) NOT NULL,
  `sores_in_mouth` tinyint(4) NOT NULL,
  `frequency_of_flossing` tinyint(4) NOT NULL,
  `frequency_of_brushing` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dental_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_dental_history`
--

LOCK TABLES `patient_dental_history` WRITE;
/*!40000 ALTER TABLE `patient_dental_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_dental_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_health_history`
--

DROP TABLE IF EXISTS `patient_health_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_health_history` (
  `health_history_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `physician_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `physician_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `physician_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `physician_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `physician_zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `physician_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_visit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adis_hiv` tinyint(4) NOT NULL,
  `anemia` tinyint(4) NOT NULL,
  `arthris` tinyint(4) NOT NULL,
  `artifical_heart_valves` tinyint(4) NOT NULL,
  `artifical_joints` tinyint(4) NOT NULL,
  `smoking` tinyint(4) NOT NULL,
  `clicking_jaw` tinyint(4) NOT NULL,
  `asthma` tinyint(4) NOT NULL,
  `back_problems` tinyint(4) NOT NULL,
  `bleeding_abnormally` tinyint(4) NOT NULL,
  `bloodDisease` tinyint(4) NOT NULL,
  `cancer` tinyint(4) NOT NULL,
  `chemical_dependency` tinyint(4) NOT NULL,
  `chemotherapy` tinyint(4) NOT NULL,
  `circulatory` tinyint(4) NOT NULL,
  `congenital_hearth_lesions` tinyint(4) NOT NULL,
  `cough_bloody` tinyint(4) NOT NULL,
  `diabetes` tinyint(4) NOT NULL,
  `emphysema` tinyint(4) NOT NULL,
  `epilepsy` tinyint(4) NOT NULL,
  `fainting` tinyint(4) NOT NULL,
  `glaucoma` tinyint(4) NOT NULL,
  `headaches` tinyint(4) NOT NULL,
  `heart_murmur` tinyint(4) NOT NULL,
  `heart_problems` tinyint(4) NOT NULL,
  `hepatits_type` tinyint(4) NOT NULL,
  `herpes` tinyint(4) NOT NULL,
  `high_blood_pressure` tinyint(4) NOT NULL,
  `jaundice` tinyint(4) NOT NULL,
  `jaw_pain` tinyint(4) NOT NULL,
  `kidney_disease` tinyint(4) NOT NULL,
  `liver_disease` tinyint(4) NOT NULL,
  `low_blood_pressure` tinyint(4) NOT NULL,
  `mitral_valve_prolapse` tinyint(4) NOT NULL,
  `pace_maker` tinyint(4) NOT NULL,
  `psychiatric_care` tinyint(4) NOT NULL,
  `radiation_treament` tinyint(4) NOT NULL,
  `respitory_disease` tinyint(4) NOT NULL,
  `rheumatic_fever` tinyint(4) NOT NULL,
  `scarlet_fever` tinyint(4) NOT NULL,
  `shortness_of_breath` tinyint(4) NOT NULL,
  `sinus_trouble` tinyint(4) NOT NULL,
  `skin_rash` tinyint(4) NOT NULL,
  `special_diet` tinyint(4) NOT NULL,
  `stroke` tinyint(4) NOT NULL,
  `swollen_feet` tinyint(4) NOT NULL,
  `swollen_neck` tinyint(4) NOT NULL,
  `tyroid` tinyint(4) NOT NULL,
  `tonsilitis` tinyint(4) NOT NULL,
  `tuberculosis` tinyint(4) NOT NULL,
  `tumor_on_head_neck` tinyint(4) NOT NULL,
  `ulcer` tinyint(4) NOT NULL,
  `venereal_disease` tinyint(4) NOT NULL,
  `weight_loss` tinyint(4) NOT NULL,
  `contact_lenses` tinyint(4) NOT NULL,
  `pregnant` tinyint(4) NOT NULL,
  `birth_control_pills` tinyint(4) NOT NULL,
  `nursing` tinyint(4) NOT NULL,
  `expected_due_date` date NOT NULL,
  `medications_currently_on` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pharmacy_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aspirin` tinyint(4) NOT NULL,
  `sleeping_pills` tinyint(4) NOT NULL,
  `codeine` tinyint(4) NOT NULL,
  `Iodine` tinyint(4) NOT NULL,
  `latex` tinyint(4) NOT NULL,
  `local_anesthetic` tinyint(4) NOT NULL,
  `penicillin` tinyint(4) NOT NULL,
  `sulfa` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`health_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_health_history`
--

LOCK TABLES `patient_health_history` WRITE;
/*!40000 ALTER TABLE `patient_health_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_health_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `patient_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_Id` int(11) NOT NULL,
  `occupation` date NOT NULL,
  `martial_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sin_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeer_school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeer_school_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeer_school_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeer_school_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeer_school_phoneNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_relationship` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_home_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_cell_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_work_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_ext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_best_time_to_reach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `room_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_no` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `service_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_no` int(11) NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroups`
--

DROP TABLE IF EXISTS `usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroups` (
  `user_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroups`
--

LOCK TABLES `usergroups` WRITE;
/*!40000 ALTER TABLE `usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `cell_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'appointment_project'
--

--
-- Dumping routines for database 'appointment_project'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-15 21:40:32
