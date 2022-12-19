-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 09:22 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `loc_id` int(10) NOT NULL,
  `x_coor` varchar(20) NOT NULL,
  `y_coor` varchar(20) NOT NULL,
  `project_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`loc_id`, `x_coor`, `y_coor`, `project_name`) VALUES
(1, '23.729211164246585', '90.40874895549243', 'JICA Support Program 3 for Strengthening Mathematics and Science Education in Primary Education Project'),
(2, '23.801862310944188', '90.35700996898726', 'JICA Support Program 3 for Strengthening Mathematics and Science Education in Primary Education Project'),
(3, '23.768773179764562', '90.37269632665758', 'Project for Capacity Building of Nursing Services Phase 2'),
(4, '23.733211657612223', '90.40993638432778', 'Project for Capacity Building of Nursing Services Phase 2'),
(5, '23.728881264793493', '90.40888399782175', 'The Project for Strengthening Health Systems through Organizing Communities'),
(6, '23.728881264793493', '90.40888399782175', 'Safe Motherhood Promotion Project'),
(7, '23.75363622259384', '90.39417243785537', 'Safe Motherhood Promotion Project'),
(8, '23.780215725696586', '90.40895332665768', 'Safe Motherhood Promotion Project'),
(9, '23.728881264793493', '90.40888399782175', 'Safe Motherhood Promotion Project Phase 2'),
(10, '23.75363622259384', '90.39417243785537', 'Safe Motherhood Promotion Project Phase 2'),
(11, '23.780215725696586', '90.40895332665768', 'Safe Motherhood Promotion Project Phase 2'),
(12, '23.728407931193587', '90.40787482665709', 'National Integrity Strategy Support Project Phase 2'),
(13, '23.7284766533655', '90.40910864263893', 'Project for Capacity Development of City Corporations (C4C)'),
(14, '23.7284766533655 ', '90.40910864263893', 'Strengthening Paurashava Governance Project (SPGP)'),
(15, '23.7708680271343', '90.38098892695923', 'Strengthening Public Investment Management System (SPIMS) Project Phase 2'),
(16, '23.7284766533655', '90.40910864263893', 'Upazila Integrated Capacity Development Project (UICDP)'),
(17, '23.728917093659554', '90.40956388277749', 'The Integrated Energy and Power Master Plan Project in Bangladesh'),
(18, '23.728917093659554', '90.40956388277749', 'The Project for Gas Network System Digitalization and Improvement of Operational Efficiency in Gas Sector in Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `Pid` int(11) NOT NULL,
  `project_name` varchar(200) NOT NULL,
  `category` varchar(50) NOT NULL,
  `affiliated_agency` varchar(400) NOT NULL,
  `description` varchar(400) NOT NULL,
  `project_start_time` date NOT NULL,
  `project_completion_time` date NOT NULL,
  `total_budget` varchar(20) NOT NULL,
  `completion_percentage` decimal(5,2) NOT NULL,
  `issues` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Pid`, `project_name`, `category`, `affiliated_agency`, `description`, `project_start_time`, `project_completion_time`, `total_budget`, `completion_percentage`, `issues`) VALUES
(1, 'JICA Support Program 3 for Strengthening Mathematics and Science Education in Primary Education Project', 'Education', 'Ministry of Primary and Mass Education, Directorate of Primary Education', 'National level of academic skills and knowledge obtained in primary mathematics and science is improved.', '2019-04-01', '2023-06-30', 'JPY 380M', '77.36', NULL),
(2, 'National Integrity Strategy Support Project Phase 2', 'Governance', 'Cabinet Division of the Government of Bangladesh', 'Transparency and accountability system of the public administration and associated institutions is enhanced.', '2011-07-01', '2016-06-30', 'JPY 400M', '100.00', NULL),
(3, 'Project for Capacity Building of Nursing Services Phase 2', 'Health', 'Directorate General of Nursing and Midwifery Services (DGNM), Bangladesh Nursing and Midwifery Council (BNMC)', 'The quality of nursing education is improved in Bangladesh', '2022-03-26', '2026-03-25', 'JPY 300M', '22.15', NULL),
(4, 'Project for Capacity Development of City Corporations (C4C)', 'Governance', 'Local Government Division (LGD), Ministry of Local Government, Rural Development and Cooperatives (MLGRD&C)', 'Functions and organizational structure of the target City Corporations (CCs) are optimized.', '2016-01-06', '2021-06-05', 'JPY 410M', '99.50', NULL),
(5, 'Safe Motherhood Promotion Project', 'Health', 'Ministry of Health and Family Welfare*2, Directorate of Family Planning, Directorate of Health Services, District Family Planning Office, District Health Services Office, and Upazila Health Complex', 'Approaches of Reproductive Health (RH) services extracted from the Project are standardized and applied to other districts.', '2006-07-01', '2010-06-30', 'JPY 350M', '100.00', NULL),
(6, 'Safe Motherhood Promotion Project Phase 2', 'Health', 'Ministry of Health and Family Welfare*2, Directorate of Family Planning, Directorate of Health Services, District Family Planning Office, District Health Services Office, and Upazila Health Complex', 'Maternal and neonatal health status is improved in Bangladesh.', '2011-07-01', '2016-06-30', 'JPY 420M', '100.00', NULL),
(7, 'Strengthening Paurashava Governance Project (SPGP)', 'Governance', 'Local Government Division (LGD), Ministry of Local Government, Rural Development and Cooperatives (MLGRD&C)', 'Measures of Pourashava capacity development are taken nation-wide based on mid-long term strategy.', '2014-02-15', '2018-10-16', 'JPY 150M', '100.00', NULL),
(8, 'Strengthening Public Investment Management System (SPIMS) Project Phase 2', 'Governance', 'Programming Division, Planning Commission, Ministry of Planning', 'Public investment contributes to achieving mid-long term development plan', '2019-09-28', '2023-09-27', 'JPY 350M', '80.48', NULL),
(9, 'The Integrated Energy and Power Master Plan Project in Bangladesh', 'Energy and Mining', 'MoPEMR (Ministry of Power, Energy and Mineral Resources)', 'A low/zero carbon energy demand/supply system will be established based on the premise of ensuring energy security and economic viability.', '2021-06-22', '2024-01-31', 'JPY 285M', '58.87', NULL),
(10, 'The Project for Gas Network System Digitalization and Improvement of Operational Efficiency in Gas Sector in Bangladesh', 'Energy and Mining', 'Energy and Mineral Resources Division (EMRD) Ministry of Power, Energy and Mineral Resources MoPEMR)', 'Reliable, effective and efficient gas and power supply for economic development of the country is achieved.', '2020-01-27', '2022-12-22', 'JPY 180M', '99.43', NULL),
(11, 'The Project for Strengthening Health Systems through Organizing Communities', 'Health', 'Operational Plans (OPs) of the Ministry of Health and Family Welfare/ Sectors-Wide Program Management and Monitoring, Health Economics and Finance, Non-communicable Disease Control (NCDC), Community Based Healthcare (CBHC), Upazila Health Care (UHC), Hospital Services Management (HSM), Lifestyle and Health Education Promotion (L & HEP)', 'The Health status of population in Bangladesh is improved', '2017-06-29', '2022-07-28', 'JPY 400M', '97.55', NULL),
(12, 'Upazila Integrated Capacity Development Project (UICDP)', 'Governance', 'Local Government Division (LGD), Ministry of Local Government, Rural Development and Cooperatives (MLGRD&C)', 'Promoting development works and public service delivery, based on the regional characteristics, through strengthened capacity of Upazila Parishad.', '2017-09-16', '2022-12-15', 'JPY 405M', '100.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `Id` int(100) NOT NULL,
  `PrID` int(100) NOT NULL,
  `Report` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`Id`, `PrID`, `Report`) VALUES
(1, 1, ''),
(2, 2, 'This Project is going well'),
(3, 6, 'Nice');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Pid`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `Pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
