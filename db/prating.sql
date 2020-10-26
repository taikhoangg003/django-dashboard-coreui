-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 09, 2020 at 02:10 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prating`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_padata`
--

CREATE TABLE `app_padata` (
  `id` int(11) NOT NULL,
  `zipcode` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utility_name` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utility_code` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_type` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_rate` double DEFAULT NULL,
  `monthly_fee` double DEFAULT NULL,
  `enrollment_fee` double DEFAULT NULL,
  `cancellation_fee` double DEFAULT NULL,
  `term_length` int(11) DEFAULT NULL,
  `renewable` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_info` longtext COLLATE utf8_unicode_ci,
  `phone_number` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signup_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_last_update` varchar(65) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain_name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_scraped` datetime(6) NOT NULL,
  `current_ptc` double DEFAULT NULL,
  `future_ptc` double DEFAULT NULL,
  `future_ptc_date` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_customer_offer` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `term_of_service` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_name` varchar(65) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scraped_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fiveh_kwh` double DEFAULT NULL,
  `onek_kwh` double DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `twok_kwh` double DEFAULT NULL,
  `fact_sheet` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_padata`
--

INSERT INTO `app_padata` (`id`, `zipcode`, `state`, `utility_name`, `utility_code`, `company_name`, `plan_type`, `price_rate`, `monthly_fee`, `enrollment_fee`, `cancellation_fee`, `term_length`, `renewable`, `product_info`, `phone_number`, `signup_url`, `product_last_update`, `site_name`, `domain_name`, `last_scraped`, `current_ptc`, `future_ptc`, `future_ptc_date`, `new_customer_offer`, `term_of_service`, `ref_url`, `table_name`, `created_at`, `created_by`, `modified_at`, `modified_by`, `scraped_key`, `fiveh_kwh`, `onek_kwh`, `rating`, `twok_kwh`, `fact_sheet`) VALUES
(2016, '43204', 'OH', 'AEP - Columbus Southern', 'AEP-CSP', 'Public Power LLC', 'Fixed                                                ', 0.0557, 0, 0, 50, 24, '21', 'AEP Ohio Power - PPU-AEPOP-E-R-F24-STD-ETF0-PPU', '(888) 354-4415', 'https://www.ppandu.com/enroll', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://ppandu.com', '2020-04-03 16:25:54.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'No', 'https://www.ppandu.com/docs/default-source/terms-condidtions/oh-terms-conditions.pdf?sfvrsn=10', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:54.000000', 'ohio_spd', '2020-04-03 16:25:54.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2017, '43204', 'OH', 'AEP - Columbus Southern', 'AEP-CSP', 'AEP Energy Inc', 'Fixed                                                ', 0.0415, 0, 0, 0, 12, '0', 'This offer is limited to residential customers of AEP Ohio.', '(877) 648-1922', 'https://enroll.aepenergy.com/acquisition/campaign/puco-aep/?utm_source=A2A&utm_medium=shopping&utm_campaign=aep_12', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://enroll.aepenergy.com/acquisition/campaign/puco-aep/?utm_source=A2A&utm_medium=shopping&utm_campaign=aep_12', '2020-04-03 16:25:54.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'No', 'https://enroll.aepenergy.com/acquisition/campaign/puco-aep/?utm_source=A2A&utm_medium=shopping&utm_campaign=aep_12', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:54.000000', 'ohio_spd', '2020-04-03 16:25:54.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2018, '44003', 'OH', 'Cleveland Electric Illuminating - FirstEnergy', 'CEIL', 'Liberty Power Holdings LLC', 'Fixed                                                ', 0.0614, 0, 0, 10, 24, '100', 'Green Renewable Energy Certificate (REC) rate', '(866) 769-3799', 'https://www.libertypowercorp.com/?utm_source=energychoiceoh&utm_medium=referral&utm_campaign=energychoiceoh', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://www.libertypowercorp.com/?utm_source=energychoiceoh&utm_medium=referral&utm_campaign=energychoiceoh', '2020-04-03 16:25:54.000000', 0.052374, NULL, 'The Illuminating Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until May 31, 2020 is  $0.052374/kWh*.  ', 'No', 'https://www.libertypowercorp.com/residential/ohio-3/', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=6&RateCode=1', 'app_padata', '2020-04-03 16:25:54.000000', 'ohio_spd', '2020-04-03 16:25:54.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2019, '43138', 'OH', 'AEP - Ohio Power', 'AEP-OHPC', 'Utility Gas And Power', 'Fixed                                                ', 0.0499, 4.99, 0, 150, 3, '0', '3-month fixed rate', '(855) 747-4931', 'https://www.utilitygasandpower.com/499-kwh-three-month-35-ccf', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.utilitygasandpower.com', '2020-04-03 16:25:54.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'No', 'https://www.utilitygasandpower.com/electricity-terms-conditions', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:54.000000', 'ohio_spd', '2020-04-03 16:25:54.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2020, '45429', 'OH', 'Dayton Power & Light ', 'DPL', 'Alpha Gas And Electric LLC', 'Variable                                                ', 0.13, 0, 0, 0, 1, '0', 'Variable', '(845) 810-0088', 'http://www.alphagasandelectric.com/sign-up/', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.alphagasandelectric.com/', '2020-04-03 16:25:54.000000', 0.052, NULL, 'Dayton Power and Light\'s typical residential  “Price to Compare” for the generation supply portion of your bill for the period of June 1, 2019 to May 31, 2020  is  $0.0520/kWh.    If you are a qualifying electric heating  residential customer your   “Price to Compare” for the generation supply portion of your bill for the period of November 1, 2019 to May 31, 2020 will be  $0.0443/kWh .', 'No', 'http://www.alphagasandelectric.com/ohio/', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=9&RateCode=1', 'app_padata', '2020-04-03 16:25:54.000000', 'ohio_spd', '2020-04-03 16:25:54.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2021, '43567', 'OH', 'Toledo Edison - FirstEnergy', 'TOLED', 'Liberty Power Holdings LLC', 'Fixed                                                ', 0.0583, 0, 0, 10, 36, '100', 'Green Renewable Energy Certificate (REC) rate', '(866) 769-3799', 'https://www.libertypowercorp.com/?utm_source=energychoiceoh&utm_medium=referral&utm_campaign=energychoiceoh', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://www.libertypowercorp.com/?utm_source=energychoiceoh&utm_medium=referral&utm_campaign=energychoiceoh', '2020-04-03 16:25:54.000000', 0.05214, NULL, 'The  Toledo Edison Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until  May 31, 2020 is  $0.052140/kWh*.    ', 'No', 'https://www.libertypowercorp.com/residential/ohio-3/', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=3&RateCode=1', 'app_padata', '2020-04-03 16:25:54.000000', 'ohio_spd', '2020-04-03 16:25:54.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2022, '44514', 'OH', 'Ohio Edison - FirstEnergy', 'OHED', 'American Power & Gas of Ohio, LLC', 'Variable                                                ', 0.0499, 0, 0, 0, 24, '100', 'Our 25% rebate check is available to all of our customers. We have sent out over $900,000 in rebates. Are you getting one?', '(727) 733-8700', 'https://www.americanpowerandgas.com/', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://www.americanpowerandgas.com/', '2020-04-03 16:25:54.000000', 0.052445, NULL, 'Ohio Edison Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until May  31, 2020  is  $0.052445/kWh*. ', 'Yes', 'https://www.americanpowerandgas.com/', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=7&RateCode=1', 'app_padata', '2020-04-03 16:25:54.000000', 'ohio_spd', '2020-04-03 16:25:54.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2023, '43204', 'OH', 'AEP - Columbus Southern', 'AEP-CSP', 'Santanna Energy Services', 'Fixed                                                ', 0.0371, 9.99, 0, 100, 6, '4', 'Santanna’s Competitive Fixed Price of $0.03710 per kWh for initial term duration of 6 months and then a successive month-to-month term on Santanna’s Competitive Market Price Program. AEP Columbus Southern. Available for New Customers only.', '(866) 439-0901', 'https://enroll.santannaenergyservices.com/enrollment/#/RS/R/FIX_6M_T2_CSPOHE/?utm_source=energychoice.ohio&utm_medium=referral&utm_phone=8664390901&utm_reward=WEB_REW25M', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://santannaenergyservices.com/areas-serviced/ohio-energy-company/aep-columbus/?utm_reward=WEB_REW25M', '2020-04-03 16:25:54.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'No', 'https://enroll.santannaenergyservices.com/enrollment/#/RS/R/FIX_6M_T2_CSPOHE/?utm_source=energychoice.ohio&utm_medium=referral&utm_phone=8664390901&utm_reward=WEB_REW25M', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:54.000000', 'ohio_spd', '2020-04-03 16:25:54.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2024, '44003', 'OH', 'Cleveland Electric Illuminating - FirstEnergy', 'CEIL', 'North American Power and Gas LLC', 'Fixed                                                ', 0.0579, 0, 0, 10, 12, '0', 'Fixed 12 month rate-Standard Product-Offer is for EnergyChoiceOhio website For New Customers.', '(877) 572-9965', 'http://napower.com/rateboards', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://napower.com/rateboards', '2020-04-03 16:25:55.000000', 0.052374, NULL, 'The Illuminating Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until May 31, 2020 is  $0.052374/kWh*.  ', 'No', 'http://napower.com/terms-of-service', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=6&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2025, '43138', 'OH', 'AEP - Ohio Power', 'AEP-OHPC', 'Santanna Energy Services', 'Fixed                                                ', 0.0371, 9.99, 0, 100, 6, '4', 'Santanna’s Competitive Fixed Price of $0.03710 per kWh for initial term duration of 6 months and then a successive month-to-month term on Santanna’s Competitive Market Price Program. AEP Columbus Southern. Available for New Customers only.', '(866) 439-0901', 'https://enroll.santannaenergyservices.com/enrollment/#/RS/R/FIX_6M_T2_CSPOHE/?utm_source=energychoice.ohio&utm_medium=referral&utm_phone=8664390901&utm_reward=WEB_REW25M', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://santannaenergyservices.com/areas-serviced/ohio-energy-company/aep-columbus/?utm_reward=WEB_REW25M', '2020-04-03 16:25:55.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'No', 'https://enroll.santannaenergyservices.com/enrollment/#/RS/R/FIX_6M_T2_CSPOHE/?utm_source=energychoice.ohio&utm_medium=referral&utm_phone=8664390901&utm_reward=WEB_REW25M', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2026, '45429', 'OH', 'Dayton Power & Light ', 'DPL', 'Rushmore Energy, LLC', 'Fixed                                                ', 0.0499, 0, 0, 0, 36, '5', 'Enjoy price protection for 36 months! To sign-up please visit www.RushmoreEnergy.com/Sign-Up Or call 1-800-590-7295. You may also email us at ContactUs@RushmoreEnergy.com', '(800) 590-7295', 'https://www.rushmoreenergy.com/Sign-Up', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.RushmoreEnergy.com', '2020-04-03 16:25:55.000000', 0.052, NULL, 'Dayton Power and Light\'s typical residential  “Price to Compare” for the generation supply portion of your bill for the period of June 1, 2019 to May 31, 2020  is  $0.0520/kWh.    If you are a qualifying electric heating  residential customer your   “Price to Compare” for the generation supply portion of your bill for the period of November 1, 2019 to May 31, 2020 will be  $0.0443/kWh .', 'No', 'https://www.rushmoreenergy.com/Terms', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=9&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2027, '43567', 'OH', 'Toledo Edison - FirstEnergy', 'TOLED', 'IGS Energy', 'Fixed                                                ', 0.0649, 0, 0, 99, 24, '100', '100% Green', '(800) 280-4474', 'https://igs.com/signup/?campaignCode=Web-ApplesToApples&utm_campaign=referral-applestoapples-general&utm_source=applestoapples&utm_medium=referral', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.igsenergy.com', '2020-04-03 16:25:55.000000', 0.05214, NULL, 'The  Toledo Edison Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until  May 31, 2020 is  $0.052140/kWh*.    ', 'No', 'https://enrollment.igsenergy.com/api/Web/TermsAndConditions/FTED-I24MV-E-GG-PROMO1-TF99/R/43612', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=3&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2028, '44514', 'OH', 'Ohio Edison - FirstEnergy', 'OHED', 'SmartEnergy Holdings LLC', 'Fixed                                                ', 0.053, 0, 0, 0, 6, '100', '6 month fixed with a $50 Cash Back Bonus', '(800) 782-7274', 'http://www.smartenergy.com', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.smartenergy.com', '2020-04-03 16:25:55.000000', 0.052445, NULL, 'Ohio Edison Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until May  31, 2020  is  $0.052445/kWh*. ', 'No', 'http://www.smartenergy.com', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=7&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2029, '43204', 'OH', 'AEP - Columbus Southern', 'AEP-CSP', 'AP Gas & Electric OH LLC', 'Fixed                                                ', 0.0424, 0, 0, 100, 6, '0', 'Lock in price security today with our competitive 6-month fixed-rate plan.  Enjoy the peace of mind that comes with choosing APG&E as your electricity supplier.   Offer available to new customers only.  ', '(877) 544-4857', 'http://www.apge.com/applestoapples', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.apge.com/applestoapples', '2020-04-03 16:25:55.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'No', 'https://enroll.apge.com/Offer/getDocument?documentId=142&offerCode=CSP_RES_6_FP_Web_OH_SRB', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2030, '44003', 'OH', 'Cleveland Electric Illuminating - FirstEnergy', 'CEIL', 'Utility Gas And Power', 'Fixed                                                ', 0.0599, 4.99, 0, 150, 12, '0', NULL, '(855) 747-4931', 'https://www.utilitygasandpower.com/599-kwh-12-month-449-ccf', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.utilitygasandpower.com', '2020-04-03 16:25:55.000000', 0.052374, NULL, 'The Illuminating Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until May 31, 2020 is  $0.052374/kWh*.  ', 'No', 'https://www.utilitygasandpower.com/electricity-terms-conditions', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=6&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2031, '45005', 'OH', 'Duke Energy (Electric)', 'DUKEOH', 'Liberty Power Holdings LLC', 'Fixed                                                ', 0.0529, 0, 0, 10, 30, '0', 'Fixed rate product', '(866) 769-3799', 'https://www.libertypowercorp.com/?utm_source=energychoiceoh&utm_medium=referral&utm_campaign=energychoiceoh', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://www.libertypowercorp.com/?utm_source=energychoiceoh&utm_medium=referral&utm_campaign=energychoiceoh', '2020-04-03 16:25:55.000000', NULL, NULL, 'Duke’s typical residential (rate RS) “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020  until May 31, 2020 is  $.0582/kWh* .  ', 'No', 'https://www.libertypowercorp.com/residential/ohio-3/', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=4&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2032, '43138', 'OH', 'AEP - Ohio Power', 'AEP-OHPC', 'Dynegy Energy Services East LLC', 'Fixed                                                ', 0.0499, 0, 0, 0, 12, '0', 'Rest easy every day and every night with a locked-in rate that\'s guaranteed for up to 12 months. No sign-up fees or early cancellation penalty.', '(833) 223-0912', 'https://www.dynegy.com/dynegy-shop-for-plans-home?rfid=PUCO', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://www.dynegy.com/?rfid=PUCO', '2020-04-03 16:25:55.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'No', 'https://www.dynegy.com/terms-of-service', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2033, '45429', 'OH', 'Dayton Power & Light ', 'DPL', 'Utility Gas And Power', 'Fixed                                                ', 0.0499, 9.99, 0, 150, 12, '0', NULL, '(855) 747-4931', 'https://www.utilitygasandpower.com/enroll', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.utilitygasandpower.com', '2020-04-03 16:25:55.000000', 0.052, NULL, 'Dayton Power and Light\'s typical residential  “Price to Compare” for the generation supply portion of your bill for the period of June 1, 2019 to May 31, 2020  is  $0.0520/kWh.    If you are a qualifying electric heating  residential customer your   “Price to Compare” for the generation supply portion of your bill for the period of November 1, 2019 to May 31, 2020 will be  $0.0443/kWh .', 'No', 'https://www.utilitygasandpower.com/electricity-terms-conditions', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=9&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2034, '43567', 'OH', 'Toledo Edison - FirstEnergy', 'TOLED', 'Titan Gas and Power', 'Fixed                                                ', 0.0405, 0, 0, 25, 3, '100', 'Affordable Wind 3 - New Customer Special', '(888) 355-6205', 'https://rates.titangasandpower.com/Rates/Index?promocode=APPLESZERO', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://rates.titangasandpower.com/Rates/index?promocode=APPLESZERO', '2020-04-03 16:25:55.000000', 0.05214, NULL, 'The  Toledo Edison Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until  May 31, 2020 is  $0.052140/kWh*.    ', 'No', 'https://rates.titangasandpower.com/rates/DownloadDoc?path=56127410-2c22-46c7-a872-dec4db6915dc.pdf&id_plan=13535', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=3&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2035, '44514', 'OH', 'Ohio Edison - FirstEnergy', 'OHED', 'Lykins Energy Solutions', 'Fixed                                                ', 0.051, 0, 0, 10, 24, '5', 'This is a fixed rate with no hidden fees. This contract will not auto-renew at a higher price.', '(800) 875-8820', 'https://www.lykinsenergy.com/electricity-order-quote', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.lykinsenergy.com', '2020-04-03 16:25:55.000000', 0.052445, NULL, 'Ohio Edison Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until May  31, 2020  is  $0.052445/kWh*. ', 'No', 'https://www.lykinsenergy.com/Enrollment-Terms-and-Conditions', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=7&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2036, '43204', 'OH', 'AEP - Columbus Southern', 'AEP-CSP', 'Liberty Power Holdings LLC', 'Fixed                                                ', 0.0529, 0, 0, 10, 30, '0', 'Fixed rate product', '(866) 769-3799', 'https://www.libertypowercorp.com/?utm_source=energychoiceoh&utm_medium=referral&utm_campaign=energychoiceoh', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://www.libertypowercorp.com/?utm_source=energychoiceoh&utm_medium=referral&utm_campaign=energychoiceoh', '2020-04-03 16:25:55.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'No', 'https://enroll.libertypowercorp.com/App', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2037, '44003', 'OH', 'Cleveland Electric Illuminating - FirstEnergy', 'CEIL', 'Sanford Energy Associates, LLC dba Powervine Energy', 'Fixed                                                ', 0.0579, 0, 0, 50, 18, '100', 'Simple fixed price. 100% of your electricity us is backed by renewable energy credits from hydro, wind, or solar energy.', '(888) 851-7085', 'https://www.powervineenergy.com/APPLESOH', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.powervineenergy.com', '2020-04-03 16:25:55.000000', 0.052374, NULL, 'The Illuminating Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until May 31, 2020 is  $0.052374/kWh*.  ', 'No', 'https://www.powervineenergy.com/tos/oh/', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=6&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2038, '45005', 'OH', 'Duke Energy (Electric)', 'DUKEOH', 'XOOM Energy Ohio LLC', 'Fixed                                                ', 0.0579, 0, 0, 200, 24, '0', 'SureLock 24', '(888) 997-8979', 'https://xoomenergy.com/en/residential/ohio/electricity/duke-energy-electricity?der=1448', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://xoomenergy.com/en', '2020-04-03 16:25:55.000000', NULL, NULL, 'Duke’s typical residential (rate RS) “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020  until May 31, 2020 is  $.0582/kWh* .  ', 'No', 'http://xoomenergy.com/en', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=4&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2039, '43138', 'OH', 'AEP - Ohio Power', 'AEP-OHPC', 'Nordic Energy Services LLC', 'Fixed                                                ', 0.1099, 0, 0, 0, 12, '0', '0.1099 fixed rate for 12 months', '(888) 339-6178', 'http://rez.nordicenergy-us.com/', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.nordicenergy-us.com', '2020-04-03 16:25:55.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'No', 'http://rez.nordicenergy-us.com/', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2040, '45429', 'OH', 'Dayton Power & Light ', 'DPL', 'Vista Energy Marketing LP', 'Fixed                                                ', 0.0449, 30.41, 0, 75, 12, '0', 'Commodity prices fluctuate but, with Vista Energy’s fixed rate plan, your cost will remain the same for 6 months. Order now to lock in a great low price and be worry free for 12 months! This price is available for new customers only. ', '(888) 508-4782', 'https://vistaenergymarketing.com/commodity/electricity/dpl/dpl-starter-12-etf-75/', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.vistaenergymarketing.com', '2020-04-03 16:25:55.000000', 0.052, NULL, 'Dayton Power and Light\'s typical residential  “Price to Compare” for the generation supply portion of your bill for the period of June 1, 2019 to May 31, 2020  is  $0.0520/kWh.    If you are a qualifying electric heating  residential customer your   “Price to Compare” for the generation supply portion of your bill for the period of November 1, 2019 to May 31, 2020 will be  $0.0443/kWh .', 'No', 'https://vistaprodstoacc01.blob.core.windows.net/documents-tos/DPL_STARTER_12_ETF_75_062019.pdf', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=9&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2041, '43567', 'OH', 'Toledo Edison - FirstEnergy', 'TOLED', 'Direct Energy Services LLC', 'Fixed                                                ', 0.0589, 0, 0, 0, 24, '100', 'Offer available online only! Offer available to new customers only.', '(877) 698-7551', 'http://www.directenergy.com/ohio/electricity-plans/green-electricity-24/msid/5360/pid/OSS?_utm_source=BD&utm_medium=OH-PTC', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://www.directenergy.com/ohio/electricity-plans/msid/5360/pid/lb18?utm_source=BD&utm_medium=OH-PTC', '2020-04-03 16:25:55.000000', 0.05214, NULL, 'The  Toledo Edison Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until  May 31, 2020 is  $0.052140/kWh*.    ', 'No', 'http://DirectEnergyDocuments.gesc.com/TCPage.aspx?Doc=DEROHDTDTCE', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=3&RateCode=1', 'app_padata', '2020-04-03 16:25:55.000000', 'ohio_spd', '2020-04-03 16:25:55.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2042, '44514', 'OH', 'Ohio Edison - FirstEnergy', 'OHED', 'Titan Gas and Power', 'Fixed                                                ', 0.0398, 0, 0, 50, 6, '100', 'Affordable Wind 6 - New Customer Special', '(888) 355-6205', 'https://rates.titangasandpower.com/Rates/Index?promocode=APPLESZERO', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://rates.titangasandpower.com/Rates/index?promocode=APPLESZERO', '2020-04-03 16:25:56.000000', 0.052445, NULL, 'Ohio Edison Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until May  31, 2020  is  $0.052445/kWh*. ', 'No', 'https://rates.titangasandpower.com/rates/DownloadDoc?path=56127410-2c22-46c7-a872-dec4db6915dc.pdf&id_plan=13535', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=7&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2043, '43204', 'OH', 'AEP - Columbus Southern', 'AEP-CSP', 'AP Gas & Electric OH LLC', 'Fixed                                                ', 0.0386, 9.99, 0, 0, 4, '0', 'Lock in price security today with our competitive 4-month fixed-rate plan.  Enjoy the peace of mind that comes with choosing APG&E as your electricity supplier.   Offer available to new customers only.  ', '(877) 544-4857', 'http://www.apge.com/applestoapples', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.apge.com/applestoapples', '2020-04-03 16:25:56.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'No', 'https://enroll.apge.com/Offer/getDocument?documentId=142&offerCode=CSP_RES_4_FIXED_Web_OH_SRB_NETF', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2044, '44003', 'OH', 'Cleveland Electric Illuminating - FirstEnergy', 'CEIL', 'Public Power LLC', 'Fixed                                                ', 0.0563, 0, 0, 0, 24, '21', 'PPU-CLEIC-E-R-F24-STD-ETF0-PPU', '(888) 354-4415', 'https://www.ppandu.com/enroll', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://ppandu.com', '2020-04-03 16:25:56.000000', 0.052374, NULL, 'The Illuminating Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until May 31, 2020 is  $0.052374/kWh*.  ', 'No', 'https://www.ppandu.com/docs/default-source/terms-condidtions/oh-terms-conditions.pdf?sfvrsn=10', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=6&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2045, '45005', 'OH', 'Duke Energy (Electric)', 'DUKEOH', 'Liberty Power Holdings LLC', 'Fixed                                                ', 0.0538, 0, 0, 10, 36, '100', 'Green Renewable Energy Certificate (REC) rate', '(866) 769-3799', 'https://www.libertypowercorp.com/?utm_source=energychoiceoh&utm_medium=referral&utm_campaign=energychoiceoh', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://www.libertypowercorp.com/?utm_source=energychoiceoh&utm_medium=referral&utm_campaign=energychoiceoh', '2020-04-03 16:25:56.000000', NULL, NULL, 'Duke’s typical residential (rate RS) “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020  until May 31, 2020 is  $.0582/kWh* .  ', 'No', 'https://www.libertypowercorp.com/residential/ohio-3/', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=4&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2046, '43138', 'OH', 'AEP - Ohio Power', 'AEP-OHPC', 'Viridian Energy PA, LLC', 'Fixed                                                ', 0.0669, 0, 0, 0, 24, '0', 'CSP', '(866) 663-2508', 'http://www.viridian.com/index.asp?CO_LA=US_EN', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.viridian.com', '2020-04-03 16:25:56.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'No', 'http://www.viridian.com/pdfs/OH-TermsConditions-English.pdf', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2047, '45429', 'OH', 'Dayton Power & Light ', 'DPL', 'Eligo Energy OH LLC', 'Fixed                                                ', 0.0598, 0, 0, 120, 12, '100', '100% renewable energy.', '(888) 410-5081', 'https://www.eligoenergy.com/signup/standard_residential?lead%5Bpartner_code%5D=green12m_rate_board&utm_medium=rateboards', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://www.eligoenergy.com/signup/standard_residential?lead%5Bpartner_code%5D=green12m_rate_board&utm_medium=rateboards', '2020-04-03 16:25:56.000000', 0.052, NULL, 'Dayton Power and Light\'s typical residential  “Price to Compare” for the generation supply portion of your bill for the period of June 1, 2019 to May 31, 2020  is  $0.0520/kWh.    If you are a qualifying electric heating  residential customer your   “Price to Compare” for the generation supply portion of your bill for the period of November 1, 2019 to May 31, 2020 will be  $0.0443/kWh .', 'No', 'https://www.eligoenergy.com/tos/oh/dpl', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=9&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2048, '43567', 'OH', 'Toledo Edison - FirstEnergy', 'TOLED', 'Energy Service Providers Inc', 'Fixed                                                ', 0.0779, 0, 0, 50, 24, '100', 'USGE-TEE-E-R-F24-GRN-ETF50-USGE', '(866) 706-3760', 'https://www.ohgande.com/', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://www.ohgande.com/', '2020-04-03 16:25:56.000000', 0.05214, NULL, 'The  Toledo Edison Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until  May 31, 2020 is  $0.052140/kWh*.    ', 'No', 'https://www.ohgande.com/TermsAndConditions/OH_TermsAndConditions_Eng_20171030.pdf', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=3&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2049, '44514', 'OH', 'Ohio Edison - FirstEnergy', 'OHED', 'Liberty Power Holdings LLC', 'Fixed                                                ', 0.0583, 0, 0, 10, 30, '100', 'Green Renewable Energy Certificate (REC) rate', '(866) 769-3799', 'https://www.libertypowercorp.com/?utm_source=energychoiceoh&utm_medium=referral&utm_campaign=energychoiceoh', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://www.libertypowercorp.com/?utm_source=energychoiceoh&utm_medium=referral&utm_campaign=energychoiceoh', '2020-04-03 16:25:56.000000', 0.052445, NULL, 'Ohio Edison Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until May  31, 2020  is  $0.052445/kWh*. ', 'No', 'https://www.libertypowercorp.com/residential/ohio-3/', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=7&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2050, '43204', 'OH', 'AEP - Columbus Southern', 'AEP-CSP', 'RITERATE ENERGY', 'Fixed                                                ', 0.0439, 0, 0, 0, 12, '0', NULL, '(866) 810-6446', 'https://riterateenergy.com/enroll-now/', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.riterateenergy.com', '2020-04-03 16:25:56.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'No', 'https://riterateenergy.com/residential-electricity-rates-ohio/', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2051, '44003', 'OH', 'Cleveland Electric Illuminating - FirstEnergy', 'CEIL', 'AP Gas & Electric OH LLC', 'Fixed                                                ', 0.038, 9.99, 0, 0, 4, '0', 'Lock in price security today with our competitive 4-month fixed-rate plan.  Enjoy the peace of mind that comes with choosing APG&E as your electricity supplier.   Offer available to new customers only.  ', '(877) 544-4857', 'http://www.apge.com/applestoapples', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.apge.com/applestoapples', '2020-04-03 16:25:56.000000', 0.052374, NULL, 'The Illuminating Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until May 31, 2020 is  $0.052374/kWh*.  ', 'No', 'https://enroll.apge.com/Offer/getDocument?documentId=142&offerCode=CIE_RES_4_FIXED_Web_OH_SRB_NETF', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=6&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2052, '45005', 'OH', 'Duke Energy (Electric)', 'DUKEOH', 'Kiwi Energy', 'Variable                                                ', 0.0499, 0, 0, 0, 1, '0', 'Kiwi\'s eco-conscious energy plans bring you peace of mind in knowing that you’re helping create a more sustainable future. With electricity matched 100% with Green-e Energy certified Renewable Energy Certificates ', '(877) 208-7636', 'http://www.kiwienergy.us', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.kiwienergy.us', '2020-04-03 16:25:56.000000', NULL, NULL, 'Duke’s typical residential (rate RS) “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020  until May 31, 2020 is  $.0582/kWh* .  ', 'Yes', 'http://www.kiwienergy.us', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=4&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2053, '43138', 'OH', 'AEP - Ohio Power', 'AEP-OHPC', 'Just Energy', 'Fixed                                                ', 0.0449, 0, 0, 50, 12, '0', 'Fixed price offer with the option for 100% Green', '(866) 587-8674', 'http://www.justenergy.com', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.justenergy.com', '2020-04-03 16:25:56.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'No', 'http://www.justenergy.com', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2054, '45429', 'OH', 'Dayton Power & Light ', 'DPL', 'Liberty Power Holdings LLC', 'Fixed                                                ', 0.055, 0, 0, 10, 36, '100', 'Green Renewable Energy Certificate (REC) rate', '(866) 769-3799', 'https://www.libertypowercorp.com/?utm_source=energychoiceoh&utm_medium=referral&utm_campaign=energychoiceoh', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://www.libertypowercorp.com/?utm_source=energychoiceoh&utm_medium=referral&utm_campaign=energychoiceoh', '2020-04-03 16:25:56.000000', 0.052, NULL, 'Dayton Power and Light\'s typical residential  “Price to Compare” for the generation supply portion of your bill for the period of June 1, 2019 to May 31, 2020  is  $0.0520/kWh.    If you are a qualifying electric heating  residential customer your   “Price to Compare” for the generation supply portion of your bill for the period of November 1, 2019 to May 31, 2020 will be  $0.0443/kWh .', 'No', 'https://www.libertypowercorp.com/residential/ohio-3/', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=9&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2055, '43567', 'OH', 'Toledo Edison - FirstEnergy', 'TOLED', 'Sanford Energy Associates, LLC dba Powervine Energy', 'Fixed                                                ', 0.0579, 0, 0, 50, 18, '100', 'Simple fixed price. 100% of your electricity us is backed by renewable energy credits from hydro, wind, or solar energy.', '(888) 851-7085', 'https://www.powervineenergy.com/APPLESOH', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.powervineenergy.com', '2020-04-03 16:25:56.000000', 0.05214, NULL, 'The  Toledo Edison Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until  May 31, 2020 is  $0.052140/kWh*.    ', 'No', 'https://www.powervineenergy.com/tos/oh/', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=3&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2056, '44514', 'OH', 'Ohio Edison - FirstEnergy', 'OHED', 'Viridian Energy PA, LLC', 'Fixed                                                ', 0.0663, 0, 0, 0, 24, '50', 'VIR-OEE-E-R-F24-STD-ETF150-VDN', '(866) 663-2508', 'https://enroll.viridian.com/?Q=SWQ9QTEwMDAwMDB8Y29tbW9kaXR5Y2VydD1UfHNvbGFyY2VydD1UfHRzPTEvMTQvMjAxNiA4OjE0OjE3IEFNfExhbmc9RU4%3D', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.viridian.com', '2020-04-03 16:25:56.000000', 0.052445, NULL, 'Ohio Edison Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until May  31, 2020  is  $0.052445/kWh*. ', 'No', 'http://www.viridian.com/pdfs/OH-TermsConditions-English.pdf', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=7&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2057, '43204', 'OH', 'AEP - Columbus Southern', 'AEP-CSP', 'Switch Energy LLC', 'Fixed                                                ', 0.0444, 0, 0, 0, 12, '6', '12 month guaranteed rate of $0.0444 cents per kWh that goes to a variable rate after the twelve month guaranteed period ends.', '(855) 737-3722', 'http://www.switchenergypartners.com', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.switchenergypartners.com', '2020-04-03 16:25:56.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'No', 'http://www.switchenergypartners.com', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2058, '44003', 'OH', 'Cleveland Electric Illuminating - FirstEnergy', 'CEIL', 'Vista Energy Marketing LP', 'Fixed                                                ', 0.0489, 30.41, 0, 0, 6, '0', 'Commodity prices fluctuate but, with Vista Energy’s fixed rate plan, your rate will remain the same for 6 months. Order now to lock in a great low price and relax for the next 6 months! This price is available for new customers only. ', '(888) 508-4782', 'https://vistaenergymarketing.com/commodity/electricity/cei/cei-starter-6/', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.vistaenergymarketing.com', '2020-04-03 16:25:56.000000', 0.052374, NULL, 'The Illuminating Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until May 31, 2020 is  $0.052374/kWh*.  ', 'No', 'https://vistaprodstoacc01.blob.core.windows.net/documents-tos/CEI_STARTER_6_062019.pdf', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=6&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2059, '45005', 'OH', 'Duke Energy (Electric)', 'DUKEOH', 'Discount Power Inc', 'Fixed                                                ', 0.074, 0, 0, 200, 36, '100', NULL, '(877) 507-7350', 'http://www.discountpowerinc.com/rateboard', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.discountpowerinc.com', '2020-04-03 16:25:56.000000', NULL, NULL, 'Duke’s typical residential (rate RS) “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020  until May 31, 2020 is  $.0582/kWh* .  ', 'No', 'http://www.discountpowerinc.com/rateboard', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=4&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2060, '43138', 'OH', 'AEP - Ohio Power', 'AEP-OHPC', 'Town Square Energy East LLC', 'Fixed                                                ', 0.064, 0, 0, 0, 12, '0', '12 monthly bill cycles fixed at 6.40 cents/kWh. See full terms in terms of service.', '(877) 430-0093', 'https://townsquareenergy.com/rate-details/?r=1&product=11837', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'https://townsquareenergy.com/find-rates/?state_code=OH&utility=AEP-CSP&customer_type=Residential', '2020-04-03 16:25:56.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'No', 'https://sales.starfieldreh.com/WS/Core/TseWeb.aspx?m=terms&planID=11837', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2061, '45429', 'OH', 'Dayton Power & Light ', 'DPL', 'Switch Energy LLC', 'Fixed                                                ', 0.0499, 0, 0, 0, 24, '100', '\"Save on your electric rate while saving the planet.  100% renewable electricity.  A truly green win-win.\"', '(855) 737-3722', 'http://www.switchenergypartners.com', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.switchenergypartners.com', '2020-04-03 16:25:56.000000', 0.052, NULL, 'Dayton Power and Light\'s typical residential  “Price to Compare” for the generation supply portion of your bill for the period of June 1, 2019 to May 31, 2020  is  $0.0520/kWh.    If you are a qualifying electric heating  residential customer your   “Price to Compare” for the generation supply portion of your bill for the period of November 1, 2019 to May 31, 2020 will be  $0.0443/kWh .', 'No', 'http://www.switchenergypartners.com', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=9&RateCode=1', 'app_padata', '2020-04-03 16:25:56.000000', 'ohio_spd', '2020-04-03 16:25:56.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2062, '43567', 'OH', 'Toledo Edison - FirstEnergy', 'TOLED', 'IDT Energy, Inc', 'Fixed                                                ', 0.0538, 0, 0, 0, 24, '0', 'Electricity supply prices rise & fall throughout the year. Take control of your energy bill with a 24-month locked electricity supply rate. Enjoy peace of mind & budget certainty without the hassles of rate spikes, hidden fees or deposits.', '(877) 887-6866', 'https://idtenergy.com/', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.idtenergy.com', '2020-04-03 16:25:57.000000', 0.05214, NULL, 'The  Toledo Edison Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until  May 31, 2020 is  $0.052140/kWh*.    ', 'No', 'https://idtenergy.com/terms/oh-terms-conditions/', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=3&RateCode=1', 'app_padata', '2020-04-03 16:25:57.000000', 'ohio_spd', '2020-04-03 16:25:57.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2063, '44514', 'OH', 'Ohio Edison - FirstEnergy', 'OHED', 'Rushmore Energy, LLC', 'Fixed                                                ', 0.057, 0, 0, 0, 36, '5', 'Enjoy price protection for 36 months! To sign-up please visit www.RushmoreEnergy.com/Sign-Up Or call 1-800-590-7295 You may also email us at ContactUs@RushmoreEnergy.com', '(800) 590-7295', 'https://www.rushmoreenergy.com/Sign-Up', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.RushmoreEnergy.com', '2020-04-03 16:25:57.000000', 0.052445, NULL, 'Ohio Edison Company\'s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 until May  31, 2020  is  $0.052445/kWh*. ', 'No', 'https://www.rushmoreenergy.com/Terms', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=7&RateCode=1', 'app_padata', '2020-04-03 16:25:57.000000', 'ohio_spd', '2020-04-03 16:25:57.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0'),
(2064, '43204', 'OH', 'AEP - Columbus Southern', 'AEP-CSP', 'nTherm, LLC', 'Variable                                                ', 0.0499, 0, 0, 0, 1, '0', '20% rebate on the average months energy supply cost after 12 consecutive months with nTherm, llc as the Competitive Retail Electric Supplier', '(888) 865-3402', 'http://www.ntherm.com', NULL, 'EnergyChoiceOhio (Apples2Apples)', 'http://www.ntherm.com', '2020-04-03 16:25:57.000000', 0.0527, NULL, 'AEP’s residential “Price to Compare” for the generation supply portion of your bill for the period of April 1, 2020 to May 31, 2020 is  $0.0527/kWh.  ', 'Yes', 'http://www.ntherm.com', 'http://www.energychoice.ohio.gov/ApplesToApplesComparision.aspx?Category=Electric&TerritoryId=2&RateCode=1', 'app_padata', '2020-04-03 16:25:57.000000', 'ohio_spd', '2020-04-03 16:25:57.000000', 'ohio_spd', NULL, 0, 0, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add pa data', 7, 'add_padata'),
(26, 'Can change pa data', 7, 'change_padata'),
(27, 'Can delete pa data', 7, 'delete_padata'),
(28, 'Can view pa data', 7, 'view_padata');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$8nEfjEoWrERH$601vYDHuK4+E2Wyfv8Gf+e9UDAQSjXVNkapxnfa7jrw=', '2020-08-04 03:28:59.556679', 1, 'admin', '', '', 'etuannv@gmail.com', 1, 1, '2020-03-09 02:47:33.358675');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'app', 'padata'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-09 02:46:03.455752'),
(2, 'auth', '0001_initial', '2020-03-09 02:46:03.648753'),
(3, 'admin', '0001_initial', '2020-03-09 02:46:03.860784'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-09 02:46:03.902871'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-09 02:46:03.912340'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-09 02:46:03.966668'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-09 02:46:03.990606'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-09 02:46:04.022650'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-09 02:46:04.033035'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-09 02:46:04.060918'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-09 02:46:04.063273'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-09 02:46:04.076492'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-09 02:46:04.102768'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-09 02:46:04.132417'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-03-09 02:46:04.164093'),
(16, 'auth', '0011_update_proxy_permissions', '2020-03-09 02:46:04.174724'),
(17, 'sessions', '0001_initial', '2020-03-09 02:46:04.205203'),
(18, 'app', '0001_initial', '2020-03-09 02:46:15.833784'),
(19, 'app', '0002_auto_20200309_0328', '2020-03-09 03:28:37.038484'),
(20, 'app', '0003_auto_20200309_0707', '2020-03-09 07:07:59.370137'),
(21, 'app', '0004_auto_20200311_0833', '2020-03-11 08:33:11.270081'),
(22, 'app', '0005_auto_20200312_0753', '2020-03-12 07:53:16.227333'),
(23, 'app', '0006_auto_20200323_0229', '2020-03-23 02:29:51.140601'),
(24, 'app', '0007_auto_20200323_0246', '2020-03-23 02:46:25.801588'),
(25, 'app', '0008_auto_20200323_0255', '2020-04-03 03:53:56.196590'),
(26, 'app', '0009_auto_20200402_1007', '2020-04-03 03:54:35.068689'),
(27, 'app', '0010_auto_20200403_0353', '2020-04-03 03:54:35.137981'),
(28, 'app', '0011_auto_20200403_0950', '2020-04-03 10:00:23.278399'),
(29, 'app', '0012_auto_20200610_0323', '2020-06-10 03:23:17.479600'),
(30, 'app', '0013_padata_fact_sheet', '2020-06-10 09:00:28.045643'),
(31, 'app', '0014_auto_20200610_0922', '2020-06-10 09:22:47.746833'),
(32, 'app', '0015_auto_20200612_0718', '2020-06-12 07:18:12.036280');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0mkrc29bbx7576bby2n04qirc8qhcjnw', 'MzA5OTdkYmVmMTJkZTQ5MTc0MTc3YmIwZGQ5ODVkNWZlNGQ5NjQ4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjI0MDIzMzVhOWE1YjAwNDA4NWU4YjdhNDQxMjJmNWE4NDk5Y2MxIn0=', '2020-05-03 03:35:22.365365'),
('3ydq9t19x37zfndnbzyku6wh88xpewa6', 'MzA5OTdkYmVmMTJkZTQ5MTc0MTc3YmIwZGQ5ODVkNWZlNGQ5NjQ4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjI0MDIzMzVhOWE1YjAwNDA4NWU4YjdhNDQxMjJmNWE4NDk5Y2MxIn0=', '2020-06-24 03:19:46.958603'),
('5mr1cx1bhofa8u9ytpe38bo6ysa3qbnj', 'MzA5OTdkYmVmMTJkZTQ5MTc0MTc3YmIwZGQ5ODVkNWZlNGQ5NjQ4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjI0MDIzMzVhOWE1YjAwNDA4NWU4YjdhNDQxMjJmNWE4NDk5Y2MxIn0=', '2020-04-17 03:55:23.932285'),
('gucq6zwweb186ad1xvuc34dja877ft0a', 'MzA5OTdkYmVmMTJkZTQ5MTc0MTc3YmIwZGQ5ODVkNWZlNGQ5NjQ4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjI0MDIzMzVhOWE1YjAwNDA4NWU4YjdhNDQxMjJmNWE4NDk5Y2MxIn0=', '2020-04-17 04:09:14.414058'),
('o552mogu89crfaxrwejt859ppryz5jof', 'MzA5OTdkYmVmMTJkZTQ5MTc0MTc3YmIwZGQ5ODVkNWZlNGQ5NjQ4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjI0MDIzMzVhOWE1YjAwNDA4NWU4YjdhNDQxMjJmNWE4NDk5Y2MxIn0=', '2020-04-17 09:12:55.983612'),
('oflne9i0r48oqec1b4dy8qumzc4uulmr', 'MzA5OTdkYmVmMTJkZTQ5MTc0MTc3YmIwZGQ5ODVkNWZlNGQ5NjQ4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjI0MDIzMzVhOWE1YjAwNDA4NWU4YjdhNDQxMjJmNWE4NDk5Y2MxIn0=', '2020-06-26 07:29:56.245322'),
('ozvovecc0b735r9ob2j7f8p1a48x10zw', 'MzA5OTdkYmVmMTJkZTQ5MTc0MTc3YmIwZGQ5ODVkNWZlNGQ5NjQ4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjI0MDIzMzVhOWE1YjAwNDA4NWU4YjdhNDQxMjJmNWE4NDk5Y2MxIn0=', '2020-03-30 08:43:15.777994'),
('qkx585bzwu390f83teqbaddx5iupi766', 'MzA5OTdkYmVmMTJkZTQ5MTc0MTc3YmIwZGQ5ODVkNWZlNGQ5NjQ4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjI0MDIzMzVhOWE1YjAwNDA4NWU4YjdhNDQxMjJmNWE4NDk5Y2MxIn0=', '2020-04-22 09:14:40.021717'),
('seolpbruar04b8hy8o3y56skc9wfi0jn', 'MzA5OTdkYmVmMTJkZTQ5MTc0MTc3YmIwZGQ5ODVkNWZlNGQ5NjQ4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjI0MDIzMzVhOWE1YjAwNDA4NWU4YjdhNDQxMjJmNWE4NDk5Y2MxIn0=', '2020-03-26 07:01:57.725369');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_padata`
--
ALTER TABLE `app_padata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_padata`
--
ALTER TABLE `app_padata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8261;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
