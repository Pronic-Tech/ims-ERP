-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 01:33 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufirm`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_infos`
--

CREATE TABLE `academic_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `institution` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_year` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `division_grade` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `major_subjects` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_categories`
--

CREATE TABLE `account_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `ac_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cr` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_categories`
--

INSERT INTO `account_categories` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `ac_name`, `ac_type`, `dr`, `cr`, `status`) VALUES
(1, '2021-06-30 05:36:06', '2021-06-30 05:36:06', 1, NULL, 'ACCOUNTS PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(2, '2021-06-30 05:36:06', '2021-06-30 05:36:06', 1, NULL, 'ACCOUNTS RECEIVABLE', 'Asset', 'Increase', 'Decrease', 1),
(3, '2021-06-30 05:36:07', '2021-06-30 05:36:07', 1, NULL, 'ACCUMULATED DEPRECIATION', 'Contra Asset', 'Decrease', 'Increase', 1),
(4, '2021-06-30 05:36:07', '2021-06-30 05:36:07', 1, NULL, 'ADVERTISING EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(5, '2021-06-30 05:36:07', '2021-06-30 05:36:07', 1, NULL, 'ALLOWANCE FOR UNCOLLECTIBLE ACCOUNTS', 'Contra Asset', 'Decrease', 'Increase', 1),
(6, '2021-06-30 05:36:07', '2021-06-30 05:36:07', 1, NULL, 'AMORTIZATION EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(7, '2021-06-30 05:36:07', '2021-06-30 05:36:07', 1, NULL, 'AVAILABLE FOR SALE SECURITIES', 'Asset', 'Increase', 'Decrease', 1),
(8, '2021-06-30 05:36:07', '2021-06-30 05:36:07', 1, NULL, 'Bank Accounts', 'Asset', 'Increase', 'Decrease', 1),
(9, '2021-06-30 05:36:07', '2021-06-30 05:36:07', 1, NULL, 'Bank OD A/c', 'Liability', 'Decrease', 'Increase', 1),
(10, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'BONDS PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(11, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'BUILDING', 'Asset', 'Increase', 'Decrease', 1),
(12, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'CAPITAL STOCK', 'Equity', 'Decrease', 'Increase', 1),
(13, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'CASH', 'Asset', 'Increase', 'Decrease', 1),
(14, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'CASH OVER', 'Revenue', 'Decrease', 'Increase', 1),
(15, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'CASH SHORT', 'Expense', 'Increase', 'Decrease', 1),
(16, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'CHARITABLE CONTRIBUTIONS PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(17, '2021-06-30 05:36:08', '2021-06-30 05:36:08', 1, NULL, 'COMMON STOCK', 'Equity', 'Decrease', 'Increase', 1),
(18, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'COST OF GOODS SOLD', 'Expense', 'Increase', 'Decrease', 1),
(19, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'CURRENCY EXCHANGE GAIN', 'Gain', 'Decrease', 'Increase', 1),
(20, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'CURRENCY EXCHANGE LOSS', 'Loss', 'Increase', 'Decrease', 1),
(21, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'DEPRECIATION EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(22, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'DISCOUNT ON BONDS PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(23, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'DISCOUNT ON NOTES PAYABLE', 'Contra Liability', 'Increase', 'Decrease', 1),
(24, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'DIVIDEND INCOME', 'Revenue', 'Decrease', 'Increase', 1),
(25, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'DIVIDENDS', 'Dividend', 'Increase', 'Decrease', 1),
(26, '2021-06-30 05:36:09', '2021-06-30 05:36:09', 1, NULL, 'DIVIDENDS PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(27, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'DOMAIN NAME', 'Asset', 'Increase', 'Decrease', 1),
(28, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'EMPLOYEE BENEFITS EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(29, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'EQUIPMENT', 'Asset', 'Increase', 'Decrease', 1),
(30, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'FEDERAL INCOME TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(31, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'FEDERAL UNEMPLOYMENT TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(32, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'FREIGHT-IN', 'Part of Calculation of Net Purchases', 'Increase', 'Decrease', 1),
(33, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'FREIGHT-OUT', 'Expense', 'Increase', 'Decrease', 1),
(34, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'FUEL EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(35, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'GAIN', 'Gain', 'Decrease', 'Increase', 1),
(36, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'HEALTH/CHILD FLEX PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(37, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'INCOME SUMMARY', 'Not a Financial Statement Account', 'Debited for Total Expenses', 'Credited for Total Revenues', 1),
(38, '2021-06-30 05:36:10', '2021-06-30 05:36:10', 1, NULL, 'INSURANCE EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(39, '2021-06-30 05:36:11', '2021-06-30 05:36:11', 1, NULL, 'INSURANCE PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(40, '2021-06-30 05:36:11', '2021-06-30 05:36:11', 1, NULL, 'INTEREST EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(41, '2021-06-30 05:36:11', '2021-06-30 05:36:11', 1, NULL, 'INTEREST INCOME', 'Revenue', 'Decrease', 'Increase', 1),
(42, '2021-06-30 05:36:11', '2021-06-30 05:36:11', 1, NULL, 'INTEREST PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(43, '2021-06-30 05:36:11', '2021-06-30 05:36:11', 1, NULL, 'INTEREST RECEIVABLE', 'Asset', 'Increase', 'Decrease', 1),
(44, '2021-06-30 05:36:11', '2021-06-30 05:36:11', 1, NULL, 'INVENTORY', 'Asset', 'Increase', 'Decrease', 1),
(45, '2021-06-30 05:36:11', '2021-06-30 05:36:11', 1, NULL, 'INVESTMENT IN BONDS', 'Asset', 'Increase', 'Decrease', 1),
(46, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'INVESTMENT INCOME', 'Revenue', 'Decrease', 'Increase', 1),
(47, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'INVESTMENTS', 'Asset', 'Increase', 'Decrease', 1),
(48, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'LAND', 'Asset', 'Increase', 'Decrease', 1),
(49, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'LOAN PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(50, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'LOAN & ADVANCE', 'Asset', 'Increase', 'Decrease', 1),
(51, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'LOSS', 'Loss', 'Increase', 'Decrease', 1),
(52, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'MEDICARE/MEDICAID PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(53, '2021-06-30 05:36:12', '2021-06-30 05:36:12', 1, NULL, 'MISCELLANEOUS EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(54, '2021-06-30 05:36:13', '2021-06-30 05:36:13', 1, NULL, 'NOTES PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(55, '2021-06-30 05:36:13', '2021-06-30 05:36:13', 1, NULL, 'NOTES RECEIVABLE', 'Asset', 'Increase', 'Decrease', 1),
(56, '2021-06-30 05:36:13', '2021-06-30 05:36:13', 1, NULL, 'OBLIGATION UNDER CAPITAL LEASE', 'Liability', 'Decrease', 'Increase', 1),
(57, '2021-06-30 05:36:13', '2021-06-30 05:36:13', 1, NULL, 'PAID-IN CAPITAL IN EXCESS OF PAR – COMMON', 'Equity', 'Decrease', 'Increase', 1),
(58, '2021-06-30 05:36:13', '2021-06-30 05:36:13', 1, NULL, 'PAID-IN CAPITAL IN EXCESS OF PAR – PREFERRED', 'Equity', 'Decrease', 'Increase', 1),
(59, '2021-06-30 05:36:13', '2021-06-30 05:36:13', 1, NULL, 'PATENT', 'Asset', 'Increase', 'Decrease', 1),
(60, '2021-06-30 05:36:14', '2021-06-30 05:36:14', 1, NULL, 'PAYROLL TAX EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(61, '2021-06-30 05:36:14', '2021-06-30 05:36:14', 1, NULL, 'PETTY CASH', 'Asset', 'Increase', 'Decrease', 1),
(62, '2021-06-30 05:36:15', '2021-06-30 05:36:15', 1, NULL, 'POSTAGE EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(63, '2021-06-30 05:36:15', '2021-06-30 05:36:15', 1, NULL, 'PREMIUM ON BONDS PAYABLE', 'Liability Adjunct Account', 'Decrease', 'Increase', 1),
(64, '2021-06-30 05:36:15', '2021-06-30 05:36:15', 1, NULL, 'PREPAID INSURANCE', 'Asset', 'Increase', 'Decrease', 1),
(65, '2021-06-30 05:36:15', '2021-06-30 05:36:15', 1, NULL, 'PREPAID RENT', 'Asset', 'Increase', 'Decrease', 1),
(66, '2021-06-30 05:36:15', '2021-06-30 05:36:15', 1, NULL, 'PURCHASE DISCOUNTS', 'Reduces Calculation of Net Purchases', 'Decrease', 'Increase', 1),
(67, '2021-06-30 05:36:16', '2021-06-30 05:36:16', 1, NULL, 'PURCHASE DISCOUNTS LOST', 'Expense', 'Increase', 'Decrease', 1),
(68, '2021-06-30 05:36:16', '2021-06-30 05:36:16', 1, NULL, 'PURCHASES', 'Part of Calculation of Net Purchases', 'Increase', 'Decrease', 1),
(69, '2021-06-30 05:36:16', '2021-06-30 05:36:16', 1, NULL, 'PURCHASE RETURNS', 'Reduces Calculation of Net Purchases', 'Decrease', 'Increase', 1),
(70, '2021-06-30 05:36:16', '2021-06-30 05:36:16', 1, NULL, 'RENT EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(71, '2021-06-30 05:36:16', '2021-06-30 05:36:16', 1, NULL, 'REPAIR EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(72, '2021-06-30 05:36:16', '2021-06-30 05:36:16', 1, NULL, 'RETAINED EARNINGS', 'Equity', 'Decrease', 'Increase', 1),
(73, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'RETIREMENT CONTRIBUTION PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(74, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'REVENUE', 'Revenue', 'Decrease', 'Increase', 1),
(75, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SALARIES EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(76, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SALARIES PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(77, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SALES', 'Revenue', 'Decrease', 'Increase', 1),
(78, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SALES DISCOUNTS', 'Contra Revenue', 'Increase', 'Decrease', 1),
(79, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SALES RETURNS', 'Contra Revenue', 'Increase', 'Decrease', 1),
(80, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SERVICE CHARGE', 'Expense', 'Increase', 'Decrease', 1),
(81, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SERVICE REVENUE', 'Revenue', 'Decrease', 'Increase', 1),
(82, '2021-06-30 05:36:17', '2021-06-30 05:36:17', 1, NULL, 'SOCIAL SECURITY PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(83, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'STATE INCOME TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(84, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'STATE UNEMPLOYMENT TAX PAYABLE', 'Liability', 'Decrease', 'Increase', 1),
(85, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'SUNDRY CREDITORS', 'Current liabilities', 'Decrease', 'Increase', 1),
(86, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'SUNDRY DEBTORS', 'Current Assets', 'Increase', 'Decrease', 1),
(87, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'SUPPLIES', 'Asset', 'Increase', 'Decrease', 1),
(88, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'SUPPLIES EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(89, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'TRADING SECURITIES', 'Asset', 'Increase', 'Decrease', 1),
(90, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'TREASURY STOCK', 'Contra Equity', 'Increase', 'Decrease', 1),
(91, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'UNCOLLECTIBLE ACCOUNTS EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(92, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'UNEARNED REVENUE', 'Liability', 'Decrease', 'Increase', 1),
(93, '2021-06-30 05:36:18', '2021-06-30 05:36:18', 1, NULL, 'UNREALIZED GAIN', 'Gain', 'Decrease', 'Increase', 1),
(94, '2021-06-30 05:36:19', '2021-06-30 05:36:19', 1, NULL, 'UNREALIZED LOSS', 'Loss', 'Increase', 'Decrease', 1),
(95, '2021-06-30 05:36:19', '2021-06-30 05:36:19', 1, NULL, 'UNREALIZED GAIN – OTHER COMPREHENSIVE INCOME', 'Increase in Equity Via Other Comprehensive Income', 'Decrease', 'Increase', 1),
(96, '2021-06-30 05:36:19', '2021-06-30 05:36:19', 1, NULL, 'UNREALIZED LOSS – OTHER COMPREHENSIVE INCOME', 'Decrease in Equity Via Other Comprehensive Income', 'Increase', 'Decrease', 1),
(97, '2021-06-30 05:36:19', '2021-06-30 05:36:19', 1, NULL, 'UTILITIES EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(98, '2021-06-30 05:36:19', '2021-06-30 05:36:19', 1, NULL, 'WARRANTY EXPENSE', 'Expense', 'Increase', 'Decrease', 1),
(99, '2021-06-30 05:36:19', '2021-06-30 05:36:19', 1, NULL, 'WARRANTY LIABILITY', 'Liability', 'Decrease', 'Increase', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addressinfos`
--

CREATE TABLE `addressinfos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addressinfos`
--

INSERT INTO `addressinfos` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `students_id`, `address`, `state`, `country`, `temp_address`, `temp_state`, `temp_country`, `home_phone`, `mobile_1`, `mobile_2`, `status`) VALUES
(1, '2023-05-01 20:27:56', '2023-05-01 20:53:29', 1, NULL, 1, '60200 MERU', 'MERU', 'KENYA', NULL, NULL, NULL, NULL, '075522225', NULL, 1),
(2, '2023-05-01 22:25:17', '2023-05-01 22:25:17', 1, NULL, 2, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(3, '2023-05-01 22:25:17', '2023-05-01 22:25:17', 1, NULL, 3, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(4, '2023-05-01 22:25:17', '2023-05-01 22:25:17', 1, NULL, 4, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(5, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 5, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(6, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 6, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(7, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 7, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(8, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 8, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(9, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 9, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(10, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 10, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(11, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 11, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(12, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 12, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(13, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 13, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(14, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 14, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(15, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 15, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(16, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 16, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(17, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 17, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(18, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, 18, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(19, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, 19, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(20, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, 20, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(21, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, 21, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1),
(22, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, 22, '60200', 'meru', 'kenya', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

CREATE TABLE `alert_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `event` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms` tinyint(1) NOT NULL DEFAULT 1,
  `email` tinyint(1) NOT NULL DEFAULT 1,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `event`, `sms`, `email`, `subject`, `template`, `status`) VALUES
(1, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'BirthdayWish', 0, 0, 'Wish Your Birthday Dear', 'Dear {{first_name}}, Sending you smiles for every moment of your special day…Have a wonderful time and a very happy birthday!', 1),
(2, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'StudentRegistration', 0, 0, 'Registration Information', 'Dear {{first_name}}, you are successfully registered in our institution with RegNo.{{reg_no}}. Your login password is {{password}} ,Thank You.', 1),
(3, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'StudentTransfer', 0, 0, 'Transfer Information', 'Dear {{first_name}}, We would like to inform you are successfully transferred to {{semester}}. Thank You.', 1),
(4, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'FeeReceive', 0, 0, 'Fees Receive Information', 'Dear {{first_name}}, We would like to inform you we are successfully received {{amount}} on {{date}}. Thank you for the Deposit.', 1),
(5, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'BalanceFees', 0, 0, 'Balance Fees Information', 'Dear {{first_name}}, you have {{due_amount}} balance fees. please deposit on time. For more info contact the Account Department.', 1),
(6, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'SubjectAttendance', 0, 0, 'Student Subject Wise Attendance Information', 'Dear {{guardian_name}}, your child {{first_name}} was Absent in {{absent_status}} subjects attendance on {{date}}.', 1),
(7, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'StudentAttendance', 0, 0, 'Student Attendance Information', 'Dear Guardian, This is to inform you that {{first_name}} is {{status}} on {{date}}.', 1),
(8, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'StaffAttendance', 0, 0, 'Staff Attendance Information', 'Dear {{first_name}}, This is to inform you are {{status}} on {{date}}.', 1),
(9, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'StaffAbsentNotification', 0, 0, 'Staff Absent Information', 'Dear Sir, This is to inform you following staffs are absent today. {{staffs_name}}', 1),
(10, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'ExamScoreForGuardian', 0, 0, 'Exam Score Information', 'Dear Guardian, {{first_name}} has obtained the following marks in {{exam_mark_detail}}.', 1),
(11, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'ExamScoreForStudent', 0, 0, 'Exam Score Information', 'Dear {{first_name}}, you have obtained following marks in {{exam_mark_detail}}.', 1),
(12, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'LibraryRegistration', 0, 0, 'Library Registration Information', 'Dear {{first_name}}, Congratulation! You are successfully registered in our library.', 1),
(13, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'LibraryReturnPeriodOver', 0, 0, 'Library Clearance Reminder', 'Dear {{first_name}}, We would like to inform you have some books return time period is over. So, please return as soon as possible.', 1),
(14, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'HostelRegistration', 0, 0, 'Hostel Registration Information', 'Dear {{first_name}}, Congratulation! You are successfully registered in our hostel.', 1),
(15, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'HostelShift', 0, 0, 'Hostel Shift Information', 'Dear {{first_name}}, Congratulation! You are successfully shifted in {{new_hostel}}.', 1),
(16, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'HostelLeave', 0, 0, 'Hostel Leave Information', 'Dear {{first_name}}, You are successfully leaving from our hostel. Thank you.', 1),
(17, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'HostelActive', 0, 0, 'Hostel Active Again Information', 'Dear {{first_name}}, You are successfully re-Activated for our hostel service in {{new_hostel}}.', 1),
(18, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'TransportRegistration', 0, 0, 'Transport Service Registration Information', 'Dear {{first_name}}, You are successfully registered for our transport service in {{transport}}.', 1),
(19, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'TransportShift', 0, 0, 'Transport Shift Information', 'Dear {{first_name}}, Congratulation! You are successfully shifted in {{transport}}.', 1),
(20, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'TransportLeave', 0, 0, 'Transport Leave Information', 'Dear {{first_name}}, You are successfully deactivated for transport service. Thank you.', 1),
(21, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'TransportActive', 0, 0, 'Transport Active Again Information', 'Dear {{first_name}}, You are successfully re-Activated for our transport service in {{transport}}.', 1),
(22, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'CustomerRegistration', 0, 0, 'Customer Registration Information', 'Dear {name}, you are successfully registered in our CRM with RegNo.{reg_no}.', 1),
(23, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'VendorRegistration', 0, 0, 'Vendor Registration Information', 'Dear {name}, you are successfully registered in our CRM with RegNo.{reg_no}.', 1),
(24, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'MeetingScheduleInvitation', 0, 0, 'Meeting Scheduled Invitation', 'Dear {{first_name}}, {{semester}}/{{subject}}/{{topic}} Meeting Scheduled @{{start_time}}. Please Present on Time And Connect. Thank you', 1),
(25, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'MeetingStart', 0, 0, 'Meeting Start Join Request', 'Dear {{first_name}}, {{semester}}/{{subject}}/{{topic}} Meeting Started, Please Connect to Attend Class. Thank you', 1),
(26, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'Web Registration', 0, 0, 'Registration', 'Dear {{name}}, your application successfully registered with Reg. No.{{reg_no}}. Thank You.', 1),
(27, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'Web Registration Approve', 0, 0, 'Registration Approve', 'Dear {{name}}, your Reg. No.{{reg_no}} application successfully approved. Thank You.', 1),
(28, '2021-06-30 05:33:59', '2021-06-30 05:33:59', 1, NULL, 'Web Registration Reject', 0, 0, 'Registration Reject', 'Dear {{name}}, your Reg. No.{{reg_no}} application rejected. Thank You.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `rate` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `publish_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_answers`
--

CREATE TABLE `assignment_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `assignments_id` int(10) UNSIGNED NOT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `answer_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approve_status` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `attendees_type` int(11) NOT NULL,
  `link_id` int(10) UNSIGNED NOT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `months_id` int(10) UNSIGNED NOT NULL,
  `day_1` int(11) NOT NULL DEFAULT 0,
  `day_2` int(11) NOT NULL DEFAULT 0,
  `day_3` int(11) NOT NULL DEFAULT 0,
  `day_4` int(11) NOT NULL DEFAULT 0,
  `day_5` int(11) NOT NULL DEFAULT 0,
  `day_6` int(11) NOT NULL DEFAULT 0,
  `day_7` int(11) NOT NULL DEFAULT 0,
  `day_8` int(11) NOT NULL DEFAULT 0,
  `day_9` int(11) NOT NULL DEFAULT 0,
  `day_10` int(11) NOT NULL DEFAULT 0,
  `day_11` int(11) NOT NULL DEFAULT 0,
  `day_12` int(11) NOT NULL DEFAULT 0,
  `day_13` int(11) NOT NULL DEFAULT 0,
  `day_14` int(11) NOT NULL DEFAULT 0,
  `day_15` int(11) NOT NULL DEFAULT 0,
  `day_16` int(11) NOT NULL DEFAULT 0,
  `day_17` int(11) NOT NULL DEFAULT 0,
  `day_18` int(11) NOT NULL DEFAULT 0,
  `day_19` int(11) NOT NULL DEFAULT 0,
  `day_20` int(11) NOT NULL DEFAULT 0,
  `day_21` int(11) NOT NULL DEFAULT 0,
  `day_22` int(11) NOT NULL DEFAULT 0,
  `day_23` int(11) NOT NULL DEFAULT 0,
  `day_24` int(11) NOT NULL DEFAULT 0,
  `day_25` int(11) NOT NULL DEFAULT 0,
  `day_26` int(11) NOT NULL DEFAULT 0,
  `day_27` int(11) NOT NULL DEFAULT 0,
  `day_28` int(11) NOT NULL DEFAULT 0,
  `day_29` int(11) NOT NULL DEFAULT 0,
  `day_30` int(11) NOT NULL DEFAULT 0,
  `day_31` int(11) NOT NULL DEFAULT 0,
  `day_32` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_certificates`
--

CREATE TABLE `attendance_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `year_of_study` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage_of_attendance` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_masters`
--

CREATE TABLE `attendance_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `month` int(10) UNSIGNED NOT NULL,
  `day_in_month` int(11) NOT NULL,
  `holiday` int(11) NOT NULL,
  `open` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_statuses`
--

CREATE TABLE `attendance_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_statuses`
--

INSERT INTO `attendance_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `display_class`, `status`) VALUES
(1, '2021-06-30 05:33:51', '2021-06-30 05:33:51', 1, NULL, 'PRESENT', 'btn-primary', 1),
(2, '2021-06-30 05:33:51', '2021-06-30 05:33:51', 1, NULL, 'ABSENT', 'btn-danger', 1),
(3, '2021-06-30 05:33:51', '2021-06-30 05:33:51', 1, NULL, 'LATE', 'btn-warning', 1),
(4, '2021-06-30 05:33:51', '2021-06-30 05:33:51', 1, NULL, 'LEAVE', 'btn-success', 1),
(5, '2021-06-30 05:33:51', '2021-06-30 05:33:51', 1, NULL, 'HOLIDAY', 'btn-info', 1);

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":null,\"last_login_ip\":null}', '{\"last_login_at\":\"2023-05-01 20:25:08\",\"last_login_ip\":\"127.0.0.1\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 17:25:08', '2023-05-01 17:25:08'),
(2, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$SkDZiWj6BBfI1aepvAsjm.JCV5mZGLuryGf\\/pLi5WKHOr3D7RrPqG\"}', '{\"password\":\"$2y$10$obbILGo3QcNLKaFQMWMNK.sNppl38IAGxG6RXzaxIo7EfYN.BOliq\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 17:25:08', '2023-05-01 17:25:08'),
(3, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2023-05-01 20:25:08\"}', '{\"last_login_at\":\"2023-05-01 20:25:43\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 17:25:43', '2023-05-01 17:25:43'),
(4, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$obbILGo3QcNLKaFQMWMNK.sNppl38IAGxG6RXzaxIo7EfYN.BOliq\"}', '{\"password\":\"$2y$10$ycWhiHeqIeflJmLyvt84OOl5JSopA75LTLYZfOhVl2jiMER47ouSS\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 17:25:43', '2023-05-01 17:25:43'),
(5, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2023-05-01 20:25:43\",\"last_login_ip\":\"127.0.0.1\"}', '{\"last_login_at\":\"2023-05-01 20:32:45\",\"last_login_ip\":\"192.168.88.215\"}', 'http://192.168.88.205/EduFirm/public/login', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 17:32:45', '2023-05-01 17:32:45'),
(6, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$ycWhiHeqIeflJmLyvt84OOl5JSopA75LTLYZfOhVl2jiMER47ouSS\"}', '{\"password\":\"$2y$10$zptXyn\\/AC\\/9rQOtw6eCnfOwn5K.WDPMggHfHS.qk\\/fyA98hZFiKUC\"}', 'http://192.168.88.205/EduFirm/public/login', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 17:32:45', '2023-05-01 17:32:45'),
(7, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2023-05-01 20:32:45\",\"last_login_ip\":\"192.168.88.215\"}', '{\"last_login_at\":\"2023-05-01 20:33:00\",\"last_login_ip\":\"127.0.0.1\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 17:33:00', '2023-05-01 17:33:00'),
(8, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$zptXyn\\/AC\\/9rQOtw6eCnfOwn5K.WDPMggHfHS.qk\\/fyA98hZFiKUC\"}', '{\"password\":\"$2y$10$2JV24LxiRvrWUk6k6i5EeeOCiXLnwOK9Gacgr88hRfnDlpJVx6Wm6\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 17:33:00', '2023-05-01 17:33:00'),
(9, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2023-05-01 20:33:00\",\"last_login_ip\":\"127.0.0.1\"}', '{\"last_login_at\":\"2023-05-01 20:33:12\",\"last_login_ip\":\"192.168.88.215\"}', 'http://192.168.88.205/EduFirm/public/login', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 17:33:12', '2023-05-01 17:33:12'),
(10, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$2JV24LxiRvrWUk6k6i5EeeOCiXLnwOK9Gacgr88hRfnDlpJVx6Wm6\"}', '{\"password\":\"$2y$10$.3IqYQk2s9uXJsJ6RLjeMOuGX1kSyf45q99U1r8Ws\\/0x9GGeBd1F2\"}', 'http://192.168.88.205/EduFirm/public/login', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 17:33:12', '2023-05-01 17:33:12'),
(11, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2023-05-01 20:33:12\",\"last_login_ip\":\"192.168.88.215\"}', '{\"last_login_at\":\"2023-05-01 20:33:34\",\"last_login_ip\":\"127.0.0.1\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 17:33:34', '2023-05-01 17:33:34'),
(12, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$.3IqYQk2s9uXJsJ6RLjeMOuGX1kSyf45q99U1r8Ws\\/0x9GGeBd1F2\"}', '{\"password\":\"$2y$10$zZ\\/xe\\/78J9bDK\\/Thryz5OeK3y7HeU0.rTPL1Wba7\\/TjMarzro.xw.\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 17:33:34', '2023-05-01 17:33:34'),
(13, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2023-05-01 20:33:34\",\"last_login_ip\":\"127.0.0.1\"}', '{\"last_login_at\":\"2023-05-01 20:33:58\",\"last_login_ip\":\"192.168.88.215\"}', 'http://192.168.88.205/EduFirm/public/login', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 17:33:58', '2023-05-01 17:33:58'),
(14, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$zZ\\/xe\\/78J9bDK\\/Thryz5OeK3y7HeU0.rTPL1Wba7\\/TjMarzro.xw.\"}', '{\"password\":\"$2y$10$vnfWzv14s4HsFOJtw.z8su6\\/NqfR4ObbYCuGncsr1DL0.ynvWCcUW\"}', 'http://192.168.88.205/EduFirm/public/login', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 17:33:58', '2023-05-01 17:33:58'),
(15, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2023-05-01 20:33:58\",\"last_login_ip\":\"192.168.88.215\"}', '{\"last_login_at\":\"2023-05-01 20:34:26\",\"last_login_ip\":\"127.0.0.1\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 17:34:26', '2023-05-01 17:34:26'),
(16, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$vnfWzv14s4HsFOJtw.z8su6\\/NqfR4ObbYCuGncsr1DL0.ynvWCcUW\"}', '{\"password\":\"$2y$10$3C8dqb7IiBgWbUj87iucL.NpuMlMGp5IZztQZLg8Kdp0s8F6dgQ1W\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 17:34:26', '2023-05-01 17:34:26'),
(17, 'App\\User', 1, 'created', 'App\\User', 2, '[]', '{\"name\":\"Denis\",\"email\":\"denis@gmail.com\",\"password\":\"$2y$10$tNxs\\/PNb6oqUZ.B1rKUy2uHIux\\/g16VavW\\/reqkSK.gW1xD6efeDO\",\"contact_number\":\"075982212\",\"address\":\"Meru\",\"profile_image\":\"\",\"id\":2}', 'http://127.0.0.1:8000/user/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 17:35:23', '2023-05-01 17:35:23'),
(18, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"last_login_at\":null,\"last_login_ip\":null}', '{\"last_login_at\":\"2023-05-01 20:35:51\",\"last_login_ip\":\"192.168.88.215\"}', 'http://192.168.88.205/EduFirm/public/login', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 17:35:51', '2023-05-01 17:35:51'),
(19, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"password\":\"$2y$10$tNxs\\/PNb6oqUZ.B1rKUy2uHIux\\/g16VavW\\/reqkSK.gW1xD6efeDO\"}', '{\"password\":\"$2y$10$PSP4SHR2oThJwn2x0wQQTuYKQITNRt4snvYkZNL0fz8DpuEMdyazC\"}', 'http://192.168.88.205/EduFirm/public/login', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 17:35:51', '2023-05-01 17:35:51'),
(20, 'App\\User', 1, 'created', 'App\\User', 3, '[]', '{\"name\":\"Solomon murithi\",\"email\":\"solo@gmail.com\",\"password\":\"$2y$10$Lo5cRJ29eaRTpCvL1UiI6.gMLgh.Njth49qP0qkbY\\/OCPIa.lRdcW\",\"contact_number\":\"0792310311\",\"address\":\"meru\",\"profile_image\":\"\",\"id\":3}', 'http://127.0.0.1:8000/user/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 17:37:06', '2023-05-01 17:37:06'),
(21, 'App\\User', 1, 'created', 'App\\Models\\Year', 5, '[]', '{\"title\":\"2023\",\"created_by\":1,\"id\":5}', 'http://127.0.0.1:8000/year/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 17:55:06', '2023-05-01 17:55:06'),
(22, 'App\\User', 1, 'updated', 'App\\Models\\Year', 4, '{\"status\":1}', '{\"status\":0}', 'http://127.0.0.1:8000/year/4/in-active', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 17:55:14', '2023-05-01 17:55:14'),
(23, 'App\\User', 1, 'created', 'App\\Models\\Subject', 1, '[]', '{\"title\":\"Mathematics\",\"code\":\"01\",\"full_mark_theory\":null,\"pass_mark_theory\":null,\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":null,\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"0\",\"description\":null,\"created_by\":1,\"id\":1}', 'http://127.0.0.1:8000/subject/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 17:59:59', '2023-05-01 17:59:59'),
(24, 'App\\User', 1, 'created', 'App\\Models\\Subject', 2, '[]', '{\"title\":\"ENGLISH\",\"code\":\"02\",\"full_mark_theory\":null,\"pass_mark_theory\":null,\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":null,\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"0\",\"description\":null,\"created_by\":1,\"id\":2}', 'http://127.0.0.1:8000/subject/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:00:29', '2023-05-01 18:00:29'),
(25, 'App\\User', 1, 'created', 'App\\Models\\Subject', 3, '[]', '{\"title\":\"KISWAHILI\",\"code\":\"03\",\"full_mark_theory\":null,\"pass_mark_theory\":null,\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":null,\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"0\",\"description\":null,\"created_by\":1,\"id\":3}', 'http://127.0.0.1:8000/subject/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:00:54', '2023-05-01 18:00:54'),
(26, 'App\\User', 1, 'created', 'App\\Models\\Subject', 4, '[]', '{\"title\":\"BIOLOGY\",\"code\":\"4\",\"full_mark_theory\":null,\"pass_mark_theory\":null,\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":null,\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"0\",\"description\":null,\"created_by\":1,\"id\":4}', 'http://127.0.0.1:8000/subject/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:01:53', '2023-05-01 18:01:53'),
(27, 'App\\User', 1, 'created', 'App\\Models\\Subject', 5, '[]', '{\"title\":\"PHYSICS\",\"code\":\"05\",\"full_mark_theory\":null,\"pass_mark_theory\":null,\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":null,\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"0\",\"description\":null,\"created_by\":1,\"id\":5}', 'http://127.0.0.1:8000/subject/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:02:12', '2023-05-01 18:02:12'),
(28, 'App\\User', 1, 'created', 'App\\Models\\Subject', 6, '[]', '{\"title\":\"CHEMISTRY\",\"code\":\"06\",\"full_mark_theory\":null,\"pass_mark_theory\":null,\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":null,\"sub_type\":\"Compulsory\",\"class_type\":\"Theory\",\"staff_id\":\"0\",\"description\":null,\"created_by\":1,\"id\":6}', 'http://127.0.0.1:8000/subject/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:03:33', '2023-05-01 18:03:33'),
(29, 'App\\User', 1, 'created', 'App\\Models\\Subject', 7, '[]', '{\"title\":\"AGRICUTURE\",\"code\":\"07\",\"full_mark_theory\":null,\"pass_mark_theory\":null,\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":null,\"sub_type\":\"Optional\",\"class_type\":\"Theory\",\"staff_id\":\"0\",\"description\":null,\"created_by\":1,\"id\":7}', 'http://127.0.0.1:8000/subject/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:03:55', '2023-05-01 18:03:55'),
(30, 'App\\User', 1, 'created', 'App\\Models\\Subject', 8, '[]', '{\"title\":\"HISTORY\",\"code\":\"08\",\"full_mark_theory\":null,\"pass_mark_theory\":null,\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":null,\"sub_type\":\"Optional\",\"class_type\":\"Theory\",\"staff_id\":\"0\",\"description\":null,\"created_by\":1,\"id\":8}', 'http://127.0.0.1:8000/subject/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:04:11', '2023-05-01 18:04:11'),
(31, 'App\\User', 1, 'created', 'App\\Models\\Subject', 9, '[]', '{\"title\":\"BUSINESS\",\"code\":\"10\",\"full_mark_theory\":null,\"pass_mark_theory\":null,\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":null,\"sub_type\":\"Optional\",\"class_type\":\"Theory\",\"staff_id\":\"0\",\"description\":null,\"created_by\":1,\"id\":9}', 'http://127.0.0.1:8000/subject/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:04:31', '2023-05-01 18:04:31'),
(32, 'App\\User', 1, 'created', 'App\\Models\\Subject', 10, '[]', '{\"title\":\"GEOGRAPHY\",\"code\":\"11\",\"full_mark_theory\":null,\"pass_mark_theory\":null,\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":null,\"sub_type\":\"Optional\",\"class_type\":\"Theory\",\"staff_id\":\"0\",\"description\":null,\"created_by\":1,\"id\":10}', 'http://127.0.0.1:8000/subject/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:05:18', '2023-05-01 18:05:18'),
(33, 'App\\User', 1, 'created', 'App\\Models\\Subject', 11, '[]', '{\"title\":\"CRE\",\"code\":\"12\",\"full_mark_theory\":null,\"pass_mark_theory\":null,\"full_mark_practical\":null,\"pass_mark_practical\":null,\"credit_hour\":null,\"sub_type\":\"Optional\",\"class_type\":\"Theory\",\"staff_id\":\"0\",\"description\":null,\"created_by\":1,\"id\":11}', 'http://127.0.0.1:8000/subject/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:05:40', '2023-05-01 18:05:40'),
(34, 'App\\User', 1, 'created', 'App\\Models\\GradingType', 1, '[]', '{\"title\":\"HIGH SCHOOL\",\"created_by\":1,\"slug\":\"HIGH-SCHOOL\",\"id\":1}', 'http://127.0.0.1:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:27:36', '2023-05-01 18:27:36'),
(35, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 1, '[]', '{\"gradingType_id\":1,\"name\":\"A\",\"percentage_from\":\"80\",\"percentage_to\":\"100\",\"grade_point\":\"11\",\"description\":\"Excellent\",\"created_by\":1,\"id\":1}', 'http://127.0.0.1:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:27:37', '2023-05-01 18:27:37'),
(36, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 2, '[]', '{\"gradingType_id\":1,\"name\":\"A-\",\"percentage_from\":\"75\",\"percentage_to\":\"80\",\"grade_point\":\"10\",\"description\":\"Very Good\",\"created_by\":1,\"id\":2}', 'http://127.0.0.1:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:27:37', '2023-05-01 18:27:37'),
(37, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 3, '[]', '{\"gradingType_id\":1,\"name\":\"B+\",\"percentage_from\":\"71\",\"percentage_to\":\"74\",\"grade_point\":\"9\",\"description\":\"Good\",\"created_by\":1,\"id\":3}', 'http://127.0.0.1:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:27:37', '2023-05-01 18:27:37'),
(38, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 4, '[]', '{\"gradingType_id\":1,\"name\":\"B\",\"percentage_from\":\"65\",\"percentage_to\":\"70\",\"grade_point\":\"8\",\"description\":\"Satisfactory\",\"created_by\":1,\"id\":4}', 'http://127.0.0.1:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:27:37', '2023-05-01 18:27:37'),
(39, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 5, '[]', '{\"gradingType_id\":1,\"name\":\"B-\",\"percentage_from\":\"61\",\"percentage_to\":\"64\",\"grade_point\":\"7\",\"description\":\"Fair\",\"created_by\":1,\"id\":5}', 'http://127.0.0.1:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:27:37', '2023-05-01 18:27:37'),
(40, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 6, '[]', '{\"gradingType_id\":1,\"name\":\"C+\",\"percentage_from\":\"55\",\"percentage_to\":\"60\",\"grade_point\":\"6\",\"description\":\"Weak\",\"created_by\":1,\"id\":6}', 'http://127.0.0.1:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:27:37', '2023-05-01 18:27:37'),
(41, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 7, '[]', '{\"gradingType_id\":1,\"name\":\"C\",\"percentage_from\":\"46\",\"percentage_to\":\"54\",\"grade_point\":\"5\",\"description\":\"Very Weak\",\"created_by\":1,\"id\":7}', 'http://127.0.0.1:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:27:37', '2023-05-01 18:27:37'),
(42, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 8, '[]', '{\"gradingType_id\":1,\"name\":\"C-\",\"percentage_from\":\"41\",\"percentage_to\":\"45\",\"grade_point\":\"4\",\"description\":\"Poor\",\"created_by\":1,\"id\":8}', 'http://127.0.0.1:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:27:37', '2023-05-01 18:27:37'),
(43, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 9, '[]', '{\"gradingType_id\":1,\"name\":\"D+\",\"percentage_from\":\"35\",\"percentage_to\":\"40\",\"grade_point\":\"3\",\"description\":\"Very Poor\",\"created_by\":1,\"id\":9}', 'http://127.0.0.1:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:27:37', '2023-05-01 18:27:37'),
(44, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 10, '[]', '{\"gradingType_id\":1,\"name\":\"D\",\"percentage_from\":\"26\",\"percentage_to\":\"34\",\"grade_point\":\"2\",\"description\":\"Fail\",\"created_by\":1,\"id\":10}', 'http://127.0.0.1:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:27:37', '2023-05-01 18:27:37'),
(45, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 11, '[]', '{\"gradingType_id\":1,\"name\":\"D-\",\"percentage_from\":\"16\",\"percentage_to\":\"25\",\"grade_point\":\"1\",\"description\":\"Fail\",\"created_by\":1,\"id\":11}', 'http://127.0.0.1:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:27:37', '2023-05-01 18:27:37'),
(46, 'App\\User', 1, 'created', 'App\\Models\\GradingScale', 12, '[]', '{\"gradingType_id\":1,\"name\":\"E\",\"percentage_from\":\"0\",\"percentage_to\":\"15\",\"grade_point\":\"0\",\"description\":\"Failure\",\"created_by\":1,\"id\":12}', 'http://127.0.0.1:8000/grading/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:27:37', '2023-05-01 18:27:37'),
(47, 'App\\User', 1, 'created', 'App\\Models\\StudentBatch', 1, '[]', '{\"title\":\"BATCH23\",\"created_by\":1,\"id\":1}', 'http://127.0.0.1:8000/student-batch/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 18:37:04', '2023-05-01 18:37:04'),
(48, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2023-05-01 20:34:26\"}', '{\"last_login_at\":\"2023-05-01 23:16:23\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 20:16:23', '2023-05-01 20:16:23'),
(49, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$3C8dqb7IiBgWbUj87iucL.NpuMlMGp5IZztQZLg8Kdp0s8F6dgQ1W\"}', '{\"password\":\"$2y$10$dbBLhVo0XttetX\\/kjSiAl.BN4lIr0N4Ja\\/K3zBqNgiV45W\\/p349be\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 20:16:24', '2023-05-01 20:16:24'),
(50, 'App\\User', 1, 'created', 'App\\Models\\Semester', 1, '[]', '{\"semester\":\"TERM1\",\"gradingType_id\":\"0\",\"staff_id\":\"0\",\"created_by\":1,\"slug\":\"TERM1\",\"id\":1}', 'http://127.0.0.1:8000/semester/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 20:20:16', '2023-05-01 20:20:16'),
(51, 'App\\User', 1, 'updated', 'App\\Models\\Semester', 1, '{\"last_updated_by\":null,\"gradingType_id\":0}', '{\"last_updated_by\":1,\"gradingType_id\":\"1\"}', 'http://127.0.0.1:8000/semester/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 20:20:39', '2023-05-01 20:20:39'),
(52, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 1, '[]', '{\"faculty\":\"FORM1\",\"faculty_code\":\"F1EAST\",\"sorting\":\"0\",\"created_by\":1,\"id\":1}', 'http://127.0.0.1:8000/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 20:22:08', '2023-05-01 20:22:08'),
(53, 'App\\User', 1, 'created', 'App\\Models\\Student', 1, '[]', '{\"reg_no\":\"001\",\"reg_date\":\"2023-01-01\",\"university_reg\":null,\"faculty\":\"1\",\"semester\":\"1\",\"batch\":\"1\",\"academic_status\":\"1\",\"first_name\":\"BRIAN\",\"middle_name\":null,\"last_name\":\"MUTUMA\",\"date_of_birth\":\"2005-06-08\",\"gender\":\"MALE\",\"blood_group\":\"AB-\",\"nationality\":\"KENYAN\",\"national_id_type\":null,\"national_id_number\":null,\"extra_id_card_type\":null,\"extra_id_card_number\":null,\"mother_tongue\":null,\"religion\":\"CHRISTIAN\",\"caste\":null,\"email\":null,\"extra_info\":null,\"created_by\":1,\"student_image\":\"\",\"student_signature\":\"\",\"id\":1}', 'http://127.0.0.1:8000/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 20:27:56', '2023-05-01 20:27:56'),
(54, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 1, '[]', '{\"home_phone\":null,\"mobile_1\":\"075522225\",\"mobile_2\":null,\"address\":\"60200 MERU\",\"state\":\"MERU\",\"country\":\"KENYA\",\"temp_address\":null,\"temp_state\":null,\"temp_country\":null,\"created_by\":1,\"students_id\":1,\"id\":1}', 'http://127.0.0.1:8000/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 20:27:56', '2023-05-01 20:27:56'),
(55, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 1, '[]', '{\"grandfather_first_name\":null,\"grandfather_middle_name\":null,\"grandfather_last_name\":null,\"father_first_name\":\"MARK\",\"father_middle_name\":null,\"father_last_name\":\"TONY\",\"father_eligibility\":null,\"father_occupation\":null,\"father_office\":null,\"father_office_number\":null,\"father_residence_number\":null,\"father_mobile_1\":null,\"father_mobile_2\":null,\"father_email\":null,\"mother_first_name\":\"WINNIE\",\"mother_middle_name\":null,\"mother_last_name\":\"GAKII\",\"mother_eligibility\":null,\"mother_occupation\":null,\"mother_office\":null,\"mother_office_number\":null,\"mother_residence_number\":null,\"mother_mobile_1\":null,\"mother_mobile_2\":null,\"mother_email\":null,\"created_by\":1,\"father_image\":\"\",\"mother_image\":\"\",\"students_id\":1,\"id\":1}', 'http://127.0.0.1:8000/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 20:27:56', '2023-05-01 20:27:56'),
(56, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 1, '[]', '{\"guardian_first_name\":\"MARK\",\"guardian_middle_name\":null,\"guardian_last_name\":\"TONY\",\"guardian_eligibility\":null,\"guardian_occupation\":null,\"guardian_office\":null,\"guardian_office_number\":null,\"guardian_residence_number\":null,\"guardian_mobile_1\":\"07175566555\",\"guardian_mobile_2\":null,\"guardian_email\":null,\"guardian_relation\":\"FATHER\",\"guardian_address\":\"ISIOLO\",\"created_by\":1,\"guardian_image\":\"\",\"id\":1}', 'http://127.0.0.1:8000/student/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 20:27:56', '2023-05-01 20:27:56'),
(57, 'App\\User', 1, 'created', 'App\\Models\\Semester', 2, '[]', '{\"semester\":\"TERM2\",\"gradingType_id\":\"1\",\"staff_id\":\"0\",\"created_by\":1,\"slug\":\"TERM2\",\"id\":2}', 'http://127.0.0.1:8000/semester/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 20:52:02', '2023-05-01 20:52:02'),
(58, 'App\\User', 1, 'updated', 'App\\Models\\Student', 1, '{\"reg_date\":\"2023-01-01 00:00:00\",\"date_of_birth\":\"2005-06-08 00:00:00\"}', '{\"reg_date\":\"2023-01-01\",\"date_of_birth\":\"2005-06-08\"}', 'http://127.0.0.1:8000/student/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 20:53:29', '2023-05-01 20:53:29'),
(59, 'App\\User', 1, 'created', 'App\\Models\\Semester', 3, '[]', '{\"semester\":\"TERM3\",\"gradingType_id\":\"1\",\"staff_id\":\"0\",\"created_by\":1,\"slug\":\"TERM3\",\"id\":3}', 'http://127.0.0.1:8000/semester/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 20:57:24', '2023-05-01 20:57:24'),
(60, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 1, '[]', '{\"fee_head_title\":\"Registration fee\",\"fee_head_amount\":\"200\",\"created_by\":1,\"id\":1}', 'http://127.0.0.1:8000/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:07:05', '2023-05-01 21:07:05'),
(61, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 2, '[]', '{\"fee_head_title\":\"STUDENT ID\",\"fee_head_amount\":\"200\",\"created_by\":1,\"id\":2}', 'http://127.0.0.1:8000/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:07:23', '2023-05-01 21:07:23'),
(62, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 3, '[]', '{\"fee_head_title\":\"TUITION\",\"fee_head_amount\":\"10000\",\"created_by\":1,\"id\":3}', 'http://127.0.0.1:8000/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:07:39', '2023-05-01 21:07:39'),
(63, 'App\\User', 1, 'updated', 'App\\Models\\FeeHead', 1, '{\"last_updated_by\":null,\"fee_head_title\":\"Registration fee\"}', '{\"last_updated_by\":1,\"fee_head_title\":\"REGISTRATION FEE\"}', 'http://127.0.0.1:8000/account/fees/head/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:08:06', '2023-05-01 21:08:06'),
(64, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 4, '[]', '{\"fee_head_title\":\"PERSONNAL EMOLUMENTS\",\"fee_head_amount\":\"2500\",\"created_by\":1,\"id\":4}', 'http://127.0.0.1:8000/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:08:32', '2023-05-01 21:08:32'),
(65, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 5, '[]', '{\"fee_head_title\":\"ELECTRICITY WATER & CONSERVACY\",\"fee_head_amount\":\"1250\",\"created_by\":1,\"id\":5}', 'http://127.0.0.1:8000/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:09:09', '2023-05-01 21:09:09'),
(66, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 6, '[]', '{\"fee_head_title\":\"ACTIVITY FEES\",\"fee_head_amount\":\"900\",\"created_by\":1,\"id\":6}', 'http://127.0.0.1:8000/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:09:46', '2023-05-01 21:09:46'),
(67, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 7, '[]', '{\"fee_head_title\":\"REPAIR MAITAINANCE & IMPROVEMENT\",\"fee_head_amount\":\"655\",\"created_by\":1,\"id\":7}', 'http://127.0.0.1:8000/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:10:30', '2023-05-01 21:10:30'),
(68, 'App\\User', 1, 'created', 'App\\Models\\FeeHead', 8, '[]', '{\"fee_head_title\":\"LOCAL TRANSPORT & TRAVEL\",\"fee_head_amount\":\"995\",\"created_by\":1,\"id\":8}', 'http://127.0.0.1:8000/account/fees/head/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:11:04', '2023-05-01 21:11:04'),
(69, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 1, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":1}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:16:13', '2023-05-01 21:16:13'),
(70, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 2, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-28\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":2}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:16:13', '2023-05-01 21:16:13'),
(71, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 3, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":3}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:16:13', '2023-05-01 21:16:13'),
(72, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 4, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-22\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":4}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:16:13', '2023-05-01 21:16:13'),
(73, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 5, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":5}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:16:13', '2023-05-01 21:16:13'),
(74, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"name\":\"Super Admin\",\"email\":\"superadmin@edufirm.com\",\"password\":\"$2y$10$dbBLhVo0XttetX\\/kjSiAl.BN4lIr0N4Ja\\/K3zBqNgiV45W\\/p349be\",\"contact_number\":null,\"address\":null}', '{\"name\":\"Nicks\",\"email\":\"superadmin@pronic.co.ke\",\"password\":\"$2y$10$J5JsQ2FMQvTISuGS.JOI2.anzoiO6sTHO2bDbj850VnCIZp8\\/WF9q\",\"contact_number\":\"+254720287104\",\"address\":\"Meru\"}', 'http://127.0.0.1:8000/user/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:35:21', '2023-05-01 21:35:21'),
(75, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2023-05-01 23:16:23\"}', '{\"last_login_at\":\"2023-05-02 00:35:40\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:35:40', '2023-05-01 21:35:40'),
(76, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$J5JsQ2FMQvTISuGS.JOI2.anzoiO6sTHO2bDbj850VnCIZp8\\/WF9q\"}', '{\"password\":\"$2y$10$y5gjLIXrPUWtfVRC8eLlde9vSsilXZlI9UwP6ql8Z2bAN0G3KPnFW\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 21:35:40', '2023-05-01 21:35:40'),
(77, 'App\\User', 1, 'updated', 'App\\Models\\Faculty', 1, '{\"last_updated_by\":null}', '{\"last_updated_by\":1}', 'http://127.0.0.1:8000/faculty/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:05:56', '2023-05-01 22:05:56'),
(78, 'App\\User', 1, 'created', 'App\\Models\\Student', 2, '[]', '{\"reg_no\":\"2\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Kelvin   \",\"middle_name\":\"Mwenda\",\"last_name\":\"Muchiri\",\"date_of_birth\":\"2004-12-06\",\"gender\":\"MALE\",\"blood_group\":\"B+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":2}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:17', '2023-05-01 22:25:17'),
(79, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 2, '[]', '{\"students_id\":2,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":2}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:17', '2023-05-01 22:25:17'),
(80, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 2, '[]', '{\"students_id\":2,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST0\",\"father_last_name\":\"FATHER0\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo1\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":2}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:17', '2023-05-01 22:25:17'),
(81, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 2, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":2}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:17', '2023-05-01 22:25:17'),
(82, 'App\\User', 1, 'created', 'App\\Models\\Student', 3, '[]', '{\"reg_no\":\"3\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Jeff Mutugi Kirimi \",\"middle_name\":\"\",\"last_name\":\"\",\"date_of_birth\":\"2004-12-07\",\"gender\":\"MALE\",\"blood_group\":\"A+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":3}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:17', '2023-05-01 22:25:17'),
(83, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 3, '[]', '{\"students_id\":3,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":3}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:17', '2023-05-01 22:25:17'),
(84, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 3, '[]', '{\"students_id\":3,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST1\",\"father_last_name\":\"FATHER1\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo2\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":3}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:17', '2023-05-01 22:25:17'),
(85, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 3, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":3}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:17', '2023-05-01 22:25:17'),
(86, 'App\\User', 1, 'created', 'App\\Models\\Student', 4, '[]', '{\"reg_no\":\"4\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Erustus   \",\"middle_name\":\"Macharia\",\"last_name\":\"Karumba\",\"date_of_birth\":\"2004-12-08\",\"gender\":\"MALE\",\"blood_group\":\"A-\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":4}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:17', '2023-05-01 22:25:17'),
(87, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 4, '[]', '{\"students_id\":4,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":4}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:17', '2023-05-01 22:25:17'),
(88, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 4, '[]', '{\"students_id\":4,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST2\",\"father_last_name\":\"FATHER2\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo3\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":4}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:17', '2023-05-01 22:25:17'),
(89, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 4, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":4}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:17', '2023-05-01 22:25:17'),
(90, 'App\\User', 1, 'created', 'App\\Models\\Student', 5, '[]', '{\"reg_no\":\"5\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Alex  \",\"middle_name\":\"\",\"last_name\":\"Bundi\",\"date_of_birth\":\"2004-12-09\",\"gender\":\"MALE\",\"blood_group\":\"O+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":5}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(91, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 5, '[]', '{\"students_id\":5,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":5}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(92, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 5, '[]', '{\"students_id\":5,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST3\",\"father_last_name\":\"FATHER3\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo4\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":5}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(93, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 5, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":5}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(94, 'App\\User', 1, 'created', 'App\\Models\\Student', 6, '[]', '{\"reg_no\":\"6\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Cornelius  \",\"middle_name\":\"\",\"last_name\":\"Karani\",\"date_of_birth\":\"2004-12-10\",\"gender\":\"MALE\",\"blood_group\":\"B+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":6}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(95, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 6, '[]', '{\"students_id\":6,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":6}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(96, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 6, '[]', '{\"students_id\":6,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST4\",\"father_last_name\":\"FATHER4\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo5\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":6}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(97, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 6, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":6}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(98, 'App\\User', 1, 'created', 'App\\Models\\Student', 7, '[]', '{\"reg_no\":\"7\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Joseph   \",\"middle_name\":\"Ngau\",\"last_name\":\"Mutinda\",\"date_of_birth\":\"2004-12-11\",\"gender\":\"MALE\",\"blood_group\":\"B+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":7}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(99, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 7, '[]', '{\"students_id\":7,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":7}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(100, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 7, '[]', '{\"students_id\":7,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST5\",\"father_last_name\":\"FATHER5\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo6\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":7}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(101, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 7, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":7}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(102, 'App\\User', 1, 'created', 'App\\Models\\Student', 8, '[]', '{\"reg_no\":\"8\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Morris  \",\"middle_name\":\"\",\"last_name\":\"Koome\",\"date_of_birth\":\"2004-12-12\",\"gender\":\"MALE\",\"blood_group\":\"A+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":8}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(103, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 8, '[]', '{\"students_id\":8,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":8}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(104, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 8, '[]', '{\"students_id\":8,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST6\",\"father_last_name\":\"FATHER6\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo7\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":8}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(105, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 8, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":8}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(106, 'App\\User', 1, 'created', 'App\\Models\\Student', 9, '[]', '{\"reg_no\":\"9\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Julius  \",\"middle_name\":\"\",\"last_name\":\"Mutwiri\",\"date_of_birth\":\"2004-12-13\",\"gender\":\"MALE\",\"blood_group\":\"A-\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":9}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(107, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 9, '[]', '{\"students_id\":9,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":9}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(108, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 9, '[]', '{\"students_id\":9,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST7\",\"father_last_name\":\"FATHER7\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo8\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":9}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(109, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 9, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":9}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(110, 'App\\User', 1, 'created', 'App\\Models\\Student', 10, '[]', '{\"reg_no\":\"10\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Julius   \",\"middle_name\":\"Mutabari\",\"last_name\":\"Kainga\",\"date_of_birth\":\"2004-12-14\",\"gender\":\"MALE\",\"blood_group\":\"O+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":10}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(111, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 10, '[]', '{\"students_id\":10,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":10}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(112, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 10, '[]', '{\"students_id\":10,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST8\",\"father_last_name\":\"FATHER8\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo9\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":10}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(113, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 10, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":10}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(114, 'App\\User', 1, 'created', 'App\\Models\\Student', 11, '[]', '{\"reg_no\":\"11\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Dennis  \",\"middle_name\":\"\",\"last_name\":\"Mwenda\",\"date_of_birth\":\"2004-12-15\",\"gender\":\"MALE\",\"blood_group\":\"B+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":11}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(115, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 11, '[]', '{\"students_id\":11,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":11}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(116, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 11, '[]', '{\"students_id\":11,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST9\",\"father_last_name\":\"FATHER9\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo10\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":11}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(117, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 11, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":11}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(118, 'App\\User', 1, 'created', 'App\\Models\\Student', 12, '[]', '{\"reg_no\":\"12\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Sammy   \",\"middle_name\":\"Munyi\",\"last_name\":\"Ndungu\",\"date_of_birth\":\"2004-12-16\",\"gender\":\"MALE\",\"blood_group\":\"B+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":12}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(119, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 12, '[]', '{\"students_id\":12,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":12}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(120, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 12, '[]', '{\"students_id\":12,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST10\",\"father_last_name\":\"FATHER10\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo11\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":12}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(121, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 12, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":12}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(122, 'App\\User', 1, 'created', 'App\\Models\\Student', 13, '[]', '{\"reg_no\":\"13\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Godwin  \",\"middle_name\":\"\",\"last_name\":\"Mwenda\",\"date_of_birth\":\"2004-12-17\",\"gender\":\"MALE\",\"blood_group\":\"A+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":13}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(123, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 13, '[]', '{\"students_id\":13,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":13}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(124, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 13, '[]', '{\"students_id\":13,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST11\",\"father_last_name\":\"FATHER11\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo12\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":13}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(125, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 13, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":13}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(126, 'App\\User', 1, 'created', 'App\\Models\\Student', 14, '[]', '{\"reg_no\":\"14\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Bonface  \",\"middle_name\":\"\",\"last_name\":\"Karani\",\"date_of_birth\":\"2004-12-18\",\"gender\":\"MALE\",\"blood_group\":\"A-\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":14}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(127, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 14, '[]', '{\"students_id\":14,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":14}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(128, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 14, '[]', '{\"students_id\":14,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST12\",\"father_last_name\":\"FATHER12\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo13\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":14}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(129, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 14, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":14}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(130, 'App\\User', 1, 'created', 'App\\Models\\Student', 15, '[]', '{\"reg_no\":\"15\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Denis  \",\"middle_name\":\"\",\"last_name\":\"Kithinji\",\"date_of_birth\":\"2004-12-19\",\"gender\":\"MALE\",\"blood_group\":\"O+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":15}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(131, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 15, '[]', '{\"students_id\":15,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":15}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(132, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 15, '[]', '{\"students_id\":15,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST13\",\"father_last_name\":\"FATHER13\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo14\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":15}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(133, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 15, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":15}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(134, 'App\\User', 1, 'created', 'App\\Models\\Student', 16, '[]', '{\"reg_no\":\"16\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Dennis  \",\"middle_name\":\"\",\"last_name\":\"Mwiti\",\"date_of_birth\":\"2004-12-20\",\"gender\":\"MALE\",\"blood_group\":\"B+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":16}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(135, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 16, '[]', '{\"students_id\":16,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":16}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(136, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 16, '[]', '{\"students_id\":16,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST14\",\"father_last_name\":\"FATHER14\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo15\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":16}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(137, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 16, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":16}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(138, 'App\\User', 1, 'created', 'App\\Models\\Student', 17, '[]', '{\"reg_no\":\"17\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Antony  \",\"middle_name\":\"\",\"last_name\":\"Kagwanja\",\"date_of_birth\":\"2004-12-21\",\"gender\":\"MALE\",\"blood_group\":\"B+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":17}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(139, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 17, '[]', '{\"students_id\":17,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":17}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(140, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 17, '[]', '{\"students_id\":17,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST15\",\"father_last_name\":\"FATHER15\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo16\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":17}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:18', '2023-05-01 22:25:18'),
(141, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 17, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":17}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(142, 'App\\User', 1, 'created', 'App\\Models\\Student', 18, '[]', '{\"reg_no\":\"18\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Mark  \",\"middle_name\":\"\",\"last_name\":\"Murithi\",\"date_of_birth\":\"2004-12-22\",\"gender\":\"MALE\",\"blood_group\":\"A+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":18}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(143, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 18, '[]', '{\"students_id\":18,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":18}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(144, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 18, '[]', '{\"students_id\":18,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST16\",\"father_last_name\":\"FATHER16\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo17\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":18}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(145, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 18, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":18}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(146, 'App\\User', 1, 'created', 'App\\Models\\Student', 19, '[]', '{\"reg_no\":\"19\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Murithi  \",\"middle_name\":\"\",\"last_name\":\"Alex\",\"date_of_birth\":\"2004-12-23\",\"gender\":\"MALE\",\"blood_group\":\"A-\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":19}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(147, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 19, '[]', '{\"students_id\":19,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":19}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(148, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 19, '[]', '{\"students_id\":19,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST17\",\"father_last_name\":\"FATHER17\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo18\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":19}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(149, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 19, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":19}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(150, 'App\\User', 1, 'created', 'App\\Models\\Student', 20, '[]', '{\"reg_no\":\"20\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Dennis  \",\"middle_name\":\"\",\"last_name\":\"Mugendi\",\"date_of_birth\":\"2004-12-24\",\"gender\":\"MALE\",\"blood_group\":\"O+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":20}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(151, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 20, '[]', '{\"students_id\":20,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":20}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(152, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 20, '[]', '{\"students_id\":20,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST18\",\"father_last_name\":\"FATHER18\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo19\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":20}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(153, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 20, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":20}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(154, 'App\\User', 1, 'created', 'App\\Models\\Student', 21, '[]', '{\"reg_no\":\"21\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Dennis  \",\"middle_name\":\"\",\"last_name\":\"Mutwiri\",\"date_of_birth\":\"2004-12-25\",\"gender\":\"MALE\",\"blood_group\":\"B+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":21}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(155, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 21, '[]', '{\"students_id\":21,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":21}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(156, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 21, '[]', '{\"students_id\":21,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST19\",\"father_last_name\":\"FATHER19\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo20\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":21}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(157, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 21, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":21}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(158, 'App\\User', 1, 'created', 'App\\Models\\Student', 22, '[]', '{\"reg_no\":\"22\",\"reg_date\":\"2023-01-10\",\"university_reg\":\"\",\"faculty\":\"1\",\"semester\":\"1\",\"academic_status\":\"1\",\"batch\":\"1\",\"first_name\":\" Abadan   \",\"middle_name\":\"Mwenda\",\"last_name\":\"Miriti\",\"date_of_birth\":\"2004-12-26\",\"gender\":\"MALE\",\"blood_group\":\"B+\",\"religion\":\"christian\",\"caste\":\"\",\"nationality\":\"Kenyan\",\"national_id_type\":\"\",\"national_id_number\":\"\",\"extra_id_card_type\":\"\",\"extra_id_card_number\":\"\",\"mother_tongue\":\"\",\"email\":\"student4@gmail.com\",\"extra_info\":\"\",\"created_by\":1,\"id\":22}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(159, 'App\\User', 1, 'created', 'App\\Models\\Addressinfo', 22, '[]', '{\"students_id\":22,\"home_phone\":\"\",\"mobile_1\":\"\",\"mobile_2\":\"\",\"address\":\"60200\",\"state\":\"meru\",\"country\":\"kenya\",\"temp_address\":\"\",\"temp_state\":\"\",\"temp_country\":\"\",\"created_by\":1,\"id\":22}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(160, 'App\\User', 1, 'created', 'App\\Models\\ParentDetail', 22, '[]', '{\"students_id\":22,\"grandfather_first_name\":\"\",\"grandfather_middle_name\":\"\",\"grandfather_last_name\":\"\",\"father_first_name\":\"\",\"father_middle_name\":\"TEST20\",\"father_last_name\":\"FATHER20\",\"father_eligibility\":\"\",\"father_occupation\":\"\",\"father_office\":\"\",\"father_office_number\":\"\",\"father_residence_number\":\"\",\"father_mobile_1\":\"\",\"father_mobile_2\":\"\",\"father_email\":\"\",\"mother_first_name\":\"demo21\",\"mother_middle_name\":\"TEST\",\"mother_last_name\":\"MOTHER\",\"mother_eligibility\":\"\",\"mother_occupation\":\"\",\"mother_office\":\"\",\"mother_office_number\":\"\",\"mother_residence_number\":\"\",\"mother_mobile_1\":\"\",\"mother_mobile_2\":\"\",\"mother_email\":\"\",\"created_by\":1,\"id\":22}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(161, 'App\\User', 1, 'created', 'App\\Models\\GuardianDetail', 22, '[]', '{\"guardian_first_name\":\"\",\"guardian_middle_name\":\"\",\"guardian_last_name\":\"\",\"guardian_eligibility\":\"\",\"guardian_occupation\":\"\",\"guardian_office\":\"\",\"guardian_office_number\":\"\",\"guardian_residence_number\":\"\",\"guardian_mobile_1\":\"\",\"guardian_mobile_2\":\"\",\"guardian_email\":\"\",\"guardian_relation\":\"\",\"guardian_address\":\"\",\"created_by\":1,\"id\":22}', 'http://127.0.0.1:8000/student/import', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:25:19', '2023-05-01 22:25:19'),
(162, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 6, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":6}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(163, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 7, '[]', '{\"students_id\":2,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":7}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(164, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 8, '[]', '{\"students_id\":3,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":8}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(165, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 9, '[]', '{\"students_id\":4,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":9}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(166, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 10, '[]', '{\"students_id\":5,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":10}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(167, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 11, '[]', '{\"students_id\":6,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":11}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(168, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 12, '[]', '{\"students_id\":7,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":12}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(169, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 13, '[]', '{\"students_id\":8,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":13}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(170, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 14, '[]', '{\"students_id\":9,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":14}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(171, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 15, '[]', '{\"students_id\":10,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":15}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(172, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 16, '[]', '{\"students_id\":11,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":16}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(173, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 17, '[]', '{\"students_id\":12,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":17}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(174, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 18, '[]', '{\"students_id\":13,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":18}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(175, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 19, '[]', '{\"students_id\":14,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":19}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(176, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 20, '[]', '{\"students_id\":15,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":20}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(177, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 21, '[]', '{\"students_id\":16,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":21}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(178, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 22, '[]', '{\"students_id\":17,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":22}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(179, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 23, '[]', '{\"students_id\":18,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":23}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:07', '2023-05-01 22:27:07'),
(180, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 24, '[]', '{\"students_id\":19,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":24}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:08', '2023-05-01 22:27:08'),
(181, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 25, '[]', '{\"students_id\":20,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":25}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:08', '2023-05-01 22:27:08'),
(182, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 26, '[]', '{\"students_id\":21,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":26}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:08', '2023-05-01 22:27:08'),
(183, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 27, '[]', '{\"students_id\":22,\"semester\":1,\"fee_head\":\"3\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":27}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:27:08', '2023-05-01 22:27:08'),
(184, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 28, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":28}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(185, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 29, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":29}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(186, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 30, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":30}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(187, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 31, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":31}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(188, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 32, '[]', '{\"students_id\":1,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":32}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(189, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 33, '[]', '{\"students_id\":2,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":33}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(190, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 34, '[]', '{\"students_id\":2,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":34}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(191, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 35, '[]', '{\"students_id\":2,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":35}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(192, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 36, '[]', '{\"students_id\":2,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":36}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(193, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 37, '[]', '{\"students_id\":2,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":37}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(194, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 38, '[]', '{\"students_id\":3,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":38}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(195, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 39, '[]', '{\"students_id\":3,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":39}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(196, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 40, '[]', '{\"students_id\":3,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":40}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(197, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 41, '[]', '{\"students_id\":3,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":41}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(198, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 42, '[]', '{\"students_id\":3,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":42}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(199, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 43, '[]', '{\"students_id\":4,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":43}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(200, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 44, '[]', '{\"students_id\":4,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":44}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(201, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 45, '[]', '{\"students_id\":4,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":45}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(202, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 46, '[]', '{\"students_id\":4,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":46}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(203, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 47, '[]', '{\"students_id\":4,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":47}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(204, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 48, '[]', '{\"students_id\":5,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":48}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(205, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 49, '[]', '{\"students_id\":5,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":49}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(206, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 50, '[]', '{\"students_id\":5,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":50}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(207, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 51, '[]', '{\"students_id\":5,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":51}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(208, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 52, '[]', '{\"students_id\":5,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":52}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(209, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 53, '[]', '{\"students_id\":6,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":53}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(210, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 54, '[]', '{\"students_id\":6,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":54}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(211, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 55, '[]', '{\"students_id\":6,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":55}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(212, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 56, '[]', '{\"students_id\":6,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":56}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(213, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 57, '[]', '{\"students_id\":6,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":57}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(214, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 58, '[]', '{\"students_id\":7,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":58}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(215, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 59, '[]', '{\"students_id\":7,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":59}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(216, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 60, '[]', '{\"students_id\":7,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":60}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(217, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 61, '[]', '{\"students_id\":7,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":61}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(218, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 62, '[]', '{\"students_id\":7,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":62}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(219, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 63, '[]', '{\"students_id\":8,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":63}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(220, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 64, '[]', '{\"students_id\":8,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":64}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(221, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 65, '[]', '{\"students_id\":8,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":65}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(222, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 66, '[]', '{\"students_id\":8,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":66}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(223, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 67, '[]', '{\"students_id\":8,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":67}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(224, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 68, '[]', '{\"students_id\":9,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":68}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(225, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 69, '[]', '{\"students_id\":9,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":69}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(226, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 70, '[]', '{\"students_id\":9,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":70}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(227, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 71, '[]', '{\"students_id\":9,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":71}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(228, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 72, '[]', '{\"students_id\":9,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":72}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(229, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 73, '[]', '{\"students_id\":10,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":73}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(230, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 74, '[]', '{\"students_id\":10,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":74}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(231, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 75, '[]', '{\"students_id\":10,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":75}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:23', '2023-05-01 22:29:23'),
(232, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 76, '[]', '{\"students_id\":10,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":76}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(233, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 77, '[]', '{\"students_id\":10,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":77}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(234, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 78, '[]', '{\"students_id\":11,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":78}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(235, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 79, '[]', '{\"students_id\":11,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":79}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(236, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 80, '[]', '{\"students_id\":11,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":80}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(237, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 81, '[]', '{\"students_id\":11,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":81}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(238, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 82, '[]', '{\"students_id\":11,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":82}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(239, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 83, '[]', '{\"students_id\":12,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":83}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(240, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 84, '[]', '{\"students_id\":12,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":84}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(241, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 85, '[]', '{\"students_id\":12,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":85}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(242, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 86, '[]', '{\"students_id\":12,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":86}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(243, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 87, '[]', '{\"students_id\":12,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":87}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(244, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 88, '[]', '{\"students_id\":13,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":88}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(245, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 89, '[]', '{\"students_id\":13,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":89}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(246, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 90, '[]', '{\"students_id\":13,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":90}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(247, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 91, '[]', '{\"students_id\":13,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":91}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(248, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 92, '[]', '{\"students_id\":13,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":92}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(249, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 93, '[]', '{\"students_id\":14,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":93}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(250, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 94, '[]', '{\"students_id\":14,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":94}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(251, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 95, '[]', '{\"students_id\":14,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":95}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(252, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 96, '[]', '{\"students_id\":14,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":96}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(253, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 97, '[]', '{\"students_id\":14,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":97}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(254, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 98, '[]', '{\"students_id\":15,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":98}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(255, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 99, '[]', '{\"students_id\":15,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":99}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(256, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 100, '[]', '{\"students_id\":15,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":100}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(257, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 101, '[]', '{\"students_id\":15,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":101}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(258, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 102, '[]', '{\"students_id\":15,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":102}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(259, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 103, '[]', '{\"students_id\":16,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":103}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(260, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 104, '[]', '{\"students_id\":16,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":104}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(261, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 105, '[]', '{\"students_id\":16,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":105}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(262, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 106, '[]', '{\"students_id\":16,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":106}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(263, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 107, '[]', '{\"students_id\":16,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":107}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(264, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 108, '[]', '{\"students_id\":17,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":108}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(265, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 109, '[]', '{\"students_id\":17,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":109}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(266, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 110, '[]', '{\"students_id\":17,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":110}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(267, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 111, '[]', '{\"students_id\":17,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":111}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(268, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 112, '[]', '{\"students_id\":17,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":112}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(269, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 113, '[]', '{\"students_id\":18,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":113}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(270, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 114, '[]', '{\"students_id\":18,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":114}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(271, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 115, '[]', '{\"students_id\":18,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":115}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(272, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 116, '[]', '{\"students_id\":18,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":116}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(273, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 117, '[]', '{\"students_id\":18,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":117}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(274, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 118, '[]', '{\"students_id\":19,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":118}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(275, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 119, '[]', '{\"students_id\":19,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":119}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(276, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 120, '[]', '{\"students_id\":19,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":120}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(277, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 121, '[]', '{\"students_id\":19,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":121}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(278, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 122, '[]', '{\"students_id\":19,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":122}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(279, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 123, '[]', '{\"students_id\":20,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":123}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(280, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 124, '[]', '{\"students_id\":20,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":124}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(281, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 125, '[]', '{\"students_id\":20,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":125}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(282, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 126, '[]', '{\"students_id\":20,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":126}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(283, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 127, '[]', '{\"students_id\":20,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":127}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(284, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 128, '[]', '{\"students_id\":21,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":128}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(285, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 129, '[]', '{\"students_id\":21,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":129}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(286, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 130, '[]', '{\"students_id\":21,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":130}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(287, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 131, '[]', '{\"students_id\":21,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":131}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(288, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 132, '[]', '{\"students_id\":21,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":132}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(289, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 133, '[]', '{\"students_id\":22,\"semester\":1,\"fee_head\":\"1\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":133}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(290, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 134, '[]', '{\"students_id\":22,\"semester\":1,\"fee_head\":\"5\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":134}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(291, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 135, '[]', '{\"students_id\":22,\"semester\":1,\"fee_head\":\"8\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":135}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(292, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 136, '[]', '{\"students_id\":22,\"semester\":1,\"fee_head\":\"4\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":136}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(293, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 137, '[]', '{\"students_id\":22,\"semester\":1,\"fee_head\":\"2\",\"fee_due_date\":\"2023-03-29\",\"fee_amount\":\"200\",\"created_by\":1,\"id\":137}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:29:24', '2023-05-01 22:29:24'),
(294, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 1, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":4,\"date\":\"2023-02-01\",\"paid_amount\":1250,\"payment_mode\":\"Bank\",\"note\":\"Quick Receive : \",\"created_by\":1,\"id\":1}', 'http://127.0.0.1:8000/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:37:28', '2023-05-01 22:37:28'),
(295, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 2, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":2,\"date\":\"2023-02-01\",\"paid_amount\":10000,\"payment_mode\":\"Bank\",\"note\":\"Quick Receive : \",\"created_by\":1,\"id\":2}', 'http://127.0.0.1:8000/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:37:28', '2023-05-01 22:37:28'),
(296, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 3, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":1,\"date\":\"2023-02-01\",\"paid_amount\":1250,\"payment_mode\":\"Bank\",\"note\":\"Quick Receive\",\"created_by\":1,\"id\":3}', 'http://127.0.0.1:8000/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:37:28', '2023-05-01 22:37:28'),
(297, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 4, '[]', '{\"students_id\":\"5\",\"fee_masters_id\":10,\"date\":\"2023-01-10\",\"paid_amount\":1400,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive\",\"created_by\":1,\"id\":4}', 'http://127.0.0.1:8000/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:39:39', '2023-05-01 22:39:39'),
(298, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 5, '[]', '{\"students_id\":\"15\",\"fee_masters_id\":20,\"date\":\"2023-03-07\",\"paid_amount\":10000,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":1,\"id\":5}', 'http://127.0.0.1:8000/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:40:27', '2023-05-01 22:40:27'),
(299, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 6, '[]', '{\"students_id\":\"15\",\"fee_masters_id\":98,\"date\":\"2023-03-07\",\"paid_amount\":200,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":1,\"id\":6}', 'http://127.0.0.1:8000/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:40:27', '2023-05-01 22:40:27'),
(300, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 7, '[]', '{\"students_id\":\"15\",\"fee_masters_id\":99,\"date\":\"2023-03-07\",\"paid_amount\":1250,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":1,\"id\":7}', 'http://127.0.0.1:8000/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:40:27', '2023-05-01 22:40:27'),
(301, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 8, '[]', '{\"students_id\":\"15\",\"fee_masters_id\":100,\"date\":\"2023-03-07\",\"paid_amount\":995,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":1,\"id\":8}', 'http://127.0.0.1:8000/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:40:27', '2023-05-01 22:40:27'),
(302, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 9, '[]', '{\"students_id\":\"15\",\"fee_masters_id\":101,\"date\":\"2023-03-07\",\"paid_amount\":1055,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive\",\"created_by\":1,\"id\":9}', 'http://127.0.0.1:8000/account/fees/quick-receive/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:40:27', '2023-05-01 22:40:27'),
(303, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 10, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":1,\"date\":\"2023-03-08\",\"paid_amount\":8750,\"payment_mode\":\"Cash\",\"note\":\"over\",\"created_by\":1,\"id\":10}', 'http://127.0.0.1:8000/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:44:43', '2023-05-01 22:44:43'),
(304, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 11, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":3,\"date\":\"2023-03-08\",\"paid_amount\":995,\"payment_mode\":\"Cash\",\"note\":\"over\",\"created_by\":1,\"id\":11}', 'http://127.0.0.1:8000/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:44:43', '2023-05-01 22:44:43'),
(305, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 12, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":5,\"date\":\"2023-03-08\",\"paid_amount\":2500,\"payment_mode\":\"Cash\",\"note\":\"over\",\"created_by\":1,\"id\":12}', 'http://127.0.0.1:8000/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:44:43', '2023-05-01 22:44:43'),
(306, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 13, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":6,\"date\":\"2023-03-08\",\"paid_amount\":10000,\"payment_mode\":\"Cash\",\"note\":\"over\",\"created_by\":1,\"id\":13}', 'http://127.0.0.1:8000/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:44:43', '2023-05-01 22:44:43'),
(307, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 14, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":28,\"date\":\"2023-03-08\",\"paid_amount\":200,\"payment_mode\":\"Cash\",\"note\":\"over\",\"created_by\":1,\"id\":14}', 'http://127.0.0.1:8000/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:44:43', '2023-05-01 22:44:43'),
(308, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 15, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":29,\"date\":\"2023-03-08\",\"paid_amount\":1250,\"payment_mode\":\"Cash\",\"note\":\"over\",\"created_by\":1,\"id\":15}', 'http://127.0.0.1:8000/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:44:43', '2023-05-01 22:44:43'),
(309, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 16, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":30,\"date\":\"2023-03-08\",\"paid_amount\":995,\"payment_mode\":\"Cash\",\"note\":\"over\",\"created_by\":1,\"id\":16}', 'http://127.0.0.1:8000/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:44:43', '2023-05-01 22:44:43'),
(310, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 17, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":31,\"date\":\"2023-03-08\",\"paid_amount\":2500,\"payment_mode\":\"Cash\",\"note\":\"over\",\"created_by\":1,\"id\":17}', 'http://127.0.0.1:8000/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:44:43', '2023-05-01 22:44:43'),
(311, 'App\\User', 1, 'created', 'App\\Models\\FeeCollection', 18, '[]', '{\"students_id\":\"1\",\"fee_masters_id\":32,\"date\":\"2023-03-08\",\"paid_amount\":200,\"payment_mode\":\"Cash\",\"note\":\"over\",\"created_by\":1,\"id\":18}', 'http://127.0.0.1:8000/account/fees/due/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:44:43', '2023-05-01 22:44:43'),
(312, 'App\\User', 1, 'updated', 'App\\Models\\GeneralSetting', 1, '{\"institute\":\"Unlimited EduFirm\",\"copyright\":null,\"address\":null,\"phone\":null,\"email\":null,\"print_header\":null,\"print_footer\":null,\"time_zones_id\":null}', '{\"institute\":\"Erp System\",\"copyright\":\"Rising to your tech challanges\",\"address\":\"60200, Meru\",\"phone\":\"0720287104\",\"email\":\"ims@pronic.co.ke\",\"print_header\":\"<p><br><\\/p><p><br><\\/p><h1>ERP MANAGEMENT SYSTEM<\\/h1>\",\"print_footer\":\"<h2>All rights reserved @ Pronic\\u00a0<\\/h2>\",\"time_zones_id\":\"44\"}', 'http://127.0.0.1:8000/setting/general/1/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:57:34', '2023-05-01 22:57:34'),
(313, 'App\\User', 1, 'updated', 'App\\Models\\SmsSetting', 23, '{\"config\":\"{\\\"AuthToken\\\":\\\"\\\"}\"}', '{\"config\":\"[]\"}', 'http://127.0.0.1:8000/setting/sms/23/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:58:36', '2023-05-01 22:58:36'),
(314, 'App\\User', 1, 'updated', 'App\\Models\\SmsSetting', 21, '{\"config\":\"{\\\"API_KEY\\\":\\\"\\\",\\\"UserName\\\":\\\"\\\"}\"}', '{\"config\":\"[]\"}', 'http://127.0.0.1:8000/setting/sms/21/update', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 22:58:43', '2023-05-01 22:58:43'),
(315, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"last_login_at\":\"2023-05-01 20:35:51\"}', '{\"last_login_at\":\"2023-05-02 02:06:08\"}', 'http://192.168.88.205/EduFirm/public/login', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:06:08', '2023-05-01 23:06:08'),
(316, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"password\":\"$2y$10$PSP4SHR2oThJwn2x0wQQTuYKQITNRt4snvYkZNL0fz8DpuEMdyazC\"}', '{\"password\":\"$2y$10$akpXbC0StJhq1kzBu7CtNeX0V9gjX9\\/My5GYRSmLejiQnU6iqwz1O\"}', 'http://192.168.88.205/EduFirm/public/login', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:06:08', '2023-05-01 23:06:08'),
(317, 'App\\User', 2, 'updated', 'App\\Models\\FeeMaster', 27, '{\"last_updated_by\":null,\"fee_due_date\":\"2023-03-29 00:00:00\"}', '{\"last_updated_by\":2,\"fee_due_date\":\"2023-03-29\"}', 'http://192.168.88.205/EduFirm/public/account/fees/master/27/update', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:08:21', '2023-05-01 23:08:21'),
(318, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 19, '[]', '{\"students_id\":\"12\",\"fee_masters_id\":17,\"date\":\"2023-05-01\",\"paid_amount\":10000,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":19}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:11:07', '2023-05-01 23:11:07'),
(319, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 20, '[]', '{\"students_id\":\"12\",\"fee_masters_id\":83,\"date\":\"2023-05-01\",\"paid_amount\":200,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":20}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:11:07', '2023-05-01 23:11:07'),
(320, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 21, '[]', '{\"students_id\":\"12\",\"fee_masters_id\":84,\"date\":\"2023-05-01\",\"paid_amount\":1250,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":21}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:11:07', '2023-05-01 23:11:07'),
(321, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 22, '[]', '{\"students_id\":\"12\",\"fee_masters_id\":85,\"date\":\"2023-05-01\",\"paid_amount\":995,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":22}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:11:07', '2023-05-01 23:11:07'),
(322, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 23, '[]', '{\"students_id\":\"12\",\"fee_masters_id\":86,\"date\":\"2023-05-01\",\"paid_amount\":2500,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":23}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:11:07', '2023-05-01 23:11:07'),
(323, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 24, '[]', '{\"students_id\":\"12\",\"fee_masters_id\":87,\"date\":\"2023-05-01\",\"paid_amount\":200,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":24}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:11:07', '2023-05-01 23:11:07'),
(324, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 25, '[]', '{\"students_id\":\"13\",\"fee_masters_id\":18,\"date\":\"2023-05-01\",\"paid_amount\":10000,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":25}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:12:37', '2023-05-01 23:12:37'),
(325, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 26, '[]', '{\"students_id\":\"13\",\"fee_masters_id\":88,\"date\":\"2023-05-01\",\"paid_amount\":200,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":26}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:12:37', '2023-05-01 23:12:37'),
(326, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 27, '[]', '{\"students_id\":\"13\",\"fee_masters_id\":89,\"date\":\"2023-05-01\",\"paid_amount\":1250,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":27}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:12:37', '2023-05-01 23:12:37'),
(327, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 28, '[]', '{\"students_id\":\"13\",\"fee_masters_id\":90,\"date\":\"2023-05-01\",\"paid_amount\":995,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":28}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:12:37', '2023-05-01 23:12:37'),
(328, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 29, '[]', '{\"students_id\":\"13\",\"fee_masters_id\":91,\"date\":\"2023-05-01\",\"paid_amount\":2500,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":29}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:12:37', '2023-05-01 23:12:37'),
(329, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 30, '[]', '{\"students_id\":\"13\",\"fee_masters_id\":92,\"date\":\"2023-05-01\",\"paid_amount\":189,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive\",\"created_by\":2,\"id\":30}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:12:37', '2023-05-01 23:12:37'),
(330, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 31, '[]', '{\"students_id\":\"5\",\"fee_masters_id\":10,\"date\":\"2023-03-01\",\"paid_amount\":8600,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":31}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:13:09', '2023-05-01 23:13:09'),
(331, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 32, '[]', '{\"students_id\":\"5\",\"fee_masters_id\":48,\"date\":\"2023-03-01\",\"paid_amount\":200,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":32}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:13:09', '2023-05-01 23:13:09'),
(332, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 33, '[]', '{\"students_id\":\"5\",\"fee_masters_id\":49,\"date\":\"2023-03-01\",\"paid_amount\":1250,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":33}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:13:09', '2023-05-01 23:13:09'),
(333, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 34, '[]', '{\"students_id\":\"5\",\"fee_masters_id\":50,\"date\":\"2023-03-01\",\"paid_amount\":995,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":34}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:13:09', '2023-05-01 23:13:09'),
(334, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 35, '[]', '{\"students_id\":\"5\",\"fee_masters_id\":51,\"date\":\"2023-03-01\",\"paid_amount\":955,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive\",\"created_by\":2,\"id\":35}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:13:09', '2023-05-01 23:13:09'),
(335, 'App\\User', 1, 'updated', 'App\\Models\\Student', 1, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(336, 'App\\User', 1, 'updated', 'App\\Models\\Student', 2, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(337, 'App\\User', 1, 'updated', 'App\\Models\\Student', 3, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(338, 'App\\User', 1, 'updated', 'App\\Models\\Student', 4, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(339, 'App\\User', 1, 'updated', 'App\\Models\\Student', 5, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(340, 'App\\User', 1, 'updated', 'App\\Models\\Student', 6, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(341, 'App\\User', 1, 'updated', 'App\\Models\\Student', 7, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(342, 'App\\User', 1, 'updated', 'App\\Models\\Student', 8, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(343, 'App\\User', 1, 'updated', 'App\\Models\\Student', 9, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(344, 'App\\User', 1, 'updated', 'App\\Models\\Student', 10, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(345, 'App\\User', 1, 'updated', 'App\\Models\\Student', 11, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(346, 'App\\User', 1, 'updated', 'App\\Models\\Student', 12, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(347, 'App\\User', 1, 'updated', 'App\\Models\\Student', 13, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(348, 'App\\User', 1, 'updated', 'App\\Models\\Student', 14, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(349, 'App\\User', 1, 'updated', 'App\\Models\\Student', 15, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(350, 'App\\User', 1, 'updated', 'App\\Models\\Student', 16, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(351, 'App\\User', 1, 'updated', 'App\\Models\\Student', 17, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(352, 'App\\User', 1, 'updated', 'App\\Models\\Student', 18, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(353, 'App\\User', 1, 'updated', 'App\\Models\\Student', 19, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(354, 'App\\User', 1, 'updated', 'App\\Models\\Student', 20, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(355, 'App\\User', 1, 'updated', 'App\\Models\\Student', 21, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(356, 'App\\User', 1, 'updated', 'App\\Models\\Student', 22, '{\"academic_status\":1}', '{\"academic_status\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:13:25', '2023-05-01 23:13:25'),
(357, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 36, '[]', '{\"students_id\":\"4\",\"fee_masters_id\":9,\"date\":\"2023-02-15\",\"paid_amount\":10000,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":36}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:13:39', '2023-05-01 23:13:39'),
(358, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 37, '[]', '{\"students_id\":\"4\",\"fee_masters_id\":43,\"date\":\"2023-02-15\",\"paid_amount\":200,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":37}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:13:40', '2023-05-01 23:13:40'),
(359, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 38, '[]', '{\"students_id\":\"4\",\"fee_masters_id\":44,\"date\":\"2023-02-15\",\"paid_amount\":1250,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":38}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:13:40', '2023-05-01 23:13:40'),
(360, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 39, '[]', '{\"students_id\":\"4\",\"fee_masters_id\":45,\"date\":\"2023-02-15\",\"paid_amount\":772,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive\",\"created_by\":2,\"id\":39}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:13:40', '2023-05-01 23:13:40'),
(361, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 40, '[]', '{\"students_id\":\"13\",\"fee_masters_id\":92,\"date\":\"2023-01-12\",\"paid_amount\":11,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":40}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:14:06', '2023-05-01 23:14:06'),
(362, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 41, '[]', '{\"students_id\":\"16\",\"fee_masters_id\":21,\"date\":\"2023-02-09\",\"paid_amount\":10000,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":41}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:14:44', '2023-05-01 23:14:44'),
(363, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 42, '[]', '{\"students_id\":\"9\",\"fee_masters_id\":14,\"date\":\"2023-03-01\",\"paid_amount\":10000,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":42}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:15:35', '2023-05-01 23:15:35'),
(364, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 43, '[]', '{\"students_id\":\"9\",\"fee_masters_id\":68,\"date\":\"2023-03-01\",\"paid_amount\":200,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":43}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:15:35', '2023-05-01 23:15:35'),
(365, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 44, '[]', '{\"students_id\":\"9\",\"fee_masters_id\":69,\"date\":\"2023-03-01\",\"paid_amount\":1250,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":44}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:15:35', '2023-05-01 23:15:35'),
(366, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 45, '[]', '{\"students_id\":\"9\",\"fee_masters_id\":70,\"date\":\"2023-03-01\",\"paid_amount\":995,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":45}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:15:35', '2023-05-01 23:15:35'),
(367, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 46, '[]', '{\"students_id\":\"9\",\"fee_masters_id\":71,\"date\":\"2023-03-01\",\"paid_amount\":2500,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive : \",\"created_by\":2,\"id\":46}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:15:35', '2023-05-01 23:15:35'),
(368, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 47, '[]', '{\"students_id\":\"9\",\"fee_masters_id\":72,\"date\":\"2023-03-01\",\"paid_amount\":55,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive\",\"created_by\":2,\"id\":47}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:15:35', '2023-05-01 23:15:35'),
(369, 'App\\User', 2, 'created', 'App\\Models\\FeeCollection', 48, '[]', '{\"students_id\":\"18\",\"fee_masters_id\":23,\"date\":\"2023-01-26\",\"paid_amount\":8000,\"payment_mode\":\"Cash\",\"note\":\"Quick Receive\",\"created_by\":2,\"id\":48}', 'http://192.168.88.205/EduFirm/public/account/fees/quick-receive/store', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-01 23:16:08', '2023-05-01 23:16:08'),
(370, 'App\\User', 1, 'updated', 'App\\Models\\Student', 1, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(371, 'App\\User', 1, 'updated', 'App\\Models\\Student', 2, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(372, 'App\\User', 1, 'updated', 'App\\Models\\Student', 3, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(373, 'App\\User', 1, 'updated', 'App\\Models\\Student', 4, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(374, 'App\\User', 1, 'updated', 'App\\Models\\Student', 5, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(375, 'App\\User', 1, 'updated', 'App\\Models\\Student', 6, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(376, 'App\\User', 1, 'updated', 'App\\Models\\Student', 7, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(377, 'App\\User', 1, 'updated', 'App\\Models\\Student', 8, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(378, 'App\\User', 1, 'updated', 'App\\Models\\Student', 9, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(379, 'App\\User', 1, 'updated', 'App\\Models\\Student', 10, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(380, 'App\\User', 1, 'updated', 'App\\Models\\Student', 11, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(381, 'App\\User', 1, 'updated', 'App\\Models\\Student', 12, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(382, 'App\\User', 1, 'updated', 'App\\Models\\Student', 13, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(383, 'App\\User', 1, 'updated', 'App\\Models\\Student', 14, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(384, 'App\\User', 1, 'updated', 'App\\Models\\Student', 15, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(385, 'App\\User', 1, 'updated', 'App\\Models\\Student', 16, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(386, 'App\\User', 1, 'updated', 'App\\Models\\Student', 17, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(387, 'App\\User', 1, 'updated', 'App\\Models\\Student', 18, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(388, 'App\\User', 1, 'updated', 'App\\Models\\Student', 19, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(389, 'App\\User', 1, 'updated', 'App\\Models\\Student', 20, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:53', '2023-05-01 23:20:53'),
(390, 'App\\User', 1, 'updated', 'App\\Models\\Student', 21, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:54', '2023-05-01 23:20:54'),
(391, 'App\\User', 1, 'updated', 'App\\Models\\Student', 22, '{\"semester\":1}', '{\"semester\":\"2\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:20:54', '2023-05-01 23:20:54'),
(392, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 138, '[]', '{\"students_id\":1,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":138}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(393, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 139, '[]', '{\"students_id\":1,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":139}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(394, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 140, '[]', '{\"students_id\":1,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":140}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(395, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 141, '[]', '{\"students_id\":1,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":141}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(396, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 142, '[]', '{\"students_id\":1,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":142}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(397, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 143, '[]', '{\"students_id\":2,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":143}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(398, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 144, '[]', '{\"students_id\":2,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":144}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(399, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 145, '[]', '{\"students_id\":2,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":145}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(400, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 146, '[]', '{\"students_id\":2,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":146}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(401, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 147, '[]', '{\"students_id\":2,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":147}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(402, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 148, '[]', '{\"students_id\":3,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":148}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(403, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 149, '[]', '{\"students_id\":3,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":149}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(404, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 150, '[]', '{\"students_id\":3,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":150}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(405, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 151, '[]', '{\"students_id\":3,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":151}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(406, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 152, '[]', '{\"students_id\":3,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":152}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(407, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 153, '[]', '{\"students_id\":4,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":153}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(408, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 154, '[]', '{\"students_id\":4,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":154}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(409, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 155, '[]', '{\"students_id\":4,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":155}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(410, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 156, '[]', '{\"students_id\":4,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":156}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(411, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 157, '[]', '{\"students_id\":4,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":157}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:01', '2023-05-01 23:24:01'),
(412, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 158, '[]', '{\"students_id\":5,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":158}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(413, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 159, '[]', '{\"students_id\":5,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":159}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(414, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 160, '[]', '{\"students_id\":5,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":160}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(415, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 161, '[]', '{\"students_id\":5,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":161}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(416, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 162, '[]', '{\"students_id\":5,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":162}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(417, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 163, '[]', '{\"students_id\":6,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":163}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(418, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 164, '[]', '{\"students_id\":6,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":164}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(419, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 165, '[]', '{\"students_id\":6,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":165}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(420, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 166, '[]', '{\"students_id\":6,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":166}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(421, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 167, '[]', '{\"students_id\":6,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":167}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(422, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 168, '[]', '{\"students_id\":7,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":168}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(423, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 169, '[]', '{\"students_id\":7,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":169}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(424, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 170, '[]', '{\"students_id\":7,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":170}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(425, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 171, '[]', '{\"students_id\":7,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":171}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(426, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 172, '[]', '{\"students_id\":7,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":172}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(427, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 173, '[]', '{\"students_id\":8,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":173}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(428, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 174, '[]', '{\"students_id\":8,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":174}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(429, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 175, '[]', '{\"students_id\":8,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":175}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(430, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 176, '[]', '{\"students_id\":8,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":176}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(431, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 177, '[]', '{\"students_id\":8,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":177}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(432, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 178, '[]', '{\"students_id\":9,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":178}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(433, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 179, '[]', '{\"students_id\":9,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":179}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(434, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 180, '[]', '{\"students_id\":9,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":180}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(435, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 181, '[]', '{\"students_id\":9,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":181}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(436, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 182, '[]', '{\"students_id\":9,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":182}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(437, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 183, '[]', '{\"students_id\":10,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":183}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(438, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 184, '[]', '{\"students_id\":10,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":184}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(439, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 185, '[]', '{\"students_id\":10,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":185}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(440, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 186, '[]', '{\"students_id\":10,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":186}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(441, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 187, '[]', '{\"students_id\":10,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":187}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(442, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 188, '[]', '{\"students_id\":11,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":188}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(443, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 189, '[]', '{\"students_id\":11,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":189}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(444, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 190, '[]', '{\"students_id\":11,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":190}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(445, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 191, '[]', '{\"students_id\":11,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":191}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(446, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 192, '[]', '{\"students_id\":11,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":192}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(447, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 193, '[]', '{\"students_id\":12,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":193}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(448, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 194, '[]', '{\"students_id\":12,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":194}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(449, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 195, '[]', '{\"students_id\":12,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":195}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(450, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 196, '[]', '{\"students_id\":12,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":196}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(451, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 197, '[]', '{\"students_id\":12,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":197}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(452, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 198, '[]', '{\"students_id\":13,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":198}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(453, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 199, '[]', '{\"students_id\":13,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":199}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(454, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 200, '[]', '{\"students_id\":13,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":200}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(455, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 201, '[]', '{\"students_id\":13,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":201}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(456, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 202, '[]', '{\"students_id\":13,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":202}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(457, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 203, '[]', '{\"students_id\":14,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":203}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(458, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 204, '[]', '{\"students_id\":14,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":204}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(459, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 205, '[]', '{\"students_id\":14,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":205}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(460, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 206, '[]', '{\"students_id\":14,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":206}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(461, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 207, '[]', '{\"students_id\":14,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":207}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(462, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 208, '[]', '{\"students_id\":15,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":208}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(463, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 209, '[]', '{\"students_id\":15,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":209}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(464, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 210, '[]', '{\"students_id\":15,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":210}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(465, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 211, '[]', '{\"students_id\":15,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":211}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(466, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 212, '[]', '{\"students_id\":15,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":212}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(467, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 213, '[]', '{\"students_id\":16,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":213}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(468, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 214, '[]', '{\"students_id\":16,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":214}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(469, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 215, '[]', '{\"students_id\":16,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":215}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:02', '2023-05-01 23:24:02'),
(470, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 216, '[]', '{\"students_id\":16,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":216}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(471, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 217, '[]', '{\"students_id\":16,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":217}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(472, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 218, '[]', '{\"students_id\":17,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":218}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(473, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 219, '[]', '{\"students_id\":17,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":219}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(474, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 220, '[]', '{\"students_id\":17,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":220}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(475, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 221, '[]', '{\"students_id\":17,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":221}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(476, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 222, '[]', '{\"students_id\":17,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":222}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(477, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 223, '[]', '{\"students_id\":18,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":223}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(478, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 224, '[]', '{\"students_id\":18,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":224}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(479, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 225, '[]', '{\"students_id\":18,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":225}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(480, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 226, '[]', '{\"students_id\":18,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":226}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(481, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 227, '[]', '{\"students_id\":18,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":227}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(482, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 228, '[]', '{\"students_id\":19,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":228}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(483, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 229, '[]', '{\"students_id\":19,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":229}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(484, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 230, '[]', '{\"students_id\":19,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":230}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(485, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 231, '[]', '{\"students_id\":19,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":231}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(486, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 232, '[]', '{\"students_id\":19,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":232}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(487, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 233, '[]', '{\"students_id\":20,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":233}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(488, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 234, '[]', '{\"students_id\":20,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":234}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(489, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 235, '[]', '{\"students_id\":20,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":235}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(490, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 236, '[]', '{\"students_id\":20,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":236}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(491, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 237, '[]', '{\"students_id\":20,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":237}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(492, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 238, '[]', '{\"students_id\":21,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":238}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(493, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 239, '[]', '{\"students_id\":21,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":239}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(494, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 240, '[]', '{\"students_id\":21,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":240}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(495, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 241, '[]', '{\"students_id\":21,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":241}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(496, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 242, '[]', '{\"students_id\":21,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":242}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(497, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 243, '[]', '{\"students_id\":22,\"semester\":2,\"fee_head\":\"3\",\"fee_due_date\":\"2023-05-03\",\"fee_amount\":\"10000\",\"created_by\":1,\"id\":243}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(498, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 244, '[]', '{\"students_id\":22,\"semester\":2,\"fee_head\":\"5\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"1250\",\"created_by\":1,\"id\":244}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(499, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 245, '[]', '{\"students_id\":22,\"semester\":2,\"fee_head\":\"8\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"995\",\"created_by\":1,\"id\":245}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(500, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 246, '[]', '{\"students_id\":22,\"semester\":2,\"fee_head\":\"4\",\"fee_due_date\":\"2023-05-05\",\"fee_amount\":\"2500\",\"created_by\":1,\"id\":246}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(501, 'App\\User', 1, 'created', 'App\\Models\\FeeMaster', 247, '[]', '{\"students_id\":22,\"semester\":2,\"fee_head\":\"7\",\"fee_due_date\":\"2023-05-31\",\"fee_amount\":\"655\",\"created_by\":1,\"id\":247}', 'http://127.0.0.1:8000/account/fees/master/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:24:03', '2023-05-01 23:24:03'),
(502, 'App\\User', 1, 'created', 'App\\Models\\Faculty', 2, '[]', '{\"faculty\":\"FORM2\",\"faculty_code\":\"F2EAST\",\"sorting\":\"2\",\"created_by\":1,\"id\":2}', 'http://127.0.0.1:8000/faculty/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:27:05', '2023-05-01 23:27:05'),
(503, 'App\\User', 1, 'created', 'App\\Models\\Exam', 1, '[]', '{\"title\":\"CAT\",\"created_by\":1,\"id\":1}', 'http://127.0.0.1:8000/exam/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:31:37', '2023-05-01 23:31:37'),
(504, 'App\\User', 1, 'created', 'App\\Models\\Exam', 2, '[]', '{\"title\":\"END TERM\",\"created_by\":1,\"id\":2}', 'http://127.0.0.1:8000/exam/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:32:08', '2023-05-01 23:32:08'),
(505, 'App\\User', 1, 'updated', 'App\\Models\\Student', 1, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(506, 'App\\User', 1, 'updated', 'App\\Models\\Student', 2, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(507, 'App\\User', 1, 'updated', 'App\\Models\\Student', 3, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(508, 'App\\User', 1, 'updated', 'App\\Models\\Student', 4, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(509, 'App\\User', 1, 'updated', 'App\\Models\\Student', 5, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(510, 'App\\User', 1, 'updated', 'App\\Models\\Student', 6, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(511, 'App\\User', 1, 'updated', 'App\\Models\\Student', 7, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(512, 'App\\User', 1, 'updated', 'App\\Models\\Student', 8, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(513, 'App\\User', 1, 'updated', 'App\\Models\\Student', 9, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(514, 'App\\User', 1, 'updated', 'App\\Models\\Student', 10, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(515, 'App\\User', 1, 'updated', 'App\\Models\\Student', 11, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(516, 'App\\User', 1, 'updated', 'App\\Models\\Student', 12, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(517, 'App\\User', 1, 'updated', 'App\\Models\\Student', 13, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(518, 'App\\User', 1, 'updated', 'App\\Models\\Student', 14, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(519, 'App\\User', 1, 'updated', 'App\\Models\\Student', 15, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(520, 'App\\User', 1, 'updated', 'App\\Models\\Student', 16, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(521, 'App\\User', 1, 'updated', 'App\\Models\\Student', 17, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(522, 'App\\User', 1, 'updated', 'App\\Models\\Student', 18, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(523, 'App\\User', 1, 'updated', 'App\\Models\\Student', 19, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(524, 'App\\User', 1, 'updated', 'App\\Models\\Student', 20, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(525, 'App\\User', 1, 'updated', 'App\\Models\\Student', 21, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(526, 'App\\User', 1, 'updated', 'App\\Models\\Student', 22, '{\"semester\":2,\"academic_status\":2}', '{\"semester\":\"1\",\"academic_status\":\"4\"}', 'http://127.0.0.1:8000/student/transfering', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:42:13', '2023-05-01 23:42:13'),
(527, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 1, '[]', '{\"years_id\":\"5\",\"months_id\":\"2\",\"exams_id\":\"1\",\"faculty_id\":\"1\",\"semesters_id\":\"1\",\"subjects_id\":\"1\",\"date\":\"2023-01-31\",\"start_time\":\"11:46\",\"end_time\":\"00:46\",\"full_mark_theory\":0,\"pass_mark_theory\":0,\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":1}', 'http://127.0.0.1:8000/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:52:58', '2023-05-01 23:52:58'),
(528, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 2, '[]', '{\"years_id\":\"5\",\"months_id\":\"2\",\"exams_id\":\"1\",\"faculty_id\":\"1\",\"semesters_id\":\"1\",\"subjects_id\":\"2\",\"date\":\"2023-02-02\",\"start_time\":\"01:48\",\"end_time\":\"14:46\",\"full_mark_theory\":0,\"pass_mark_theory\":0,\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":2,\"created_by\":1,\"id\":2}', 'http://127.0.0.1:8000/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:52:58', '2023-05-01 23:52:58'),
(529, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 3, '[]', '{\"years_id\":\"5\",\"months_id\":\"2\",\"exams_id\":\"1\",\"faculty_id\":\"1\",\"semesters_id\":\"1\",\"subjects_id\":\"3\",\"date\":\"2023-02-03\",\"start_time\":\"11:47\",\"end_time\":\"12:47\",\"full_mark_theory\":0,\"pass_mark_theory\":0,\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":3,\"created_by\":1,\"id\":3}', 'http://127.0.0.1:8000/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:52:58', '2023-05-01 23:52:58'),
(530, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 4, '[]', '{\"years_id\":\"5\",\"months_id\":\"2\",\"exams_id\":\"1\",\"faculty_id\":\"1\",\"semesters_id\":\"1\",\"subjects_id\":\"5\",\"date\":\"2023-02-06\",\"start_time\":\"00:47\",\"end_time\":\"00:48\",\"full_mark_theory\":0,\"pass_mark_theory\":0,\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":4,\"created_by\":1,\"id\":4}', 'http://127.0.0.1:8000/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:52:58', '2023-05-01 23:52:58'),
(531, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 5, '[]', '{\"years_id\":\"5\",\"months_id\":\"2\",\"exams_id\":\"1\",\"faculty_id\":\"1\",\"semesters_id\":\"1\",\"subjects_id\":\"6\",\"date\":\"2023-02-06\",\"start_time\":\"11:47\",\"end_time\":\"12:47\",\"full_mark_theory\":0,\"pass_mark_theory\":0,\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":5,\"created_by\":1,\"id\":5}', 'http://127.0.0.1:8000/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:52:58', '2023-05-01 23:52:58'),
(532, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 6, '[]', '{\"years_id\":\"5\",\"months_id\":\"2\",\"exams_id\":\"1\",\"faculty_id\":\"1\",\"semesters_id\":\"1\",\"subjects_id\":\"8\",\"date\":\"2023-02-08\",\"start_time\":\"11:47\",\"end_time\":\"14:49\",\"full_mark_theory\":0,\"pass_mark_theory\":0,\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":6,\"created_by\":1,\"id\":6}', 'http://127.0.0.1:8000/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:52:58', '2023-05-01 23:52:58'),
(533, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 7, '[]', '{\"years_id\":\"5\",\"months_id\":\"2\",\"exams_id\":\"1\",\"faculty_id\":\"1\",\"semesters_id\":\"1\",\"subjects_id\":\"9\",\"date\":\"2023-02-08\",\"start_time\":\"15:47\",\"end_time\":\"16:47\",\"full_mark_theory\":0,\"pass_mark_theory\":0,\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":7,\"created_by\":1,\"id\":7}', 'http://127.0.0.1:8000/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:52:58', '2023-05-01 23:52:58'),
(534, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 8, '[]', '{\"years_id\":\"5\",\"months_id\":\"2\",\"exams_id\":\"1\",\"faculty_id\":\"1\",\"semesters_id\":\"1\",\"subjects_id\":\"7\",\"date\":\"2023-02-09\",\"start_time\":\"11:48\",\"end_time\":\"12:48\",\"full_mark_theory\":0,\"pass_mark_theory\":0,\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":8,\"created_by\":1,\"id\":8}', 'http://127.0.0.1:8000/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:52:58', '2023-05-01 23:52:58'),
(535, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 9, '[]', '{\"years_id\":\"5\",\"months_id\":\"2\",\"exams_id\":\"1\",\"faculty_id\":\"1\",\"semesters_id\":\"1\",\"subjects_id\":\"11\",\"date\":\"2023-02-13\",\"start_time\":\"11:48\",\"end_time\":\"12:48\",\"full_mark_theory\":0,\"pass_mark_theory\":0,\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":9,\"created_by\":1,\"id\":9}', 'http://127.0.0.1:8000/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:52:58', '2023-05-01 23:52:58'),
(536, 'App\\User', 1, 'created', 'App\\Models\\ExamSchedule', 10, '[]', '{\"years_id\":\"5\",\"months_id\":\"2\",\"exams_id\":\"1\",\"faculty_id\":\"1\",\"semesters_id\":\"1\",\"subjects_id\":\"4\",\"date\":\"2023-02-14\",\"start_time\":\"12:48\",\"end_time\":\"13:48\",\"full_mark_theory\":0,\"pass_mark_theory\":0,\"full_mark_practical\":0,\"pass_mark_practical\":0,\"sorting_order\":10,\"created_by\":1,\"id\":10}', 'http://127.0.0.1:8000/exam/schedule/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:52:58', '2023-05-01 23:52:58'),
(537, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 1, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"1\",\"obtain_mark_theory\":\"50\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":1}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(538, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 2, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"10\",\"obtain_mark_theory\":\"30\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":2,\"created_by\":1,\"id\":2}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(539, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 3, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"11\",\"obtain_mark_theory\":\"15\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":3,\"created_by\":1,\"id\":3}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(540, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 4, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"12\",\"obtain_mark_theory\":\"40\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":4,\"created_by\":1,\"id\":4}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(541, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 5, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"13\",\"obtain_mark_theory\":\"28\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":5,\"created_by\":1,\"id\":5}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(542, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 6, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"14\",\"obtain_mark_theory\":\"34\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":6,\"created_by\":1,\"id\":6}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(543, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 7, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"15\",\"obtain_mark_theory\":\"36\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":7,\"created_by\":1,\"id\":7}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(544, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 8, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"16\",\"obtain_mark_theory\":\"26\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":8,\"created_by\":1,\"id\":8}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(545, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 9, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"17\",\"obtain_mark_theory\":\"38\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":9,\"created_by\":1,\"id\":9}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(546, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 10, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"18\",\"obtain_mark_theory\":\"42\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":10,\"created_by\":1,\"id\":10}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(547, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 11, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"19\",\"obtain_mark_theory\":\"62\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":11,\"created_by\":1,\"id\":11}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(548, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 12, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"2\",\"obtain_mark_theory\":\"19\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":12,\"created_by\":1,\"id\":12}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(549, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 13, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"20\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":13,\"created_by\":1,\"id\":13}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(550, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 14, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"21\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":14,\"created_by\":1,\"id\":14}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(551, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 15, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"22\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":15,\"created_by\":1,\"id\":15}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(552, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 16, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"3\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":16,\"created_by\":1,\"id\":16}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(553, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 17, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"4\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":17,\"created_by\":1,\"id\":17}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(554, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 18, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"5\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":18,\"created_by\":1,\"id\":18}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(555, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 19, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"6\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":19,\"created_by\":1,\"id\":19}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(556, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 20, '[]', '{\"exam_schedule_id\":1,\"students_id\":\"9\",\"obtain_mark_theory\":\"48\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":20,\"created_by\":1,\"id\":20}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:56:34', '2023-05-01 23:56:34'),
(557, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 21, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"1\",\"obtain_mark_theory\":\"26\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":21}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:41', '2023-05-01 23:58:41'),
(558, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 22, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"10\",\"obtain_mark_theory\":\"42\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":2,\"created_by\":1,\"id\":22}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:41', '2023-05-01 23:58:41'),
(559, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 23, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"11\",\"obtain_mark_theory\":\"35\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":3,\"created_by\":1,\"id\":23}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:41', '2023-05-01 23:58:41'),
(560, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 24, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"12\",\"obtain_mark_theory\":\"34\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":4,\"created_by\":1,\"id\":24}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:41', '2023-05-01 23:58:41'),
(561, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 25, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"13\",\"obtain_mark_theory\":\"15\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":5,\"created_by\":1,\"id\":25}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:41', '2023-05-01 23:58:41'),
(562, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 26, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"14\",\"obtain_mark_theory\":\"27\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":6,\"created_by\":1,\"id\":26}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:41', '2023-05-01 23:58:41'),
(563, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 27, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"15\",\"obtain_mark_theory\":\"62\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":7,\"created_by\":1,\"id\":27}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:41', '2023-05-01 23:58:41'),
(564, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 28, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"16\",\"obtain_mark_theory\":\"14\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":8,\"created_by\":1,\"id\":28}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:41', '2023-05-01 23:58:41'),
(565, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 29, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"17\",\"obtain_mark_theory\":\"35\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":9,\"created_by\":1,\"id\":29}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:41', '2023-05-01 23:58:41'),
(566, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 30, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"18\",\"obtain_mark_theory\":\"14\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":10,\"created_by\":1,\"id\":30}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:41', '2023-05-01 23:58:41'),
(567, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 31, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"19\",\"obtain_mark_theory\":\"28\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":11,\"created_by\":1,\"id\":31}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:41', '2023-05-01 23:58:41'),
(568, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 32, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"2\",\"obtain_mark_theory\":\"36\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":12,\"created_by\":1,\"id\":32}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:41', '2023-05-01 23:58:41'),
(569, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 33, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"20\",\"obtain_mark_theory\":\"32\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":13,\"created_by\":1,\"id\":33}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:41', '2023-05-01 23:58:41'),
(570, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 34, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"21\",\"obtain_mark_theory\":\"27\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":14,\"created_by\":1,\"id\":34}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:41', '2023-05-01 23:58:41'),
(571, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 35, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"22\",\"obtain_mark_theory\":\"23\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":15,\"created_by\":1,\"id\":35}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:41', '2023-05-01 23:58:41'),
(572, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 36, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"3\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":16,\"created_by\":1,\"id\":36}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:42', '2023-05-01 23:58:42'),
(573, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 37, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"4\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":17,\"created_by\":1,\"id\":37}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:42', '2023-05-01 23:58:42'),
(574, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 38, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"5\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":18,\"created_by\":1,\"id\":38}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:42', '2023-05-01 23:58:42'),
(575, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 39, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"6\",\"obtain_mark_theory\":\"22\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":19,\"created_by\":1,\"id\":39}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:42', '2023-05-01 23:58:42'),
(576, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 40, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"7\",\"obtain_mark_theory\":\"46\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":20,\"created_by\":1,\"id\":40}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:42', '2023-05-01 23:58:42'),
(577, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 41, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"8\",\"obtain_mark_theory\":\"39\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":21,\"created_by\":1,\"id\":41}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:42', '2023-05-01 23:58:42'),
(578, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 42, '[]', '{\"exam_schedule_id\":2,\"students_id\":\"9\",\"obtain_mark_theory\":\"24\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":22,\"created_by\":1,\"id\":42}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-01 23:58:42', '2023-05-01 23:58:42'),
(579, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 43, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"1\",\"obtain_mark_theory\":\"25\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":43}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(580, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 44, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"10\",\"obtain_mark_theory\":\"28\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":2,\"created_by\":1,\"id\":44}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(581, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 45, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"11\",\"obtain_mark_theory\":\"35\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":3,\"created_by\":1,\"id\":45}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(582, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 46, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"12\",\"obtain_mark_theory\":\"42\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":4,\"created_by\":1,\"id\":46}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(583, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 47, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"13\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":5,\"created_by\":1,\"id\":47}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(584, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 48, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"14\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":6,\"created_by\":1,\"id\":48}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(585, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 49, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"15\",\"obtain_mark_theory\":\"5\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":7,\"created_by\":1,\"id\":49}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(586, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 50, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"16\",\"obtain_mark_theory\":\"10\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":8,\"created_by\":1,\"id\":50}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(587, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 51, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"17\",\"obtain_mark_theory\":\"18\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":9,\"created_by\":1,\"id\":51}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(588, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 52, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"18\",\"obtain_mark_theory\":\"29\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":10,\"created_by\":1,\"id\":52}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(589, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 53, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"19\",\"obtain_mark_theory\":\"35\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":11,\"created_by\":1,\"id\":53}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(590, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 54, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"2\",\"obtain_mark_theory\":\"42\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":12,\"created_by\":1,\"id\":54}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(591, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 55, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"20\",\"obtain_mark_theory\":\"47\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":13,\"created_by\":1,\"id\":55}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(592, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 56, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"21\",\"obtain_mark_theory\":\"15\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":14,\"created_by\":1,\"id\":56}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(593, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 57, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"22\",\"obtain_mark_theory\":\"18\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":15,\"created_by\":1,\"id\":57}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(594, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 58, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"3\",\"obtain_mark_theory\":\"21\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":16,\"created_by\":1,\"id\":58}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(595, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 59, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"4\",\"obtain_mark_theory\":\"27\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":17,\"created_by\":1,\"id\":59}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(596, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 60, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"5\",\"obtain_mark_theory\":\"28\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":18,\"created_by\":1,\"id\":60}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(597, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 61, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"6\",\"obtain_mark_theory\":\"39\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":19,\"created_by\":1,\"id\":61}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(598, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 62, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"7\",\"obtain_mark_theory\":\"33\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":20,\"created_by\":1,\"id\":62}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(599, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 63, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"8\",\"obtain_mark_theory\":\"45\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":21,\"created_by\":1,\"id\":63}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(600, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 64, '[]', '{\"exam_schedule_id\":3,\"students_id\":\"9\",\"obtain_mark_theory\":\"48\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":22,\"created_by\":1,\"id\":64}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:00:11', '2023-05-02 00:00:11'),
(601, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 65, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"1\",\"obtain_mark_theory\":\"25\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":65}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:24', '2023-05-02 00:03:24');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(602, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 66, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"10\",\"obtain_mark_theory\":\"25\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":2,\"created_by\":1,\"id\":66}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:24', '2023-05-02 00:03:24'),
(603, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 67, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"11\",\"obtain_mark_theory\":\"14\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":3,\"created_by\":1,\"id\":67}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(604, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 68, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"12\",\"obtain_mark_theory\":\"19\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":4,\"created_by\":1,\"id\":68}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(605, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 69, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"13\",\"obtain_mark_theory\":\"25\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":5,\"created_by\":1,\"id\":69}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(606, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 70, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"14\",\"obtain_mark_theory\":\"20\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":6,\"created_by\":1,\"id\":70}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(607, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 71, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"15\",\"obtain_mark_theory\":\"26\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":7,\"created_by\":1,\"id\":71}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(608, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 72, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"16\",\"obtain_mark_theory\":\"43\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":8,\"created_by\":1,\"id\":72}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(609, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 73, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"17\",\"obtain_mark_theory\":\"28\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":9,\"created_by\":1,\"id\":73}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(610, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 74, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"18\",\"obtain_mark_theory\":\"36\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":10,\"created_by\":1,\"id\":74}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(611, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 75, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"19\",\"obtain_mark_theory\":\"28\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":11,\"created_by\":1,\"id\":75}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(612, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 76, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"2\",\"obtain_mark_theory\":\"19\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":12,\"created_by\":1,\"id\":76}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(613, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 77, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"20\",\"obtain_mark_theory\":\"36\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":13,\"created_by\":1,\"id\":77}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(614, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 78, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"21\",\"obtain_mark_theory\":\"34\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":14,\"created_by\":1,\"id\":78}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(615, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 79, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"22\",\"obtain_mark_theory\":\"39\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":15,\"created_by\":1,\"id\":79}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(616, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 80, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"3\",\"obtain_mark_theory\":\"45\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":16,\"created_by\":1,\"id\":80}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(617, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 81, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"4\",\"obtain_mark_theory\":\"19\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":17,\"created_by\":1,\"id\":81}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(618, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 82, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"5\",\"obtain_mark_theory\":\"22\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":18,\"created_by\":1,\"id\":82}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(619, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 83, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"6\",\"obtain_mark_theory\":\"27\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":19,\"created_by\":1,\"id\":83}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(620, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 84, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"7\",\"obtain_mark_theory\":\"33\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":20,\"created_by\":1,\"id\":84}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(621, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 85, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"8\",\"obtain_mark_theory\":\"42\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":21,\"created_by\":1,\"id\":85}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(622, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 86, '[]', '{\"exam_schedule_id\":10,\"students_id\":\"9\",\"obtain_mark_theory\":\"48\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":22,\"created_by\":1,\"id\":86}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:03:25', '2023-05-02 00:03:25'),
(623, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 87, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"1\",\"obtain_mark_theory\":\"22\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":1,\"created_by\":1,\"id\":87}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:25', '2023-05-02 00:06:25'),
(624, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 88, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"10\",\"obtain_mark_theory\":\"29\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":2,\"created_by\":1,\"id\":88}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:25', '2023-05-02 00:06:25'),
(625, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 89, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"11\",\"obtain_mark_theory\":\"45\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":3,\"created_by\":1,\"id\":89}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:25', '2023-05-02 00:06:25'),
(626, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 90, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"12\",\"obtain_mark_theory\":\"21\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":4,\"created_by\":1,\"id\":90}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:25', '2023-05-02 00:06:25'),
(627, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 91, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"13\",\"obtain_mark_theory\":\"27\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":5,\"created_by\":1,\"id\":91}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:25', '2023-05-02 00:06:25'),
(628, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 92, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"14\",\"obtain_mark_theory\":\"34\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":6,\"created_by\":1,\"id\":92}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:25', '2023-05-02 00:06:25'),
(629, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 93, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"15\",\"obtain_mark_theory\":\"36\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":7,\"created_by\":1,\"id\":93}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:25', '2023-05-02 00:06:25'),
(630, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 94, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"16\",\"obtain_mark_theory\":\"37\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":8,\"created_by\":1,\"id\":94}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:25', '2023-05-02 00:06:25'),
(631, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 95, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"17\",\"obtain_mark_theory\":\"38\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":9,\"created_by\":1,\"id\":95}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:25', '2023-05-02 00:06:25'),
(632, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 96, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"18\",\"obtain_mark_theory\":\"41\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":10,\"created_by\":1,\"id\":96}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:25', '2023-05-02 00:06:25'),
(633, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 97, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"19\",\"obtain_mark_theory\":\"25\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":11,\"created_by\":1,\"id\":97}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:26', '2023-05-02 00:06:26'),
(634, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 98, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"2\",\"obtain_mark_theory\":\"34\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":12,\"created_by\":1,\"id\":98}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:26', '2023-05-02 00:06:26'),
(635, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 99, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"20\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":13,\"created_by\":1,\"id\":99}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:26', '2023-05-02 00:06:26'),
(636, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 100, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"21\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":14,\"created_by\":1,\"id\":100}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:26', '2023-05-02 00:06:26'),
(637, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 101, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"22\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":15,\"created_by\":1,\"id\":101}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:26', '2023-05-02 00:06:26'),
(638, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 102, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"3\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":16,\"created_by\":1,\"id\":102}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:26', '2023-05-02 00:06:26'),
(639, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 103, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"4\",\"obtain_mark_theory\":0,\"obtain_mark_practical\":0,\"absent_theory\":1,\"absent_practical\":0,\"sorting_order\":17,\"created_by\":1,\"id\":103}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:26', '2023-05-02 00:06:26'),
(640, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 104, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"5\",\"obtain_mark_theory\":\"31\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":18,\"created_by\":1,\"id\":104}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:26', '2023-05-02 00:06:26'),
(641, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 105, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"6\",\"obtain_mark_theory\":\"44\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":19,\"created_by\":1,\"id\":105}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:26', '2023-05-02 00:06:26'),
(642, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 106, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"7\",\"obtain_mark_theory\":\"18\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":20,\"created_by\":1,\"id\":106}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:26', '2023-05-02 00:06:26'),
(643, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 107, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"8\",\"obtain_mark_theory\":\"47\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":21,\"created_by\":1,\"id\":107}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:26', '2023-05-02 00:06:26'),
(644, 'App\\User', 1, 'created', 'App\\Models\\ExamMarkLedger', 108, '[]', '{\"exam_schedule_id\":4,\"students_id\":\"9\",\"obtain_mark_theory\":\"47\",\"obtain_mark_practical\":0,\"absent_theory\":0,\"absent_practical\":0,\"sorting_order\":22,\"created_by\":1,\"id\":108}', 'http://127.0.0.1:8000/exam/mark-ledger/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:06:26', '2023-05-02 00:06:26'),
(645, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"last_login_at\":null,\"last_login_ip\":null}', '{\"last_login_at\":\"2023-05-02 03:15:21\",\"last_login_ip\":\"127.0.0.1\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:15:21', '2023-05-02 00:15:21'),
(646, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"password\":\"$2y$10$Lo5cRJ29eaRTpCvL1UiI6.gMLgh.Njth49qP0qkbY\\/OCPIa.lRdcW\"}', '{\"password\":\"$2y$10$V\\/J5v76iVFHMAPtQQ9ZS3uy0lBOluvJxLrSCkb7P.1e.UkHt1i9Uu\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:15:21', '2023-05-02 00:15:21'),
(647, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"last_login_at\":\"2023-05-02 03:15:21\"}', '{\"last_login_at\":\"2023-05-02 03:34:36\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36 Edg/112.0.1722.64', NULL, '2023-05-02 00:34:36', '2023-05-02 00:34:36'),
(648, 'App\\User', 3, 'updated', 'App\\User', 3, '{\"password\":\"$2y$10$V\\/J5v76iVFHMAPtQQ9ZS3uy0lBOluvJxLrSCkb7P.1e.UkHt1i9Uu\"}', '{\"password\":\"$2y$10$NQ.tMPjdqvLNf0EAFp4tgu.d9ZVztB5NbkAeJ.nOBkHxzgEBHeULW\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36 Edg/112.0.1722.64', NULL, '2023-05-02 00:34:36', '2023-05-02 00:34:36'),
(649, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"last_login_at\":\"2023-05-02 00:35:40\"}', '{\"last_login_at\":\"2023-05-02 03:35:20\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:35:20', '2023-05-02 00:35:20'),
(650, 'App\\User', 1, 'updated', 'App\\User', 1, '{\"password\":\"$2y$10$y5gjLIXrPUWtfVRC8eLlde9vSsilXZlI9UwP6ql8Z2bAN0G3KPnFW\"}', '{\"password\":\"$2y$10$Ku\\/hus7bk.6n93b77eSg3.BxlX\\/O6.yMQX8rH5rN8LDF8XWMSakLO\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', NULL, '2023-05-02 00:35:20', '2023-05-02 00:35:20'),
(651, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"last_login_at\":\"2023-05-02 02:06:08\"}', '{\"last_login_at\":\"2023-05-02 03:37:33\"}', 'http://192.168.88.205/EduFirm/public/login', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-02 00:37:33', '2023-05-02 00:37:33'),
(652, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"password\":\"$2y$10$akpXbC0StJhq1kzBu7CtNeX0V9gjX9\\/My5GYRSmLejiQnU6iqwz1O\"}', '{\"password\":\"$2y$10$QR.9IpeUjf4GYRY0FdEA8OFrTBalCs5kqmQeTBASD0jxk4tqkxVke\"}', 'http://192.168.88.205/EduFirm/public/login', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-02 00:37:34', '2023-05-02 00:37:34'),
(653, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"last_login_at\":\"2023-05-02 03:37:33\"}', '{\"last_login_at\":\"2023-05-02 15:15:58\"}', 'http://192.168.88.205/EduFirm/public/login', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-02 12:15:58', '2023-05-02 12:15:58'),
(654, 'App\\User', 2, 'updated', 'App\\User', 2, '{\"password\":\"$2y$10$QR.9IpeUjf4GYRY0FdEA8OFrTBalCs5kqmQeTBASD0jxk4tqkxVke\"}', '{\"password\":\"$2y$10$BiPAD7hk5Ps5PXGseHpTyu13dF70JGNdwEH.QlmhEnYApfgCTJo1i\"}', 'http://192.168.88.205/EduFirm/public/login', '192.168.88.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', NULL, '2023-05-02 12:15:58', '2023-05-02 12:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_transactions`
--

CREATE TABLE `bank_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `banks_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `dr_amt` int(11) NOT NULL DEFAULT 0,
  `cr_amt` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `rooms_id` int(10) UNSIGNED NOT NULL,
  `bed_number` int(11) NOT NULL,
  `bed_status` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bed_statuses`
--

CREATE TABLE `bed_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bed_statuses`
--

INSERT INTO `bed_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `display_class`, `status`) VALUES
(1, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Available', 'btn-success', 1),
(2, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Occupied', 'btn-primary', 1),
(3, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Damage', 'btn-danger', 1),
(4, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'UnderConstruction', 'btn-default', 1),
(5, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'UnderMaintinance', 'btn-default', 1),
(6, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'NeedMaintinance', 'btn-default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bonafide_certificates`
--

CREATE TABLE `bonafide_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `course` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `book_masters_id` int(10) UNSIGNED NOT NULL,
  `book_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_status` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `issued_on` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `return_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_masters`
--

CREATE TABLE `book_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `categories` int(10) UNSIGNED DEFAULT NULL,
  `isbn_number` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition_year` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `series` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rack_location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_pages` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_requests`
--

CREATE TABLE `book_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `book_masters_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_statuses`
--

CREATE TABLE `book_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_statuses`
--

INSERT INTO `book_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `display_class`, `status`) VALUES
(1, '2021-06-30 05:33:52', '2021-06-30 05:33:52', 1, NULL, 'Available', 'btn-success', 1),
(2, '2021-06-30 05:33:52', '2021-06-30 05:33:52', 1, NULL, 'Issued', 'btn-primary', 1),
(3, '2021-06-30 05:33:52', '2021-06-30 05:33:52', 1, NULL, 'Damage', 'btn-danger', 1),
(4, '2021-06-30 05:33:52', '2021-06-30 05:33:52', 1, NULL, 'Lost', 'btn-default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_histories`
--

CREATE TABLE `certificate_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `certificate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate_id` int(10) UNSIGNED NOT NULL,
  `history_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_templates`
--

CREATE TABLE `certificate_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `certificate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_photo` tinyint(1) NOT NULL DEFAULT 1,
  `background_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_templates`
--

INSERT INTO `certificate_templates` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `certificate`, `template`, `background_image`, `custom_css`, `student_photo`, `background_status`, `status`) VALUES
(1, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'ATTENDANCE', '<table class=\"table table-bordered\"> <tbody> <tr> <td>01.</td> <td style=\"text-align: right; \">Name of Student :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{student_name}}</b><br></td> </tr> <tr> <td>02.</td> <td style=\"text-align: right; \">Reg. No.&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_no}}</span><br></td> </tr> <tr> <td>03.</td> <td style=\"text-align: right; \">University Reg. No.&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{university_reg}}</span><br></td> </tr> <tr> <td>04.</td> <td style=\"text-align: right; \">Faculty/Level&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{faculty}}</span><br></td> </tr><tr><td>05.</td><td style=\"text-align: right; \">Batch :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{batch}}</span><br></td></tr> <tr> <td>06.</td> <td style=\"text-align: right; \">Year of Study&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{year_of_study}}</span><br></td> </tr> <tr> <td>07.</td> <td style=\"text-align: right; \">Percentage of Attendance Secured&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{percentage_of_attendance}}%</b><br></td> </tr> </tbody></table>', NULL, '.subpage{padding: 100px;}', 0, 0, 1),
(2, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'TRANSFER_1', '<table class=\"table table-bordered\"> <tbody> <tr> <td style=\"text-align: right;\"><span style=\"text-align: right;\">TC No. :&nbsp;</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{tc_num}}</span><br></td> <td rowspan=\"5\">{{student_image}}</td> </tr> <tr> <td style=\"text-align: right; \"><span style=\"text-align: right;\">Faculty/Level :&nbsp;</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{faculty}}</span><br></td> </tr> <tr> <td style=\"text-align: right; \"><span style=\"text-align: right;\">Admission No./Reg.No. :</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_no}}</span><br></td> </tr> <tr> <td style=\"text-align: right;\"><span style=\"text-align: right;\">University Reg. No. :</span><br></td> <td style=\"text-align: left;\"><b>{{university_reg}}</b><br></td> </tr><tr><td style=\"text-align: right;\">Batch. :<br></td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{batch}}</span><br></td></tr> </tbody></table><table class=\"table table-bordered\"> <tbody> <tr> <td>01.</td> <td style=\"text-align: right; \">Name of Student :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{student_name}}</b><br></td> </tr> <tr> <td>02.</td> <td style=\"text-align: right; \">Name of Father.&nbsp;:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{parents_name}}</b><br></td> </tr> <tr> <td>03.</td> <td style=\"text-align: right; \">Date of Birth :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_birth}}</span><br></td> </tr> <tr> <td>04.</td> <td style=\"text-align: right; \">Gender :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{gender}}</span><br></td> </tr> <tr> <td>05.</td> <td style=\"text-align: right; \">Nationality :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{nationality}}</span><br></td> </tr> <tr> <td>06.</td> <td style=\"text-align: right; \">Religion :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{religion}}</b><br></td> </tr> <tr> <td>07.</td> <td style=\"text-align: right; \">Community &amp; Caste :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{caste}}</span><br></td> </tr> <tr> <td>08.</td> <td style=\"text-align: right; \">Date of Admission :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_date}}</span><br></td> </tr> <tr> <td>09.</td> <td style=\"text-align: right; \">Date of Leaving :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{date_of_leaving}}</b><br></td> </tr> <tr> <td>10.</td> <td style=\"text-align: right;\">Class studied at the time of leaving :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{leaving_time_class}}</b><br></td> </tr> <tr> <td>11.</td> <td style=\"text-align: right; \">Whether qualified for promotion to higher class :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{qualified_to_promote}}</b><br></td> </tr> <tr> <td>12.</td> <td style=\"text-align: right; \">Whether the student has paid all Balance fees to the college :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{paid_fee_status}}</b><br></td> </tr> <tr> <td>13.</td> <td style=\"text-align: right; \">Conduct and Character :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{character}}</span><br></td> </tr> </tbody></table>', NULL, '.subpage{padding: 10px;}', 0, 0, 1),
(3, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'TRANSFER_2', '<p></p><table class=\"table table-bordered\"><tbody><tr><td><span style=\"text-align: right;\">TC No. :&nbsp;</span><b>{{tc_num}}</b><br></td><td><span style=\"text-align: right;\">बिद्यालय सं. / School No :&nbsp;</span><span style=\"font-weight: 700;\">{{reg_no}}</span><br></td><td>Affiliation No. :&nbsp;<span style=\"font-weight: 700;\">{{university_reg}}</span><br></td><td><span style=\"text-align: right;\">Renewed upto. :&nbsp;</span><br></td><td><span style=\"text-align: right;\">प्रवेश सं./Admission No. :&nbsp;</span><br></td></tr></tbody></table><table class=\"table table-bordered\"> <tbody> <tr> <td>01.</td> <td style=\"text-align: left;\">विद्यार्थीका नाम / Name of Student :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{student_name}}</b><br></td> </tr> <tr> <td>02.</td> <td style=\"text-align: left; \" class=\"field_title\">माताका नाम / Mother\'s Name :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{mother_name}}</b><br></td> </tr><tr><td>03.</td><td style=\"text-align: left; \" class=\"field_title\">पिताका नाम /Name of Father\'s / Guardian\'s Name :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{father_name}}</span><br></td></tr> <tr><td>04.</td><td style=\"text-align: left; \" class=\"field_title\">Date of birth(in Christain Era) according to Admission &amp; Withdrawal Register :<br></td><td width=\"50%\" style=\"text-align: left;\"><p><span style=\"background-color: transparent;\">In figures:&nbsp;</span><span style=\"font-weight: 700;\">{{date_of_birth}}</span></p><p><span style=\"background-color: transparent;\">In words:</span></p><p><span style=\"font-weight: 700;\">{{date_of_birth_in_word}}</span></p></td></tr><tr><td>05.</td><td style=\"text-align: left; \" class=\"field_title\">&nbsp;Proof for Date of Birth submitted at the time of admission :</td><td width=\"50%\" style=\"text-align: left;\"><b>{{dob_certificate}}</b></td></tr><tr><td>06.</td><td style=\"text-align: left; \" class=\"field_title\">राष्ट्रियता / Nationality :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{nationality}}</span><br></td></tr><tr><td>07.</td><td style=\"text-align: left; \" class=\"field_title\"><p>क्या अनु.जाति/ज.जा./पिछडा वर्गसे सम्बन्धित है</p><p>Whether the candidate belongs to Scheduled Caste or Schedule Tribe, or OBC:</p></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{caste}}</span><br></td></tr><tr><td>08.</td><td style=\"text-align: left; \" class=\"field_title\">Date of the first admission in the School with the class :<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_date}}&nbsp; &nbsp; &nbsp;</span>Class Joined :<span style=\"font-weight: 700;\">&nbsp;&nbsp;</span><span style=\"font-weight: 700;\">{{join_time_class}}</span><br></td></tr><tr><td>09.</td><td style=\"text-align: left; \" class=\"field_title\"><p>पिछली कक्षा जिसमे विद्यार्थी अध्ययनरत था (अंकों में)</p><p>Class in which the pupil last studied (in words):</p></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{leaving_time_class}}</span><br></td></tr><tr><td>10.</td><td style=\"text-align: left; \" class=\"field_title\"><p><span style=\"background-color: transparent;\">पिछले विद्यालय / वोर्ड परीक्षा एवं परिमाण / School/Board Annual Examination last taken with the result:&nbsp;</span><br></p></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{last_taken_exam_with_result}}</span><br></td></tr><tr><td>11.</td><td style=\"text-align: left; \" class=\"field_title\">क्या विद्यार्थीका परीक्षा परिणाम अनुत्तीर्ण है ? / Whether failed, if so once/twice in the same class :</td><td width=\"50%\" style=\"text-align: left;\"><b>{{exam_fail_status}}</b></td></tr><tr><td>12.</td><td style=\"text-align: left; \" class=\"field_title\">प्रस्तावित विषय / Subjects Studied:&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{subject_studies}}</span><br></td></tr><tr><td>13.</td><td style=\"text-align: left; \" class=\"field_title\"><p>क्या उच्च कक्षा में पदोन्‍नतका अधिकारी है / Whether qualified for promotion to the next higher class :</p><p>If so, to which class:</p></td><td width=\"50%\" style=\"text-align: left;\"><p><span style=\"font-weight: 700;\">{{qualified_to_promote}}</span></p><p><b>{{promoted_class}}</b><br></p></td></tr><tr><td>14.</td><td style=\"text-align: left; \" class=\"field_title\">विद्यालय दिवसों की कुल संख्या / Total No. of working days in the academic session :</td><td width=\"50%\" style=\"text-align: left;\"><p><span style=\"font-weight: 700;\">{{school_college_open_total}}</span><br></p></td></tr><tr><td>15.</td><td style=\"text-align: left; \" class=\"field_title\">अन्तिम तिथि तक उपस्थितियों की कुल संख्या / Total No. of presence in the academic session :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{total_attendance}}</span><br></td></tr><tr><td>16.</td><td style=\"text-align: left; \" class=\"field_title\"><p>क्या विद्यार्थी ने विद्यालय की सभी देय राशि का भुगतान कर दिया है /&nbsp;&nbsp;<span style=\"background-color: transparent;\">Month up to which the people has paid school dues :</span></p></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{paid_fee_status}}</span><br></td></tr><tr><td>17.</td><td style=\"text-align: left; \" class=\"field_title\">क्या विद्यार्थी को कोई शुल्क रियायत प्रदान की गई थी, यदि हाँऽ तो उसकी प्रकृतीः / Any Fee concession availed of, if so, the nature of such concession :<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{fee_concession_detail}}</span><br></td></tr><tr><td>18.</td><td style=\"text-align: left; \" class=\"field_title\">क्या विद्यार्थी&nbsp; एन.सी.सी. कैडेट/ स्काउट है? विवरण देः / Whether the pupil is NCC cadet / Boy scout / Girl Guide (give details):<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{cadet_detail}}</span><br></td></tr><tr><td>19.</td><td style=\"text-align: left; \" class=\"field_title\"><p>Whether the school is under Govt/Minority/Independent Category :<br></p></td><td width=\"50%\" style=\"text-align: left;\"><b>{{school_category}}</b></td></tr><tr><td>20.</td><td style=\"text-align: left; \" class=\"field_title\">Games Played on extracurricular activities in which the pupil usually took part (mention achievement level therein)<br></td><td width=\"50%\" style=\"text-align: left;\"><b>{{extra_activity_detail}}</b></td></tr><tr><td>21.</td><td style=\"text-align: left; \" class=\"field_title\"><p>Date of application for certificate :</p></td><td width=\"50%\" style=\"text-align: left;\"><b>{{application_date}}</b><br></td></tr><tr><td>22.</td><td style=\"text-align: left; \" class=\"field_title\">विद्यालय विद्यार्थीके नाम काटनेकी तिथि / Date on which pupils name was struck off the rolls of the Vidyalaya :<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_leaving}}</span><br></td></tr><tr><td>23.</td><td style=\"text-align: left; \" class=\"field_title\">प्रमाण-पत्र जारी करने की तिथी / Date of issue of certificate :&nbsp;<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_issue}}</span><br></td></tr><tr><td>24.</td><td style=\"text-align: left; \" class=\"field_title\">कोइ अन्य टिप्पणी / Any other remarks :<br></td><td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{any_other_remark}}</span><br></td></tr>    </tbody></table><br><table class=\"table table-bordered\" style=\"text-align: center; \"><tbody><tr><td><p><br></p><p>_______________________</p><p><b>तैयारकर्ता / Prepared By</b></p></td><td><p><br></p><p>_______________________<br></p><p><b>जाँचकर्ता / Checked By</b></p></td><td><p><br></p><p><span style=\"background-color: transparent;\">_______________________</span><br></p><p><b>ह. प्रधानाचार्य / कार्यालय मोहर</b></p><p><b>Sign of Principal with Official Seal</b></p></td></tr></tbody></table><p style=\"text-align: center; \"><br></p>', NULL, '.subpage{padding: 0px;}.field_title{width:65%;}p{margin: 0 0 0px;}tr{font-size: 10px;}', 0, 0, 1),
(4, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'TRANSFER_3', '<table class=\"table table-bordered\" style=\"text-align: right;\"> <tbody> <tr> <td><span style=\"text-align: right;\">TC No. :</span><br></td> <td style=\"text-align: left;\"><span style=\"text-align: right;\">&nbsp;</span><span style=\"font-weight: 700;\">{{tc_num}}</span><br></td> <td><span style=\"text-align: right;\">Admission No./Reg.No. :&nbsp;</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_no}}</span><br></td> </tr> <tr> <td>&nbsp;{{national_id_type}}<span style=\"background-color: transparent;\">&nbsp;:</span><br></td> <td style=\"text-align: left;\"><span style=\"font-weight: 700; background-color: transparent;\">{{national_id_number}}</span><br></td> <td>&nbsp;{{extra_id_card_type}}<span style=\"background-color: transparent; text-align: right;\">&nbsp;:</span><br></td> <td style=\"text-align: left;\"> <span style=\"background-color: transparent; text-align: right;\">&nbsp;</span><span style=\"font-weight: 700;\"><span style=\"background-color: transparent;\">{{extra_id_card_number}}</span><br> </span></td> </tr> </tbody></table><table class=\"table table-bordered\" style=\"text-align: right;\"> <tbody> <tr> <td>01.</td> <td style=\"text-align: left;\">Name of Pupil :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{student_name}}</b><br></td> </tr> <tr> <td>02.</td> <td style=\"text-align: left;\" class=\"field_title\">Father\'s / Guardian\'s Name :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{guardian_name}}</b><br></td> </tr> <tr> <td>03.</td> <td style=\"text-align: left;\" class=\"field_title\">Mother\'s Name :<br></td> <td width=\"50%\" style=\"text-align: left;\"><b>{{father_name}}</b><br></td> </tr> <tr> <td>04.</td> <td style=\"text-align: left;\" class=\"field_title\">Place of Birth :</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{birth_place}}</b><br></td> </tr> <tr> <td>05.</td> <td style=\"text-align: left;\" class=\"field_title\">Nationality :&nbsp;<br></td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{nationality}}</span><br></td> </tr> <tr> <td>06.</td> <td style=\"text-align: left;\" class=\"field_title\">Caste / Category</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{caste}}</span><br></td> </tr> <tr> <td>07.</td> <td style=\"text-align: left;\" class=\"field_title\"><p>Date of the first admission in the School with the class</p></td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reg_date}}</span><br></td> </tr> <tr> <td>08.</td> <td style=\"text-align: left;\" class=\"field_title\"><p>Date of birth(in Christain Era) according to Admission Register:</p></td> <td width=\"50%\" style=\"text-align: left;\"> <p><span style=\"background-color: transparent;\">In figures:&nbsp;</span><span style=\"font-weight: 700;\">{{date_of_birth}}</span></p> <p><span style=\"background-color: transparent;\">In words:</span></p> <p><b>{{date_of_birth_in_word}}</b><br></p> </td> </tr> <tr> <td>09.</td> <td style=\"text-align: left;\" class=\"field_title\">Class in which the pupil last studied/studying:</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{leaving_time_class}}</b><br></td> </tr> <tr> <td>10.</td> <td style=\"text-align: left;\" class=\"field_title\">School/Board Annual Examination last taken with the result:&nbsp;<br></td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{last_taken_exam_with_result}}</span><br></td> </tr> <tr> <td>11.</td> <td style=\"text-align: left;\" class=\"field_title\">Promoted Class :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{promoted_class}}</span><br></td> </tr> <tr> <td>12.</td> <td style=\"text-align: left;\" class=\"field_title\">General Conduct :&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{character}}</span><br></td> </tr> <tr> <td>13.</td> <td style=\"text-align: left;\" class=\"field_title\"><p>Date of application for Transfer certificate :</p></td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_issue}}</span><br></td> </tr> <tr> <td>14.</td> <td style=\"text-align: left;\" class=\"field_title\">Date of issue of Transfer certificate :</td> <td width=\"50%\" style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_issue}}</span><br></td> </tr> <tr> <td>15.</td> <td style=\"text-align: left;\" class=\"field_title\"><p>Reason for leaving the school:</p></td> <td width=\"50%\" style=\"text-align: left;\"><b>{{qualified_to_promote}}</b><br></td> </tr> <tr> <td>16.</td> <td style=\"text-align: left;\" class=\"field_title\">Any other remarks:&nbsp;</td> <td width=\"50%\" style=\"text-align: left;\"><b>{{any_other_remark}}</b><br></td> </tr> </tbody></table><p></p><p></p><p style=\"text-align: right;\"><br></p><table class=\"table table-bordered\" style=\"text-align: right;\"> <tbody> <tr> <td> <p><br></p> <p style=\"text-align: center; \"><br></p> <p style=\"text-align: center; \">_______________________</p> <p style=\"text-align: center; \"><b>&nbsp;Prepared By</b></p> </td> <td> <p><br></p> <p style=\"text-align: center; \"><br></p> <p style=\"text-align: center; \">_______________________<br></p> <p style=\"text-align: center; \"><b>Checked By</b></p> </td> <td> <p><br></p> <p><br></p> <p style=\"text-align: center; \">_______________________<br></p> <p style=\"text-align: center; \"><b style=\"background-color: transparent;\">Sign of Principal with Official Seal</b><br></p> </td> </tr> </tbody></table><p style=\"text-align: right;\"><br></p>', NULL, '.subpage{padding: 0px;}.field_title{width:60%;}p{margin: 0 0 0px;}', 0, 0, 1),
(5, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'NIRGAMUTARA_1', '<table class=\"table table-bordered\"> <tbody> <tr> <td style=\"text-align: left;\">01.</td><td style=\"text-align: left;\"> Admission No </td> <td style=\"text-align: left;\"><span style=\"color: rgb(57, 57, 57);\"><b>{{reg_no}}</b></span><br></td> </tr> <tr> <td style=\"text-align: left;\">02.</td><td style=\"text-align: left;\"> Student Full Name </td> <td style=\"text-align: left;\"><span style=\"color: rgb(57, 57, 57);\"><b>{{student_name}}</b>&nbsp;</span><br></td> </tr> <tr> <td style=\"text-align: left;\">03.</td><td style=\"text-align: left;\"> Parent Full Name </td> <td style=\"text-align: left;\"><span style=\"color: rgb(57, 57, 57);\"><b>{{parents_name}}</b></span><br></td> </tr> <tr> <td style=\"text-align: left;\">04.</td><td style=\"text-align: left;\"> Cast </td> <td style=\"text-align: left;\"><b>{{caste}}</b></td> </tr> <tr> <td style=\"text-align: left;\">05.</td><td style=\"text-align: left;\"> Parent Bussiness </td> <td style=\"text-align: left;\"><b><span style=\"color: rgb(57, 57, 57);\">{{father_occupation}} /&nbsp;</span>{{mother_occupation}}</b><br></td> </tr> <tr> <td style=\"text-align: left;\">06.</td><td style=\"text-align: left;\"> Mother Tongue </td> <td style=\"text-align: left;\"><span style=\"color: rgb(57, 57, 57);\"><b>{{mother_tongue}}</b></span><br></td> </tr> <tr> <td style=\"text-align: left;\">07.</td><td style=\"text-align: left;\"> Admission Date </td> <td style=\"text-align: left;\"><span style=\"color: rgb(57, 57, 57);\"><b>{{reg_date}}</b></span><br></td> </tr> <tr> <td style=\"text-align: left;\">08.</td><td style=\"text-align: left;\"> Birth Date in number </td> <td style=\"text-align: left;\"><b>{{date_of_birth}}</b><br></td> </tr> <tr> <td style=\"text-align: left;\">09.</td><td style=\"text-align: left;\"> Birth Date in word </td> <td style=\"text-align: left;\"><b>{{date_of_birth_in_word}}</b><br></td> </tr> <tr> <td style=\"text-align: left;\">10.</td><td style=\"text-align: left;\"> Class while admission </td> <td style=\"text-align: left;\"><b>{{join_time_class}}</b></td> </tr><tr><td style=\"text-align: left;\">11.</td><td style=\"text-align: left;\">Previous School Name</td><td style=\"text-align: left;\"><b>{{previous_school_name}}</b></td></tr><tr><td style=\"text-align: left;\">12.</td><td style=\"text-align: left;\">Standard</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">13.</td><td style=\"text-align: left;\">Sign of Authority</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">14.</td><td style=\"text-align: left;\">The class while leaving school</td><td style=\"text-align: left;\"><b>{{leaving_time_class}}</b><br></td></tr><tr><td style=\"text-align: left;\">15.</td><td style=\"text-align: left;\">Leaving Date</td><td style=\"text-align: left;\"><b>{{date_of_leaving}}</b></td></tr><tr><td style=\"text-align: left;\">16.</td><td style=\"text-align: left;\">Reason for leaving School</td><td style=\"text-align: left;\"><b>{{reason_to_leave}}</b></td></tr><tr><td style=\"text-align: left;\">17</td><td style=\"text-align: left;\">Mention 2 Body Mark</td><td style=\"text-align: left;\"><b>{{mention_body_mark}}</b></td></tr><tr><td style=\"text-align: left;\">18.</td><td style=\"text-align: left;\">Sign of Authority while leaving school</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">19.</td><td style=\"text-align: left;\">Head Master\'s Sign</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">20.</td><td style=\"text-align: left;\">Description</td><td style=\"text-align: left;\"><b>{{any_other_remark}}</b></td></tr> </tbody></table><p><br></p><table class=\"table table-bordered\"><tbody><tr><td><p>Date:</p></td><td>Place:<br></td><td style=\"text-align: center; \"><p><br></p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>______________________</p><p>Seal</p></td><td style=\"text-align: center; \"><p><br></p><p><br></p><p>______________________</p><p>Headmaster\'s Sign</p></td></tr></tbody></table><p><br></p><p><br></p>', NULL, '.subpage{padding: 0px;}', 0, 0, 1),
(6, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'NIRGAMUTARA_2', '<table class=\"table table-bordered\"><tbody><tr><td>शालेचे नांवः</td><td><br></td><td>रजिस्टर नं.</td><td><br></td></tr></tbody></table><p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: left;\">१</td><td style=\"text-align: left;\">प्रवेश अनुक्रमांक&nbsp;&nbsp;</td><td style=\"text-align: left;\"><span style=\"font-weight: 700; color: rgb(57, 57, 57);\">{{reg_no}}</span><br></td></tr><tr><td style=\"text-align: left;\">२</td><td style=\"text-align: left;\">विद्यार्थ्याचे संपूर्ण नांव अडनांवासह</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{student_name}}</span><br></td></tr><tr><td style=\"text-align: left;\">३</td><td style=\"text-align: left;\">आई / वडिलांचे नांव / वडील ह्यात नसल्यास पालकाये नांव</td><td style=\"text-align: left;\"><span style=\"font-weight: 700; color: rgb(57, 57, 57);\">{{parents_name}}</span><br></td></tr><tr><td style=\"text-align: left;\">४</td><td style=\"text-align: left;\">जात</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{caste}}</span><br></td></tr><tr><td style=\"text-align: left;\">५</td><td style=\"text-align: left;\">वडिल पालकाचा व्यवसाय</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\"><span style=\"color: rgb(57, 57, 57);\">{{father_occupation}} /&nbsp;</span>{{mother_occupation}}</span><br></td></tr><tr><td style=\"text-align: left;\">६</td><td style=\"text-align: left;\">मातृभाषा</td><td style=\"text-align: left;\"><span style=\"font-weight: 700; color: rgb(57, 57, 57);\">{{mother_tongue}}</span><br></td></tr><tr><td style=\"text-align: left;\">७</td><td style=\"text-align: left;\">प्रवेश दिनांक</td><td style=\"text-align: left;\"><span style=\"font-weight: 700; color: rgb(57, 57, 57);\">{{reg_date}}</span><br></td></tr><tr><td style=\"text-align: left;\">८</td><td style=\"text-align: left;\">जन्म दिनांक</td><td><p style=\"text-align: left;\">अंकातः&nbsp;<span style=\"font-weight: 700; background-color: transparent;\">{{date_of_birth}}</span></p><p style=\"text-align: left;\">अक्षरातः&nbsp;<span style=\"font-weight: 700; background-color: transparent;\">{{date_of_birth_in_word}}</span></p></td></tr><tr><td style=\"text-align: left;\">९</td><td style=\"text-align: left;\">प्रवेश समयीचा वर्ग</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{join_time_class}}</span><br></td></tr><tr><td style=\"text-align: left;\">१०</td><td style=\"text-align: left;\">पुर्वीध्या शालेचे नांव</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{previous_school_name}}</span><br></td></tr><tr><td style=\"text-align: left;\">११</td><td style=\"text-align: left;\">इयत्ता</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">१२</td><td style=\"text-align: left;\">प्रवेश देणार्‍या अधिकार्‍यांची सही</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">१३</td><td style=\"text-align: left;\">निर्गम समयी वर्ग</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{leaving_time_class}}</span><br></td></tr><tr><td style=\"text-align: left;\">१४</td><td style=\"text-align: left;\">निर्गम दिनांक</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{date_of_leaving}}</span><br></td></tr><tr><td style=\"text-align: left;\">१५</td><td style=\"text-align: left;\">शाला सोडण्याचे कारण</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{reason_to_leave}}</span><br></td></tr><tr><td style=\"text-align: left;\">१६</td><td style=\"text-align: left;\">परिचय चिन्‍ह विद्यार्थ्याचे थोडक्यात दोन चिन्ह नाँदवावे</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{mention_body_mark}}</span><br></td></tr><tr><td style=\"text-align: left;\">१७</td><td style=\"text-align: left;\">निर्गम समयी निर्गमाची नोंद घेणार्‍या अधिकारर्‍याची सही</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">१८</td><td style=\"text-align: left;\">मुख्‍याध्यापकाची स्वाक्षरी</td><td style=\"text-align: left;\"><br></td></tr><tr><td style=\"text-align: left;\">१९</td><td style=\"text-align: left;\">विवरण</td><td style=\"text-align: left;\"><span style=\"font-weight: 700;\">{{any_other_remark}}</span><br></td></tr></tbody></table><p><br></p><p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: left;\"><p>दिनांकः</p><p>स्थलः&nbsp;</p></td><td style=\"text-align: center; \">शालेचा शिका</td><td style=\"text-align: center; \">मुख्‍याध्यापकाची स्वाक्षरी</td></tr></tbody></table><p><br></p><p><br></p><p><br></p>', NULL, '.subpage{padding: 0px;}', 0, 0, 1),
(7, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'CHARACTER', '<p>This is to certify that&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{student_name}}</b></span>&nbsp;Son of&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{father_name}}</b> </span>&amp;&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{mother_name}}</b></span>, Permanent Address<b>&nbsp;<span style=\"color: rgb(57, 57, 57);\">{{address}}</span></b>, is known to me for about&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{year}}</b></span>&nbsp;years. He is a citizen of&nbsp;<span style=\"color: rgb(57, 57, 57);\"><b>{{country}}</b>&nbsp;</span>by birth.</p><p><br></p><p>To the best of my knowledge, he bears a <b>{{character}}</b> character and is not involved in such activities which are against the state freedom and peace. I wish all success and prosperity in his life.</p>', NULL, '.subpage{padding: 100px;}', 0, 0, 1),
(8, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'BONAFIDE', 'This is to certify that <b>{{student_name}} </b>Reg No. <b>{{reg_no}}</b>   Son of <b>{{parents_name}}</b> is a bonafide student of this College in the <b>{{course}}</b> course during the period <b>{{period}}</b>. His/Her Date of Birth as per our School/College record is <b>{{date_of_birth}}</b>.His/Her Conduct and Character are <b>{{character}}</b>.', NULL, '.subpage{padding: 100px;}', 0, 0, 1),
(9, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'COURSE COMPLETION', '<p>This is to certify that <b>{{student_name}}</b> Reg No. <b>{{reg_no}}</b>&nbsp; Son of <b>{{parents_name}} </b>has studied <b>{{course}}</b> in our college during the <b>{{period}}</b>. His/Her Date of Birth as per our School/College record is <b>{{date_of_birth}}</b>.His/Her Conduct and Character are <b>{{character}}</b> during the tenure of his studies.<br></p>', NULL, '.subpage{padding: 100px;}', 0, 0, 1),
(10, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'GENERAL TEMPLATE', '<p style=\"text-align: center; \">REG.NO.:<b>{{reg_no}}</b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;REG.DATE: <b>{{reg_date}}</b></p><p style=\"text-align: center; \"><b><br></b></p><p style=\"text-align: center; \">This is to certify that <b>{{student_name}}</b> son/daughter of <b>{{parents_name}}</b> Residing at <b>{{address}}</b> is bonafide Student of our school.</p><p style=\"text-align: center; \"><br></p><p style=\"text-align: center; \">He/She is /was very obedient, sincere and hardworking.</p><p style=\"text-align: center; \"><br></p><p style=\"text-align: center; \">He/She bears a good moral character. His/Her Date of Birth is <b>{{date_of_birth}}</b> and Place of Birth is <b>{{address}}</b>.<br></p>', NULL, '.subpage{padding: 100px;}', 1, 0, 1),
(11, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'IDENTITY CARD', '<h5 style=\"text-align: center;\"><b>{{student_name}}</b></h5><h6 style=\"text-align: center; \"><b>{{faculty}}-</b><b>{{semester}}</b></h6><p></p><p><b>PARENT : {{parents_name}}</b></p><p></p><p><b>ADDRESS : {{address}}</b></p><p><b>CONTACT : {{guardian_mobile_1}}</b></p><p><b>VALID DATE : JAN 2019-  FEB 2020</b></p><p></p>', NULL, '.subpage{padding:83px 5px 5px;color:#000!important}.page-content{padding:8px 20px 24px}h5{font-size:14px;margin:2px auto}h6{font-size:12px;margin:2px auto}.student_image{border-radius:0;width:100px;height:auto;border:2px #438eb9 solid}p{margin:1px 0 0;font-size:10px;text-align:left!important}', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `character_certificates`
--

CREATE TABLE `character_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `cc_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_directory_details`
--

CREATE TABLE `contact_directory_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `contact_directory_groups_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `religion` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_cell_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_cell_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_directory_groups`
--

CREATE TABLE `contact_directory_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_mesages`
--

CREATE TABLE `contact_mesages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_completion_certificates`
--

CREATE TABLE `course_completion_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `course` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_status` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_statuses`
--

CREATE TABLE `customer_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_statuses`
--

INSERT INTO `customer_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, 1, 'New Customer', 1),
(2, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, 1, 'Annual Contract', 1),
(3, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, 1, 'Office Contract', 1),
(4, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, 1, 'Individual', 1),
(5, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, 1, 'inquiry/Lead', 1);

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Sunday', 1),
(2, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Monday', 1),
(3, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Tuesday', 1),
(4, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Wednesday', 1),
(5, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Thursday', 1),
(6, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Friday', 1),
(7, '2021-06-30 05:33:58', '2021-06-30 05:33:58', 1, NULL, 'Saturday', 1);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `member_type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semesters_id` int(10) UNSIGNED DEFAULT NULL,
  `subjects_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eating_times`
--

CREATE TABLE `eating_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `driver` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2023-05-01 23:31:37', '2023-05-01 23:31:37', 1, NULL, 'CAT', 1),
(2, '2023-05-01 23:32:08', '2023-05-01 23:32:08', 1, NULL, 'END TERM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_mark_ledgers`
--

CREATE TABLE `exam_mark_ledgers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `exam_schedule_id` int(10) UNSIGNED NOT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `obtain_mark_theory` int(11) NOT NULL DEFAULT 0,
  `absent_theory` tinyint(1) NOT NULL DEFAULT 0,
  `obtain_mark_practical` int(11) NOT NULL DEFAULT 0,
  `absent_practical` tinyint(1) NOT NULL DEFAULT 0,
  `sorting_order` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_mark_ledgers`
--

INSERT INTO `exam_mark_ledgers` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `exam_schedule_id`, `students_id`, `obtain_mark_theory`, `absent_theory`, `obtain_mark_practical`, `absent_practical`, `sorting_order`, `status`) VALUES
(1, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 1, 50, 0, 0, 0, 1, 1),
(2, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 10, 30, 0, 0, 0, 2, 1),
(3, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 11, 15, 0, 0, 0, 3, 1),
(4, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 12, 40, 0, 0, 0, 4, 1),
(5, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 13, 28, 0, 0, 0, 5, 1),
(6, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 14, 34, 0, 0, 0, 6, 1),
(7, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 15, 36, 0, 0, 0, 7, 1),
(8, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 16, 26, 0, 0, 0, 8, 1),
(9, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 17, 38, 0, 0, 0, 9, 1),
(10, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 18, 42, 0, 0, 0, 10, 1),
(11, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 19, 62, 0, 0, 0, 11, 1),
(12, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 2, 19, 0, 0, 0, 12, 1),
(13, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 20, 0, 1, 0, 0, 13, 1),
(14, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 21, 0, 1, 0, 0, 14, 1),
(15, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 22, 0, 1, 0, 0, 15, 1),
(16, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 3, 0, 1, 0, 0, 16, 1),
(17, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 4, 0, 1, 0, 0, 17, 1),
(18, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 5, 0, 1, 0, 0, 18, 1),
(19, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 6, 0, 1, 0, 0, 19, 1),
(20, '2023-05-01 23:56:34', '2023-05-01 23:56:34', 1, NULL, 1, 9, 48, 0, 0, 0, 20, 1),
(21, '2023-05-01 23:58:41', '2023-05-01 23:58:41', 1, NULL, 2, 1, 26, 0, 0, 0, 1, 1),
(22, '2023-05-01 23:58:41', '2023-05-01 23:58:41', 1, NULL, 2, 10, 42, 0, 0, 0, 2, 1),
(23, '2023-05-01 23:58:41', '2023-05-01 23:58:41', 1, NULL, 2, 11, 35, 0, 0, 0, 3, 1),
(24, '2023-05-01 23:58:41', '2023-05-01 23:58:41', 1, NULL, 2, 12, 34, 0, 0, 0, 4, 1),
(25, '2023-05-01 23:58:41', '2023-05-01 23:58:41', 1, NULL, 2, 13, 15, 0, 0, 0, 5, 1),
(26, '2023-05-01 23:58:41', '2023-05-01 23:58:41', 1, NULL, 2, 14, 27, 0, 0, 0, 6, 1),
(27, '2023-05-01 23:58:41', '2023-05-01 23:58:41', 1, NULL, 2, 15, 62, 0, 0, 0, 7, 1),
(28, '2023-05-01 23:58:41', '2023-05-01 23:58:41', 1, NULL, 2, 16, 14, 0, 0, 0, 8, 1),
(29, '2023-05-01 23:58:41', '2023-05-01 23:58:41', 1, NULL, 2, 17, 35, 0, 0, 0, 9, 1),
(30, '2023-05-01 23:58:41', '2023-05-01 23:58:41', 1, NULL, 2, 18, 14, 0, 0, 0, 10, 1),
(31, '2023-05-01 23:58:41', '2023-05-01 23:58:41', 1, NULL, 2, 19, 28, 0, 0, 0, 11, 1),
(32, '2023-05-01 23:58:41', '2023-05-01 23:58:41', 1, NULL, 2, 2, 36, 0, 0, 0, 12, 1),
(33, '2023-05-01 23:58:41', '2023-05-01 23:58:41', 1, NULL, 2, 20, 32, 0, 0, 0, 13, 1),
(34, '2023-05-01 23:58:41', '2023-05-01 23:58:41', 1, NULL, 2, 21, 27, 0, 0, 0, 14, 1),
(35, '2023-05-01 23:58:41', '2023-05-01 23:58:41', 1, NULL, 2, 22, 23, 0, 0, 0, 15, 1),
(36, '2023-05-01 23:58:42', '2023-05-01 23:58:42', 1, NULL, 2, 3, 0, 1, 0, 0, 16, 1),
(37, '2023-05-01 23:58:42', '2023-05-01 23:58:42', 1, NULL, 2, 4, 0, 1, 0, 0, 17, 1),
(38, '2023-05-01 23:58:42', '2023-05-01 23:58:42', 1, NULL, 2, 5, 0, 1, 0, 0, 18, 1),
(39, '2023-05-01 23:58:42', '2023-05-01 23:58:42', 1, NULL, 2, 6, 22, 0, 0, 0, 19, 1),
(40, '2023-05-01 23:58:42', '2023-05-01 23:58:42', 1, NULL, 2, 7, 46, 0, 0, 0, 20, 1),
(41, '2023-05-01 23:58:42', '2023-05-01 23:58:42', 1, NULL, 2, 8, 39, 0, 0, 0, 21, 1),
(42, '2023-05-01 23:58:42', '2023-05-01 23:58:42', 1, NULL, 2, 9, 24, 0, 0, 0, 22, 1),
(43, '2023-05-02 00:00:10', '2023-05-02 00:00:10', 1, NULL, 3, 1, 25, 0, 0, 0, 1, 1),
(44, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 10, 28, 0, 0, 0, 2, 1),
(45, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 11, 35, 0, 0, 0, 3, 1),
(46, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 12, 42, 0, 0, 0, 4, 1),
(47, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 13, 0, 1, 0, 0, 5, 1),
(48, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 14, 0, 1, 0, 0, 6, 1),
(49, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 15, 5, 0, 0, 0, 7, 1),
(50, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 16, 10, 0, 0, 0, 8, 1),
(51, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 17, 18, 0, 0, 0, 9, 1),
(52, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 18, 29, 0, 0, 0, 10, 1),
(53, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 19, 35, 0, 0, 0, 11, 1),
(54, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 2, 42, 0, 0, 0, 12, 1),
(55, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 20, 47, 0, 0, 0, 13, 1),
(56, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 21, 15, 0, 0, 0, 14, 1),
(57, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 22, 18, 0, 0, 0, 15, 1),
(58, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 3, 21, 0, 0, 0, 16, 1),
(59, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 4, 27, 0, 0, 0, 17, 1),
(60, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 5, 28, 0, 0, 0, 18, 1),
(61, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 6, 39, 0, 0, 0, 19, 1),
(62, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 7, 33, 0, 0, 0, 20, 1),
(63, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 8, 45, 0, 0, 0, 21, 1),
(64, '2023-05-02 00:00:11', '2023-05-02 00:00:11', 1, NULL, 3, 9, 48, 0, 0, 0, 22, 1),
(65, '2023-05-02 00:03:24', '2023-05-02 00:03:24', 1, NULL, 10, 1, 25, 0, 0, 0, 1, 1),
(66, '2023-05-02 00:03:24', '2023-05-02 00:03:24', 1, NULL, 10, 10, 25, 0, 0, 0, 2, 1),
(67, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 11, 14, 0, 0, 0, 3, 1),
(68, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 12, 19, 0, 0, 0, 4, 1),
(69, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 13, 25, 0, 0, 0, 5, 1),
(70, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 14, 20, 0, 0, 0, 6, 1),
(71, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 15, 26, 0, 0, 0, 7, 1),
(72, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 16, 43, 0, 0, 0, 8, 1),
(73, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 17, 28, 0, 0, 0, 9, 1),
(74, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 18, 36, 0, 0, 0, 10, 1),
(75, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 19, 28, 0, 0, 0, 11, 1),
(76, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 2, 19, 0, 0, 0, 12, 1),
(77, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 20, 36, 0, 0, 0, 13, 1),
(78, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 21, 34, 0, 0, 0, 14, 1),
(79, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 22, 39, 0, 0, 0, 15, 1),
(80, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 3, 45, 0, 0, 0, 16, 1),
(81, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 4, 19, 0, 0, 0, 17, 1),
(82, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 5, 22, 0, 0, 0, 18, 1),
(83, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 6, 27, 0, 0, 0, 19, 1),
(84, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 7, 33, 0, 0, 0, 20, 1),
(85, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 8, 42, 0, 0, 0, 21, 1),
(86, '2023-05-02 00:03:25', '2023-05-02 00:03:25', 1, NULL, 10, 9, 48, 0, 0, 0, 22, 1),
(87, '2023-05-02 00:06:25', '2023-05-02 00:06:25', 1, NULL, 4, 1, 22, 0, 0, 0, 1, 1),
(88, '2023-05-02 00:06:25', '2023-05-02 00:06:25', 1, NULL, 4, 10, 29, 0, 0, 0, 2, 1),
(89, '2023-05-02 00:06:25', '2023-05-02 00:06:25', 1, NULL, 4, 11, 45, 0, 0, 0, 3, 1),
(90, '2023-05-02 00:06:25', '2023-05-02 00:06:25', 1, NULL, 4, 12, 21, 0, 0, 0, 4, 1),
(91, '2023-05-02 00:06:25', '2023-05-02 00:06:25', 1, NULL, 4, 13, 27, 0, 0, 0, 5, 1),
(92, '2023-05-02 00:06:25', '2023-05-02 00:06:25', 1, NULL, 4, 14, 34, 0, 0, 0, 6, 1),
(93, '2023-05-02 00:06:25', '2023-05-02 00:06:25', 1, NULL, 4, 15, 36, 0, 0, 0, 7, 1),
(94, '2023-05-02 00:06:25', '2023-05-02 00:06:25', 1, NULL, 4, 16, 37, 0, 0, 0, 8, 1),
(95, '2023-05-02 00:06:25', '2023-05-02 00:06:25', 1, NULL, 4, 17, 38, 0, 0, 0, 9, 1),
(96, '2023-05-02 00:06:25', '2023-05-02 00:06:25', 1, NULL, 4, 18, 41, 0, 0, 0, 10, 1),
(97, '2023-05-02 00:06:25', '2023-05-02 00:06:25', 1, NULL, 4, 19, 25, 0, 0, 0, 11, 1),
(98, '2023-05-02 00:06:26', '2023-05-02 00:06:26', 1, NULL, 4, 2, 34, 0, 0, 0, 12, 1),
(99, '2023-05-02 00:06:26', '2023-05-02 00:06:26', 1, NULL, 4, 20, 0, 1, 0, 0, 13, 1),
(100, '2023-05-02 00:06:26', '2023-05-02 00:06:26', 1, NULL, 4, 21, 0, 1, 0, 0, 14, 1),
(101, '2023-05-02 00:06:26', '2023-05-02 00:06:26', 1, NULL, 4, 22, 0, 1, 0, 0, 15, 1),
(102, '2023-05-02 00:06:26', '2023-05-02 00:06:26', 1, NULL, 4, 3, 0, 1, 0, 0, 16, 1),
(103, '2023-05-02 00:06:26', '2023-05-02 00:06:26', 1, NULL, 4, 4, 0, 1, 0, 0, 17, 1),
(104, '2023-05-02 00:06:26', '2023-05-02 00:06:26', 1, NULL, 4, 5, 31, 0, 0, 0, 18, 1),
(105, '2023-05-02 00:06:26', '2023-05-02 00:06:26', 1, NULL, 4, 6, 44, 0, 0, 0, 19, 1),
(106, '2023-05-02 00:06:26', '2023-05-02 00:06:26', 1, NULL, 4, 7, 18, 0, 0, 0, 20, 1),
(107, '2023-05-02 00:06:26', '2023-05-02 00:06:26', 1, NULL, 4, 8, 47, 0, 0, 0, 21, 1),
(108, '2023-05-02 00:06:26', '2023-05-02 00:06:26', 1, NULL, 4, 9, 47, 0, 0, 0, 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `months_id` int(10) UNSIGNED NOT NULL,
  `exams_id` int(10) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `full_mark_theory` int(11) NOT NULL DEFAULT 0,
  `pass_mark_theory` int(11) NOT NULL DEFAULT 0,
  `full_mark_practical` int(11) NOT NULL DEFAULT 0,
  `pass_mark_practical` int(11) NOT NULL DEFAULT 0,
  `sorting_order` int(10) UNSIGNED NOT NULL,
  `publish_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_schedules`
--

INSERT INTO `exam_schedules` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `years_id`, `months_id`, `exams_id`, `faculty_id`, `semesters_id`, `subjects_id`, `date`, `start_time`, `end_time`, `full_mark_theory`, `pass_mark_theory`, `full_mark_practical`, `pass_mark_practical`, `sorting_order`, `publish_status`, `status`) VALUES
(1, '2023-05-01 23:52:58', '2023-05-01 23:52:58', 1, NULL, 5, 2, 1, 1, 1, 1, '2023-01-31 00:00:00', '11:46:00', '00:46:00', 0, 0, 0, 0, 1, 0, 1),
(2, '2023-05-01 23:52:58', '2023-05-01 23:52:58', 1, NULL, 5, 2, 1, 1, 1, 2, '2023-02-02 00:00:00', '01:48:00', '14:46:00', 0, 0, 0, 0, 2, 0, 1),
(3, '2023-05-01 23:52:58', '2023-05-01 23:52:58', 1, NULL, 5, 2, 1, 1, 1, 3, '2023-02-03 00:00:00', '11:47:00', '12:47:00', 0, 0, 0, 0, 3, 0, 1),
(4, '2023-05-01 23:52:58', '2023-05-01 23:52:58', 1, NULL, 5, 2, 1, 1, 1, 5, '2023-02-06 00:00:00', '00:47:00', '00:48:00', 0, 0, 0, 0, 4, 0, 1),
(5, '2023-05-01 23:52:58', '2023-05-01 23:52:58', 1, NULL, 5, 2, 1, 1, 1, 6, '2023-02-06 00:00:00', '11:47:00', '12:47:00', 0, 0, 0, 0, 5, 0, 1),
(6, '2023-05-01 23:52:58', '2023-05-01 23:52:58', 1, NULL, 5, 2, 1, 1, 1, 8, '2023-02-08 00:00:00', '11:47:00', '14:49:00', 0, 0, 0, 0, 6, 0, 1),
(7, '2023-05-01 23:52:58', '2023-05-01 23:52:58', 1, NULL, 5, 2, 1, 1, 1, 9, '2023-02-08 00:00:00', '15:47:00', '16:47:00', 0, 0, 0, 0, 7, 0, 1),
(8, '2023-05-01 23:52:58', '2023-05-01 23:52:58', 1, NULL, 5, 2, 1, 1, 1, 7, '2023-02-09 00:00:00', '11:48:00', '12:48:00', 0, 0, 0, 0, 8, 0, 1),
(9, '2023-05-01 23:52:58', '2023-05-01 23:52:58', 1, NULL, 5, 2, 1, 1, 1, 11, '2023-02-13 00:00:00', '11:48:00', '12:48:00', 0, 0, 0, 0, 9, 0, 1),
(10, '2023-05-01 23:52:58', '2023-05-01 23:52:58', 1, NULL, 5, 2, 1, 1, 1, 4, '2023-02-14 00:00:00', '12:48:00', '13:48:00', 0, 0, 0, 0, 10, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `faculty` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sorting` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `faculty`, `faculty_code`, `sorting`, `status`) VALUES
(1, '2023-05-01 20:22:08', '2023-05-01 22:05:56', 1, 1, 'FORM1', 'F1EAST', 0, 1),
(2, '2023-05-01 23:27:05', '2023-05-01 23:27:05', 1, NULL, 'FORM2', 'F2EAST', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_semester`
--

CREATE TABLE `faculty_semester` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculty_semester`
--

INSERT INTO `faculty_semester` (`id`, `created_at`, `updated_at`, `faculty_id`, `semester_id`) VALUES
(1, NULL, NULL, 1, 1),
(2, NULL, NULL, 1, 2),
(3, NULL, NULL, 1, 3),
(4, NULL, NULL, 2, 1),
(5, NULL, NULL, 2, 2),
(6, NULL, NULL, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fee_collections`
--

CREATE TABLE `fee_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `fee_masters_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `payment_mode` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_collections`
--

INSERT INTO `fee_collections` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `students_id`, `fee_masters_id`, `date`, `paid_amount`, `discount`, `fine`, `payment_mode`, `note`, `response`, `status`) VALUES
(1, '2023-05-01 22:37:28', '2023-05-01 22:37:28', 1, NULL, 1, 4, '2023-02-01 00:00:00', 1250, NULL, NULL, 'Bank', 'Quick Receive : ', NULL, 1),
(2, '2023-05-01 22:37:28', '2023-05-01 22:37:28', 1, NULL, 1, 2, '2023-02-01 00:00:00', 10000, NULL, NULL, 'Bank', 'Quick Receive : ', NULL, 1),
(3, '2023-05-01 22:37:28', '2023-05-01 22:37:28', 1, NULL, 1, 1, '2023-02-01 00:00:00', 1250, NULL, NULL, 'Bank', 'Quick Receive', NULL, 1),
(4, '2023-05-01 22:39:38', '2023-05-01 22:39:38', 1, NULL, 5, 10, '2023-01-10 00:00:00', 1400, NULL, NULL, 'Cash', 'Quick Receive', NULL, 1),
(5, '2023-05-01 22:40:27', '2023-05-01 22:40:27', 1, NULL, 15, 20, '2023-03-07 00:00:00', 10000, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(6, '2023-05-01 22:40:27', '2023-05-01 22:40:27', 1, NULL, 15, 98, '2023-03-07 00:00:00', 200, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(7, '2023-05-01 22:40:27', '2023-05-01 22:40:27', 1, NULL, 15, 99, '2023-03-07 00:00:00', 1250, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(8, '2023-05-01 22:40:27', '2023-05-01 22:40:27', 1, NULL, 15, 100, '2023-03-07 00:00:00', 995, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(9, '2023-05-01 22:40:27', '2023-05-01 22:40:27', 1, NULL, 15, 101, '2023-03-07 00:00:00', 1055, NULL, NULL, 'Cash', 'Quick Receive', NULL, 1),
(10, '2023-05-01 22:44:43', '2023-05-01 22:44:43', 1, NULL, 1, 1, '2023-03-08 00:00:00', 8750, NULL, NULL, 'Cash', 'over', NULL, 1),
(11, '2023-05-01 22:44:43', '2023-05-01 22:44:43', 1, NULL, 1, 3, '2023-03-08 00:00:00', 995, NULL, NULL, 'Cash', 'over', NULL, 1),
(12, '2023-05-01 22:44:43', '2023-05-01 22:44:43', 1, NULL, 1, 5, '2023-03-08 00:00:00', 2500, NULL, NULL, 'Cash', 'over', NULL, 1),
(13, '2023-05-01 22:44:43', '2023-05-01 22:44:43', 1, NULL, 1, 6, '2023-03-08 00:00:00', 10000, NULL, NULL, 'Cash', 'over', NULL, 1),
(14, '2023-05-01 22:44:43', '2023-05-01 22:44:43', 1, NULL, 1, 28, '2023-03-08 00:00:00', 200, NULL, NULL, 'Cash', 'over', NULL, 1),
(15, '2023-05-01 22:44:43', '2023-05-01 22:44:43', 1, NULL, 1, 29, '2023-03-08 00:00:00', 1250, NULL, NULL, 'Cash', 'over', NULL, 1),
(16, '2023-05-01 22:44:43', '2023-05-01 22:44:43', 1, NULL, 1, 30, '2023-03-08 00:00:00', 995, NULL, NULL, 'Cash', 'over', NULL, 1),
(17, '2023-05-01 22:44:43', '2023-05-01 22:44:43', 1, NULL, 1, 31, '2023-03-08 00:00:00', 2500, NULL, NULL, 'Cash', 'over', NULL, 1),
(18, '2023-05-01 22:44:43', '2023-05-01 22:44:43', 1, NULL, 1, 32, '2023-03-08 00:00:00', 200, NULL, NULL, 'Cash', 'over', NULL, 1),
(19, '2023-05-01 23:11:07', '2023-05-01 23:11:07', 2, NULL, 12, 17, '2023-05-01 00:00:00', 10000, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(20, '2023-05-01 23:11:07', '2023-05-01 23:11:07', 2, NULL, 12, 83, '2023-05-01 00:00:00', 200, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(21, '2023-05-01 23:11:07', '2023-05-01 23:11:07', 2, NULL, 12, 84, '2023-05-01 00:00:00', 1250, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(22, '2023-05-01 23:11:07', '2023-05-01 23:11:07', 2, NULL, 12, 85, '2023-05-01 00:00:00', 995, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(23, '2023-05-01 23:11:07', '2023-05-01 23:11:07', 2, NULL, 12, 86, '2023-05-01 00:00:00', 2500, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(24, '2023-05-01 23:11:07', '2023-05-01 23:11:07', 2, NULL, 12, 87, '2023-05-01 00:00:00', 200, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(25, '2023-05-01 23:12:37', '2023-05-01 23:12:37', 2, NULL, 13, 18, '2023-05-01 00:00:00', 10000, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(26, '2023-05-01 23:12:37', '2023-05-01 23:12:37', 2, NULL, 13, 88, '2023-05-01 00:00:00', 200, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(27, '2023-05-01 23:12:37', '2023-05-01 23:12:37', 2, NULL, 13, 89, '2023-05-01 00:00:00', 1250, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(28, '2023-05-01 23:12:37', '2023-05-01 23:12:37', 2, NULL, 13, 90, '2023-05-01 00:00:00', 995, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(29, '2023-05-01 23:12:37', '2023-05-01 23:12:37', 2, NULL, 13, 91, '2023-05-01 00:00:00', 2500, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(30, '2023-05-01 23:12:37', '2023-05-01 23:12:37', 2, NULL, 13, 92, '2023-05-01 00:00:00', 189, NULL, NULL, 'Cash', 'Quick Receive', NULL, 1),
(31, '2023-05-01 23:13:09', '2023-05-01 23:13:09', 2, NULL, 5, 10, '2023-03-01 00:00:00', 8600, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(32, '2023-05-01 23:13:09', '2023-05-01 23:13:09', 2, NULL, 5, 48, '2023-03-01 00:00:00', 200, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(33, '2023-05-01 23:13:09', '2023-05-01 23:13:09', 2, NULL, 5, 49, '2023-03-01 00:00:00', 1250, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(34, '2023-05-01 23:13:09', '2023-05-01 23:13:09', 2, NULL, 5, 50, '2023-03-01 00:00:00', 995, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(35, '2023-05-01 23:13:09', '2023-05-01 23:13:09', 2, NULL, 5, 51, '2023-03-01 00:00:00', 955, NULL, NULL, 'Cash', 'Quick Receive', NULL, 1),
(36, '2023-05-01 23:13:39', '2023-05-01 23:13:39', 2, NULL, 4, 9, '2023-02-15 00:00:00', 10000, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(37, '2023-05-01 23:13:40', '2023-05-01 23:13:40', 2, NULL, 4, 43, '2023-02-15 00:00:00', 200, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(38, '2023-05-01 23:13:40', '2023-05-01 23:13:40', 2, NULL, 4, 44, '2023-02-15 00:00:00', 1250, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(39, '2023-05-01 23:13:40', '2023-05-01 23:13:40', 2, NULL, 4, 45, '2023-02-15 00:00:00', 772, NULL, NULL, 'Cash', 'Quick Receive', NULL, 1),
(40, '2023-05-01 23:14:06', '2023-05-01 23:14:06', 2, NULL, 13, 92, '2023-01-12 00:00:00', 11, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(41, '2023-05-01 23:14:44', '2023-05-01 23:14:44', 2, NULL, 16, 21, '2023-02-09 00:00:00', 10000, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(42, '2023-05-01 23:15:35', '2023-05-01 23:15:35', 2, NULL, 9, 14, '2023-03-01 00:00:00', 10000, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(43, '2023-05-01 23:15:35', '2023-05-01 23:15:35', 2, NULL, 9, 68, '2023-03-01 00:00:00', 200, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(44, '2023-05-01 23:15:35', '2023-05-01 23:15:35', 2, NULL, 9, 69, '2023-03-01 00:00:00', 1250, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(45, '2023-05-01 23:15:35', '2023-05-01 23:15:35', 2, NULL, 9, 70, '2023-03-01 00:00:00', 995, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(46, '2023-05-01 23:15:35', '2023-05-01 23:15:35', 2, NULL, 9, 71, '2023-03-01 00:00:00', 2500, NULL, NULL, 'Cash', 'Quick Receive : ', NULL, 1),
(47, '2023-05-01 23:15:35', '2023-05-01 23:15:35', 2, NULL, 9, 72, '2023-03-01 00:00:00', 55, NULL, NULL, 'Cash', 'Quick Receive', NULL, 1),
(48, '2023-05-01 23:16:08', '2023-05-01 23:16:08', 2, NULL, 18, 23, '2023-01-26 00:00:00', 8000, NULL, NULL, 'Cash', 'Quick Receive', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fee_heads`
--

CREATE TABLE `fee_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `fee_head_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_head_amount` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_heads`
--

INSERT INTO `fee_heads` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `fee_head_title`, `fee_head_amount`, `status`) VALUES
(1, '2023-05-01 21:07:05', '2023-05-01 21:08:06', 1, 1, 'REGISTRATION FEE', 200, 1),
(2, '2023-05-01 21:07:23', '2023-05-01 21:07:23', 1, NULL, 'STUDENT ID', 200, 1),
(3, '2023-05-01 21:07:39', '2023-05-01 21:07:39', 1, NULL, 'TUITION', 10000, 1),
(4, '2023-05-01 21:08:32', '2023-05-01 21:08:32', 1, NULL, 'PERSONNAL EMOLUMENTS', 2500, 1),
(5, '2023-05-01 21:09:09', '2023-05-01 21:09:09', 1, NULL, 'ELECTRICITY WATER & CONSERVACY', 1250, 1),
(6, '2023-05-01 21:09:46', '2023-05-01 21:09:46', 1, NULL, 'ACTIVITY FEES', 900, 1),
(7, '2023-05-01 21:10:30', '2023-05-01 21:10:30', 1, NULL, 'REPAIR MAITAINANCE & IMPROVEMENT', 655, 1),
(8, '2023-05-01 21:11:04', '2023-05-01 21:11:04', 1, NULL, 'LOCAL TRANSPORT & TRAVEL', 995, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fee_masters`
--

CREATE TABLE `fee_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `semester` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_head` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_due_date` datetime NOT NULL,
  `fee_amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_masters`
--

INSERT INTO `fee_masters` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `students_id`, `semester`, `fee_head`, `fee_due_date`, `fee_amount`, `status`) VALUES
(1, '2023-05-01 21:16:13', '2023-05-01 21:16:13', 1, NULL, 1, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(2, '2023-05-01 21:16:13', '2023-05-01 21:16:13', 1, NULL, 1, '1', '3', '2023-03-28 00:00:00', 10000, 1),
(3, '2023-05-01 21:16:13', '2023-05-01 21:16:13', 1, NULL, 1, '1', '8', '2023-03-29 00:00:00', 995, 1),
(4, '2023-05-01 21:16:13', '2023-05-01 21:16:13', 1, NULL, 1, '1', '5', '2023-03-22 00:00:00', 1250, 1),
(5, '2023-05-01 21:16:13', '2023-05-01 21:16:13', 1, NULL, 1, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(6, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 1, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(7, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 2, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(8, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 3, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(9, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 4, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(10, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 5, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(11, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 6, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(12, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 7, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(13, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 8, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(14, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 9, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(15, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 10, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(16, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 11, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(17, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 12, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(18, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 13, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(19, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 14, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(20, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 15, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(21, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 16, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(22, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 17, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(23, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 18, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(24, '2023-05-01 22:27:07', '2023-05-01 22:27:07', 1, NULL, 19, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(25, '2023-05-01 22:27:08', '2023-05-01 22:27:08', 1, NULL, 20, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(26, '2023-05-01 22:27:08', '2023-05-01 22:27:08', 1, NULL, 21, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(27, '2023-05-01 22:27:08', '2023-05-01 23:08:21', 1, 2, 22, '1', '3', '2023-03-29 00:00:00', 10000, 1),
(28, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 1, '1', '1', '2023-03-29 00:00:00', 200, 1),
(29, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 1, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(30, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 1, '1', '8', '2023-03-29 00:00:00', 995, 1),
(31, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 1, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(32, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 1, '1', '2', '2023-03-29 00:00:00', 200, 1),
(33, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 2, '1', '1', '2023-03-29 00:00:00', 200, 1),
(34, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 2, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(35, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 2, '1', '8', '2023-03-29 00:00:00', 995, 1),
(36, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 2, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(37, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 2, '1', '2', '2023-03-29 00:00:00', 200, 1),
(38, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 3, '1', '1', '2023-03-29 00:00:00', 200, 1),
(39, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 3, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(40, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 3, '1', '8', '2023-03-29 00:00:00', 995, 1),
(41, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 3, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(42, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 3, '1', '2', '2023-03-29 00:00:00', 200, 1),
(43, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 4, '1', '1', '2023-03-29 00:00:00', 200, 1),
(44, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 4, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(45, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 4, '1', '8', '2023-03-29 00:00:00', 995, 1),
(46, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 4, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(47, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 4, '1', '2', '2023-03-29 00:00:00', 200, 1),
(48, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 5, '1', '1', '2023-03-29 00:00:00', 200, 1),
(49, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 5, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(50, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 5, '1', '8', '2023-03-29 00:00:00', 995, 1),
(51, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 5, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(52, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 5, '1', '2', '2023-03-29 00:00:00', 200, 1),
(53, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 6, '1', '1', '2023-03-29 00:00:00', 200, 1),
(54, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 6, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(55, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 6, '1', '8', '2023-03-29 00:00:00', 995, 1),
(56, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 6, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(57, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 6, '1', '2', '2023-03-29 00:00:00', 200, 1),
(58, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 7, '1', '1', '2023-03-29 00:00:00', 200, 1),
(59, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 7, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(60, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 7, '1', '8', '2023-03-29 00:00:00', 995, 1),
(61, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 7, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(62, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 7, '1', '2', '2023-03-29 00:00:00', 200, 1),
(63, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 8, '1', '1', '2023-03-29 00:00:00', 200, 1),
(64, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 8, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(65, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 8, '1', '8', '2023-03-29 00:00:00', 995, 1),
(66, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 8, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(67, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 8, '1', '2', '2023-03-29 00:00:00', 200, 1),
(68, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 9, '1', '1', '2023-03-29 00:00:00', 200, 1),
(69, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 9, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(70, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 9, '1', '8', '2023-03-29 00:00:00', 995, 1),
(71, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 9, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(72, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 9, '1', '2', '2023-03-29 00:00:00', 200, 1),
(73, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 10, '1', '1', '2023-03-29 00:00:00', 200, 1),
(74, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 10, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(75, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 10, '1', '8', '2023-03-29 00:00:00', 995, 1),
(76, '2023-05-01 22:29:23', '2023-05-01 22:29:23', 1, NULL, 10, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(77, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 10, '1', '2', '2023-03-29 00:00:00', 200, 1),
(78, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 11, '1', '1', '2023-03-29 00:00:00', 200, 1),
(79, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 11, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(80, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 11, '1', '8', '2023-03-29 00:00:00', 995, 1),
(81, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 11, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(82, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 11, '1', '2', '2023-03-29 00:00:00', 200, 1),
(83, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 12, '1', '1', '2023-03-29 00:00:00', 200, 1),
(84, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 12, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(85, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 12, '1', '8', '2023-03-29 00:00:00', 995, 1),
(86, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 12, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(87, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 12, '1', '2', '2023-03-29 00:00:00', 200, 1),
(88, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 13, '1', '1', '2023-03-29 00:00:00', 200, 1),
(89, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 13, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(90, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 13, '1', '8', '2023-03-29 00:00:00', 995, 1),
(91, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 13, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(92, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 13, '1', '2', '2023-03-29 00:00:00', 200, 1),
(93, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 14, '1', '1', '2023-03-29 00:00:00', 200, 1),
(94, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 14, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(95, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 14, '1', '8', '2023-03-29 00:00:00', 995, 1),
(96, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 14, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(97, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 14, '1', '2', '2023-03-29 00:00:00', 200, 1),
(98, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 15, '1', '1', '2023-03-29 00:00:00', 200, 1),
(99, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 15, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(100, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 15, '1', '8', '2023-03-29 00:00:00', 995, 1),
(101, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 15, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(102, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 15, '1', '2', '2023-03-29 00:00:00', 200, 1),
(103, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 16, '1', '1', '2023-03-29 00:00:00', 200, 1),
(104, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 16, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(105, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 16, '1', '8', '2023-03-29 00:00:00', 995, 1),
(106, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 16, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(107, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 16, '1', '2', '2023-03-29 00:00:00', 200, 1),
(108, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 17, '1', '1', '2023-03-29 00:00:00', 200, 1),
(109, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 17, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(110, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 17, '1', '8', '2023-03-29 00:00:00', 995, 1),
(111, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 17, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(112, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 17, '1', '2', '2023-03-29 00:00:00', 200, 1),
(113, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 18, '1', '1', '2023-03-29 00:00:00', 200, 1),
(114, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 18, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(115, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 18, '1', '8', '2023-03-29 00:00:00', 995, 1),
(116, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 18, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(117, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 18, '1', '2', '2023-03-29 00:00:00', 200, 1),
(118, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 19, '1', '1', '2023-03-29 00:00:00', 200, 1),
(119, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 19, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(120, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 19, '1', '8', '2023-03-29 00:00:00', 995, 1),
(121, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 19, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(122, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 19, '1', '2', '2023-03-29 00:00:00', 200, 1),
(123, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 20, '1', '1', '2023-03-29 00:00:00', 200, 1),
(124, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 20, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(125, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 20, '1', '8', '2023-03-29 00:00:00', 995, 1),
(126, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 20, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(127, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 20, '1', '2', '2023-03-29 00:00:00', 200, 1),
(128, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 21, '1', '1', '2023-03-29 00:00:00', 200, 1),
(129, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 21, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(130, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 21, '1', '8', '2023-03-29 00:00:00', 995, 1),
(131, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 21, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(132, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 21, '1', '2', '2023-03-29 00:00:00', 200, 1),
(133, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 22, '1', '1', '2023-03-29 00:00:00', 200, 1),
(134, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 22, '1', '5', '2023-03-29 00:00:00', 1250, 1),
(135, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 22, '1', '8', '2023-03-29 00:00:00', 995, 1),
(136, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 22, '1', '4', '2023-03-29 00:00:00', 2500, 1),
(137, '2023-05-01 22:29:24', '2023-05-01 22:29:24', 1, NULL, 22, '1', '2', '2023-03-29 00:00:00', 200, 1),
(138, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 1, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(139, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 1, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(140, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 1, '2', '8', '2023-05-05 00:00:00', 995, 1),
(141, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 1, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(142, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 1, '2', '7', '2023-05-31 00:00:00', 655, 1),
(143, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 2, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(144, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 2, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(145, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 2, '2', '8', '2023-05-05 00:00:00', 995, 1),
(146, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 2, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(147, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 2, '2', '7', '2023-05-31 00:00:00', 655, 1),
(148, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 3, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(149, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 3, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(150, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 3, '2', '8', '2023-05-05 00:00:00', 995, 1),
(151, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 3, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(152, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 3, '2', '7', '2023-05-31 00:00:00', 655, 1),
(153, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 4, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(154, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 4, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(155, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 4, '2', '8', '2023-05-05 00:00:00', 995, 1),
(156, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 4, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(157, '2023-05-01 23:24:01', '2023-05-01 23:24:01', 1, NULL, 4, '2', '7', '2023-05-31 00:00:00', 655, 1),
(158, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 5, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(159, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 5, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(160, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 5, '2', '8', '2023-05-05 00:00:00', 995, 1),
(161, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 5, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(162, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 5, '2', '7', '2023-05-31 00:00:00', 655, 1),
(163, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 6, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(164, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 6, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(165, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 6, '2', '8', '2023-05-05 00:00:00', 995, 1),
(166, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 6, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(167, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 6, '2', '7', '2023-05-31 00:00:00', 655, 1),
(168, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 7, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(169, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 7, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(170, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 7, '2', '8', '2023-05-05 00:00:00', 995, 1),
(171, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 7, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(172, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 7, '2', '7', '2023-05-31 00:00:00', 655, 1),
(173, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 8, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(174, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 8, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(175, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 8, '2', '8', '2023-05-05 00:00:00', 995, 1),
(176, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 8, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(177, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 8, '2', '7', '2023-05-31 00:00:00', 655, 1),
(178, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 9, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(179, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 9, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(180, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 9, '2', '8', '2023-05-05 00:00:00', 995, 1),
(181, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 9, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(182, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 9, '2', '7', '2023-05-31 00:00:00', 655, 1),
(183, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 10, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(184, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 10, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(185, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 10, '2', '8', '2023-05-05 00:00:00', 995, 1),
(186, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 10, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(187, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 10, '2', '7', '2023-05-31 00:00:00', 655, 1),
(188, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 11, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(189, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 11, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(190, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 11, '2', '8', '2023-05-05 00:00:00', 995, 1),
(191, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 11, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(192, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 11, '2', '7', '2023-05-31 00:00:00', 655, 1),
(193, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 12, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(194, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 12, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(195, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 12, '2', '8', '2023-05-05 00:00:00', 995, 1),
(196, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 12, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(197, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 12, '2', '7', '2023-05-31 00:00:00', 655, 1),
(198, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 13, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(199, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 13, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(200, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 13, '2', '8', '2023-05-05 00:00:00', 995, 1),
(201, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 13, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(202, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 13, '2', '7', '2023-05-31 00:00:00', 655, 1),
(203, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 14, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(204, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 14, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(205, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 14, '2', '8', '2023-05-05 00:00:00', 995, 1),
(206, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 14, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(207, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 14, '2', '7', '2023-05-31 00:00:00', 655, 1),
(208, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 15, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(209, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 15, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(210, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 15, '2', '8', '2023-05-05 00:00:00', 995, 1),
(211, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 15, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(212, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 15, '2', '7', '2023-05-31 00:00:00', 655, 1),
(213, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 16, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(214, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 16, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(215, '2023-05-01 23:24:02', '2023-05-01 23:24:02', 1, NULL, 16, '2', '8', '2023-05-05 00:00:00', 995, 1),
(216, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 16, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(217, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 16, '2', '7', '2023-05-31 00:00:00', 655, 1),
(218, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 17, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(219, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 17, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(220, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 17, '2', '8', '2023-05-05 00:00:00', 995, 1),
(221, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 17, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(222, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 17, '2', '7', '2023-05-31 00:00:00', 655, 1),
(223, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 18, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(224, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 18, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(225, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 18, '2', '8', '2023-05-05 00:00:00', 995, 1),
(226, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 18, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(227, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 18, '2', '7', '2023-05-31 00:00:00', 655, 1),
(228, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 19, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(229, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 19, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(230, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 19, '2', '8', '2023-05-05 00:00:00', 995, 1),
(231, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 19, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(232, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 19, '2', '7', '2023-05-31 00:00:00', 655, 1),
(233, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 20, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(234, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 20, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(235, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 20, '2', '8', '2023-05-05 00:00:00', 995, 1),
(236, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 20, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(237, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 20, '2', '7', '2023-05-31 00:00:00', 655, 1),
(238, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 21, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(239, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 21, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(240, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 21, '2', '8', '2023-05-05 00:00:00', 995, 1),
(241, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 21, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(242, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 21, '2', '7', '2023-05-31 00:00:00', 655, 1),
(243, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 22, '2', '3', '2023-05-03 00:00:00', 10000, 1),
(244, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 22, '2', '5', '2023-05-05 00:00:00', 1250, 1),
(245, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 22, '2', '8', '2023-05-05 00:00:00', 995, 1),
(246, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 22, '2', '4', '2023-05-05 00:00:00', 2500, 1),
(247, '2023-05-01 23:24:03', '2023-05-01 23:24:03', 1, NULL, 22, '2', '7', '2023-05-31 00:00:00', 655, 1);

-- --------------------------------------------------------

--
-- Table structure for table `food_categories`
--

CREATE TABLE `food_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `foodCategories_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_item_food_schedule`
--

CREATE TABLE `food_item_food_schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `food_schedule_id` int(10) UNSIGNED NOT NULL,
  `food_item_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_schedules`
--

CREATE TABLE `food_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `days_id` int(10) UNSIGNED NOT NULL,
  `eating_times_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `institute` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salogan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_header` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_footer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googlePlus` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsApp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wordpress` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zones_id` int(10) UNSIGNED DEFAULT NULL,
  `quick_menu` tinyint(1) NOT NULL DEFAULT 0,
  `public_registration` tinyint(1) NOT NULL DEFAULT 0,
  `web_cms` tinyint(1) NOT NULL DEFAULT 1,
  `front_desk` tinyint(1) NOT NULL DEFAULT 1,
  `student_staff` tinyint(1) NOT NULL DEFAULT 1,
  `account` tinyint(1) NOT NULL DEFAULT 1,
  `inventory` tinyint(1) NOT NULL DEFAULT 1,
  `library` tinyint(1) NOT NULL DEFAULT 1,
  `attendance` tinyint(1) NOT NULL DEFAULT 1,
  `exam` tinyint(1) NOT NULL DEFAULT 1,
  `certificate` tinyint(1) NOT NULL DEFAULT 1,
  `hostel` tinyint(1) NOT NULL DEFAULT 1,
  `transport` tinyint(1) NOT NULL DEFAULT 1,
  `assignment` tinyint(1) NOT NULL DEFAULT 1,
  `upload_download` tinyint(1) NOT NULL DEFAULT 1,
  `meeting` tinyint(1) NOT NULL DEFAULT 1,
  `alert` tinyint(1) NOT NULL DEFAULT 1,
  `academic` tinyint(1) NOT NULL DEFAULT 1,
  `help` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `institute`, `salogan`, `copyright`, `address`, `phone`, `email`, `website`, `favicon`, `logo`, `tracking_code`, `print_header`, `print_footer`, `facebook`, `twitter`, `linkedIn`, `youtube`, `googlePlus`, `instagram`, `whatsApp`, `skype`, `pinterest`, `wordpress`, `time_zones_id`, `quick_menu`, `public_registration`, `web_cms`, `front_desk`, `student_staff`, `account`, `inventory`, `library`, `attendance`, `exam`, `certificate`, `hostel`, `transport`, `assignment`, `upload_download`, `meeting`, `alert`, `academic`, `help`, `status`) VALUES
(1, '2021-06-30 05:33:48', '2023-05-01 22:57:34', 1, 1, 'Erp System', NULL, 'Rising to your tech challanges', '60200, Meru', '0720287104', 'ims@pronic.co.ke', NULL, NULL, NULL, NULL, '<p><br></p><p><br></p><h1>ERP MANAGEMENT SYSTEM</h1>', '<h2>All rights reserved @ Pronic </h2>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `grading_scales`
--

CREATE TABLE `grading_scales` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `gradingType_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage_from` decimal(5,2) NOT NULL,
  `percentage_to` decimal(5,2) NOT NULL,
  `grade_point` int(11) DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grading_scales`
--

INSERT INTO `grading_scales` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `gradingType_id`, `name`, `percentage_from`, `percentage_to`, `grade_point`, `description`, `status`) VALUES
(1, '2023-05-01 18:27:37', '2023-05-01 18:27:37', 1, NULL, 1, 'A', '80.00', '100.00', 11, 'Excellent', 1),
(2, '2023-05-01 18:27:37', '2023-05-01 18:27:37', 1, NULL, 1, 'A-', '75.00', '80.00', 10, 'Very Good', 1),
(3, '2023-05-01 18:27:37', '2023-05-01 18:27:37', 1, NULL, 1, 'B+', '71.00', '74.00', 9, 'Good', 1),
(4, '2023-05-01 18:27:37', '2023-05-01 18:27:37', 1, NULL, 1, 'B', '65.00', '70.00', 8, 'Satisfactory', 1),
(5, '2023-05-01 18:27:37', '2023-05-01 18:27:37', 1, NULL, 1, 'B-', '61.00', '64.00', 7, 'Fair', 1),
(6, '2023-05-01 18:27:37', '2023-05-01 18:27:37', 1, NULL, 1, 'C+', '55.00', '60.00', 6, 'Weak', 1),
(7, '2023-05-01 18:27:37', '2023-05-01 18:27:37', 1, NULL, 1, 'C', '46.00', '54.00', 5, 'Very Weak', 1),
(8, '2023-05-01 18:27:37', '2023-05-01 18:27:37', 1, NULL, 1, 'C-', '41.00', '45.00', 4, 'Poor', 1),
(9, '2023-05-01 18:27:37', '2023-05-01 18:27:37', 1, NULL, 1, 'D+', '35.00', '40.00', 3, 'Very Poor', 1),
(10, '2023-05-01 18:27:37', '2023-05-01 18:27:37', 1, NULL, 1, 'D', '26.00', '34.00', 2, 'Fail', 1),
(11, '2023-05-01 18:27:37', '2023-05-01 18:27:37', 1, NULL, 1, 'D-', '16.00', '25.00', 1, 'Fail', 1),
(12, '2023-05-01 18:27:37', '2023-05-01 18:27:37', 1, NULL, 1, 'E', '0.00', '15.00', 0, 'Failure', 1);

-- --------------------------------------------------------

--
-- Table structure for table `grading_types`
--

CREATE TABLE `grading_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grading_types`
--

INSERT INTO `grading_types` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `slug`, `status`) VALUES
(1, '2023-05-01 18:27:36', '2023-05-01 18:27:36', 1, NULL, 'HIGH SCHOOL', 'HIGH-SCHOOL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `guardian_details`
--

CREATE TABLE `guardian_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `guardian_first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_last_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_eligibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_office_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_residence_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guardian_details`
--

INSERT INTO `guardian_details` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `guardian_first_name`, `guardian_middle_name`, `guardian_last_name`, `guardian_eligibility`, `guardian_occupation`, `guardian_office`, `guardian_office_number`, `guardian_residence_number`, `guardian_mobile_1`, `guardian_mobile_2`, `guardian_email`, `guardian_relation`, `guardian_address`, `guardian_image`, `status`) VALUES
(1, '2023-05-01 20:27:56', '2023-05-01 20:53:29', 1, NULL, 'MARK', NULL, 'TONY', NULL, NULL, NULL, NULL, NULL, '07175566555', NULL, NULL, 'FATHER', 'ISIOLO', NULL, 1),
(2, '2023-05-01 22:25:17', '2023-05-01 22:25:17', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(3, '2023-05-01 22:25:17', '2023-05-01 22:25:17', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(4, '2023-05-01 22:25:17', '2023-05-01 22:25:17', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(5, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(6, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(7, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(8, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(9, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(10, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(11, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(12, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(13, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(14, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(15, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(16, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(17, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(18, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(19, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(20, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(21, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(22, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warden` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warden_contact` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_meals`
--

CREATE TABLE `hostel_meals` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `days_id` int(10) UNSIGNED NOT NULL,
  `foods_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `library_circulations`
--

CREATE TABLE `library_circulations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_prefix` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_limit_days` int(10) UNSIGNED DEFAULT NULL,
  `issue_limit_books` int(10) UNSIGNED DEFAULT NULL,
  `fine_per_day` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `library_circulations`
--

INSERT INTO `library_circulations` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `user_type`, `slug`, `code_prefix`, `issue_limit_days`, `issue_limit_books`, `fine_per_day`, `status`) VALUES
(1, '2021-06-30 05:33:54', '2021-06-30 05:33:54', 1, NULL, 'Student', 'student', 'STUDLIB', 7, 5, 5, 1),
(2, '2021-06-30 05:33:54', '2021-06-30 05:33:54', 1, NULL, 'Staff', 'staff', 'STALIB', 15, 5, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `library_members`
--

CREATE TABLE `library_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_answer_sheets`
--

CREATE TABLE `mcq_answer_sheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mcq_exam_participants_id` int(10) UNSIGNED NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_exams`
--

CREATE TABLE `mcq_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty` int(10) UNSIGNED DEFAULT NULL,
  `semester` int(10) UNSIGNED DEFAULT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `mcq_instructions_id` int(10) UNSIGNED NOT NULL,
  `question_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dynamic',
  `no_of_question` int(11) DEFAULT NULL,
  `pass_mark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'date_duration',
  `duration` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `exam_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'one',
  `mark_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `result_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_exam_participants`
--

CREATE TABLE `mcq_exam_participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mcq_exams_id` int(10) UNSIGNED NOT NULL,
  `students_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_exam_questions`
--

CREATE TABLE `mcq_exam_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_instructions`
--

CREATE TABLE `mcq_instructions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_questions`
--

CREATE TABLE `mcq_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `mcq_question_groups_id` int(10) UNSIGNED NOT NULL,
  `mcq_question_levels_id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `explanation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hints` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mark` double(8,2) NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Single',
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_question_groups`
--

CREATE TABLE `mcq_question_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_question_levels`
--

CREATE TABLE `mcq_question_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_question_options`
--

CREATE TABLE `mcq_question_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `mcq_questions_id` int(10) UNSIGNED NOT NULL,
  `option` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `meeting_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_settings`
--

CREATE TABLE `meeting_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `identity` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_settings`
--

INSERT INTO `meeting_settings` (`id`, `created_at`, `updated_at`, `identity`, `logo`, `link`, `config`, `status`) VALUES
(1, NULL, NULL, 'Zoom', 'zoom', 'https://zoom.us', '{\"Key\":\"\",\"Secret\":\"\",\"Email\":\"\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_10_04_100236_create_staff_designations_table', 1),
(4, '2017_10_05_003733_create_grading_types_table', 1),
(5, '2017_10_05_003849_create_grading_scales_table', 1),
(6, '2017_10_05_072329_create_staff_table', 1),
(7, '2017_10_06_085150_create_faculties_table', 1),
(8, '2017_10_06_085202_create_semesters_table', 1),
(9, '2017_10_09_094821_create_attendance_statuses_table', 1),
(10, '2017_10_10_083645_create_time_zones_table', 1),
(11, '2017_10_21_012144_create_bed_statuses_table', 1),
(12, '2017_10_27_010354_create_student_statuses_table', 1),
(13, '2017_10_28_060832_create_book_statuses_table', 1),
(14, '2017_10_29_074155_create_student_batches_table', 1),
(15, '2017_11_06_084909_create_customers_table', 1),
(16, '2017_11_06_084909_create_students_table', 1),
(17, '2017_11_06_085106_create_parent_details_table', 1),
(18, '2017_11_06_085135_create_guardian_details_table', 1),
(19, '2017_11_07_091332_create_faculty_semester_table', 1),
(20, '2017_11_11_120928_create_addressinfos_table', 1),
(21, '2017_11_17_011606_create_documents_table', 1),
(22, '2017_11_18_005300_create_notes_table', 1),
(23, '2017_11_19_055352_create_fee_heads_table', 1),
(24, '2017_11_20_012242_create_fee_masters_table', 1),
(25, '2017_11_21_035458_create_fee_collections_table', 1),
(26, '2017_11_26_014317_create_book_categories_table', 1),
(27, '2017_11_27_010354_create_customer_statuses_table', 1),
(28, '2017_11_27_094949_create_book_masters_table', 1),
(29, '2017_11_27_095001_create_books_table', 1),
(30, '2017_11_29_084116_create_library_circulations_table', 1),
(31, '2017_11_30_015025_create_library_members_table', 1),
(32, '2017_12_02_010529_create_book_issues_table', 1),
(33, '2017_12_06_005401_create_transaction_heads_table', 1),
(34, '2017_12_06_012542_create_transactions_table', 1),
(35, '2017_12_08_084025_create_payroll_heads_table', 1),
(36, '2017_12_08_090233_create_payroll_masters_table', 1),
(37, '2017_12_08_090813_create_salary_pays_table', 1),
(38, '2017_12_13_084859_create_years_table', 1),
(39, '2017_12_13_084925_create_months_table', 1),
(40, '2017_12_14_062342_create_attendance_masters_table', 1),
(41, '2017_12_14_063449_create_attendances_table', 1),
(42, '2018_02_15_104206_create_settings_table', 1),
(43, '2018_02_18_061426_create_sms_emails_table', 1),
(44, '2018_02_18_061538_create_notices_table', 1),
(45, '2018_03_02_003733_create_categories_table', 1),
(46, '2018_03_02_003849_create_sub_categories_table', 1),
(47, '2018_03_02_173947_create_subjects_table', 1),
(48, '2018_03_02_180148_create_semester_subject_table', 1),
(49, '2018_03_03_140508_create_exams_table', 1),
(50, '2018_03_03_140529_create_exam_schedules_table', 1),
(51, '2018_03_03_140543_create_exam_mark_ledgers_table', 1),
(52, '2018_03_09_155741_create_hostels_table', 1),
(53, '2018_03_10_002019_create_room_types_table', 1),
(54, '2018_03_18_233110_create_rooms_table', 1),
(55, '2018_03_20_175730_create_beds_table', 1),
(56, '2018_03_21_181903_create_residents_table', 1),
(57, '2018_03_21_190050_create_resident_histories_table', 1),
(58, '2018_03_26_233817_create_days_table', 1),
(59, '2018_03_27_045931_create_food_categories_table', 1),
(60, '2018_03_27_050051_create_food_items_table', 1),
(61, '2018_03_27_050835_create_hostel_meals_table', 1),
(62, '2018_03_27_223813_create_eating_times_table', 1),
(63, '2018_03_27_225950_create_food_schedules_table', 1),
(64, '2018_03_30_001832_create_food_item_food_schedule_table', 1),
(65, '2018_03_30_234754_create_routes_table', 1),
(66, '2018_03_30_234825_create_vehicles_table', 1),
(67, '2018_03_30_234840_create_route_vehicles_table', 1),
(68, '2018_03_31_000843_create_vehicle_staffs_table', 1),
(69, '2018_04_02_062605_create_general_settings_table', 1),
(70, '2018_04_03_054649_create_email_settings_table', 1),
(71, '2018_04_03_054651_create_meeting_settings_table', 1),
(72, '2018_04_03_054708_create_sms_settings_table', 1),
(73, '2018_04_03_055400_create_alert_settings_table', 1),
(74, '2018_04_29_234215_create_academic_infos_table', 1),
(75, '2018_05_22_001204_entrust_setup_tables', 1),
(76, '2018_05_28_101725_create_student_guardians_table', 1),
(77, '2018_05_30_141644_create_payment_settings_table', 1),
(78, '2018_06_04_091509_create_transport_users_table', 1),
(79, '2018_06_04_092336_create_transport_histories_table', 1),
(80, '2018_06_06_055405_create_assignments_table', 1),
(81, '2018_06_06_055442_create_assignment_answers_table', 1),
(82, '2018_06_06_055503_create_download_table', 1),
(83, '2019_01_18_065901_create_products_table', 1),
(84, '2019_01_29_032038_create_vendors_table', 1),
(85, '2019_01_29_042314_create_stocks_table', 1),
(86, '2019_01_29_042738_create_product_prices_table', 1),
(87, '2019_04_06_021557_create_payment_methods_table', 1),
(88, '2019_04_06_031653_create_banks_table', 1),
(89, '2019_04_06_031713_create_bank_transactions_table', 1),
(90, '2019_04_08_063125_create_account_categories_table', 1),
(91, '2019_04_11_090124_create_jobs_table', 1),
(92, '2019_05_04_152142_create_certificate_templates_table', 1),
(93, '2019_05_10_192213_create_subject_attendances_table', 1),
(94, '2019_07_08_064020_create_audits_table', 1),
(95, '2019_08_10_065318_create_attendance_certificates_table', 1),
(96, '2019_08_10_205022_create_certificate_histories_table', 1),
(97, '2019_08_12_081920_create_transfer_certificates_table', 1),
(98, '2019_08_14_070841_create_bonafide_certificates_table', 1),
(99, '2019_08_14_203420_create_course_completion_certificates_table', 1),
(100, '2019_10_08_205822_create_book_requests_table', 1),
(101, '2019_11_24_184741_create_assets_table', 1),
(102, '2019_11_24_184850_create_semester_assets_table', 1),
(103, '2020_01_16_223708_create_purchases_table', 1),
(104, '2020_01_16_223806_create_purchase_details_table', 1),
(105, '2020_01_16_223831_create_purchase_returns_table', 1),
(106, '2020_01_16_223855_create_sales_table', 1),
(107, '2020_01_16_223910_create_sales_details_table', 1),
(108, '2020_01_16_223928_create_sales_returns_table', 1),
(109, '2020_02_18_004730_create_postal_exchange_types_table', 1),
(110, '2020_02_19_011008_create_postal_exchanges_table', 1),
(111, '2020_02_20_073315_create_visitor_purposes_table', 1),
(112, '2020_02_20_073316_create_visitor_logs_table', 1),
(113, '2020_02_25_192332_create_online_payments_table', 1),
(114, '2020_04_12_165239_create_meetings_table', 1),
(115, '2020_04_21_115723_create_character_certificates_table', 1),
(116, '2020_04_27_084132_create_institutions_table', 1),
(117, '2020_06_02_052634_create_contact_mesages_table', 1),
(118, '2020_06_02_084527_create_web_general_settings_table', 1),
(119, '2020_06_02_084552_create_web_home_settings_table', 1),
(120, '2020_06_02_084614_create_web_contact_us_settings_table', 1),
(121, '2020_06_02_084631_create_web_about_us_settings_table', 1),
(122, '2020_06_02_084708_create_web_menus_table', 1),
(123, '2020_06_02_084730_create_web_pages_table', 1),
(124, '2020_06_02_084748_create_web_menu_pages_table', 1),
(125, '2020_06_02_084801_create_web_sliders_table', 1),
(126, '2020_06_02_084836_create_web_blog_categories_table', 1),
(127, '2020_06_02_084847_create_web_blogs_table', 1),
(128, '2020_06_02_084934_create_web_notices_table', 1),
(129, '2020_06_02_084951_create_web_events_table', 1),
(130, '2020_06_02_085003_create_web_services_table', 1),
(131, '2020_06_02_085025_create_web_galleries_table', 1),
(132, '2020_06_02_085043_create_web_gallery_images_table', 1),
(133, '2020_06_02_085333_create_web_downloads_table', 1),
(134, '2020_06_02_085346_create_web_faqs_table', 1),
(135, '2020_06_02_085407_create_web_counters_table', 1),
(136, '2020_06_02_085439_create_web_client_awards_table', 1),
(137, '2020_06_02_085513_create_web_testimonials_table', 1),
(138, '2020_06_02_085612_create_web_pricings_table', 1),
(139, '2020_06_02_085659_create_web_subscribers_table', 1),
(140, '2020_06_03_070919_create_web_contact_lists_table', 1),
(141, '2020_06_03_141541_create_web_registrations_table', 1),
(142, '2020_06_03_141927_create_web_registration_academic_qualifications_table', 1),
(143, '2020_06_03_142036_create_web_registration_programmes_table', 1),
(144, '2020_06_03_142129_create_web_registration_work_experiences_table', 1),
(145, '2020_06_03_142204_create_web_registration_settings_table', 1),
(146, '2020_06_03_144224_create_contact_directory_groups_table', 1),
(147, '2020_06_03_144309_create_contact_directory_details_table', 1),
(148, '2020_06_04_122625_create_web_staff_table', 1),
(149, '2020_06_06_165013_create_online_registration_settings_table', 1),
(150, '2020_06_06_200541_create_online_registration_programs_table', 1),
(151, '2020_06_11_060457_create_mcq_instructions_table', 1),
(152, '2020_06_11_060724_create_mcq_question_levels_table', 1),
(153, '2020_06_11_060826_create_mcq_question_groups_table', 1),
(154, '2020_06_11_060924_create_mcq_questions_table', 1),
(155, '2020_06_11_061052_create_mcq_exams_table', 1),
(156, '2020_06_11_061455_create_mcq_question_options_table', 1),
(157, '2020_06_11_061557_create_mcq_answer_sheets_table', 1),
(158, '2020_06_11_090611_create_mcq_exam_participants_table', 1),
(159, '2020_06_11_091053_create_mcq_exam_questions_table', 1),
(160, '2021_04_21_062308_create_nirgam_utara_certificates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `months`
--

CREATE TABLE `months` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `months`
--

INSERT INTO `months` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'January', 1),
(2, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'February', 1),
(3, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'March', 1),
(4, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'April', 1),
(5, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'May', 1),
(6, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'June', 1),
(7, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'July', 1),
(8, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'August', 1),
(9, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'September', 1),
(10, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'October', 1),
(11, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'November', 1),
(12, '2021-06-30 05:33:57', '2021-06-30 05:33:57', 1, NULL, 'December', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nirgam_utara_certificates`
--

CREATE TABLE `nirgam_utara_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date_of_issue` date NOT NULL,
  `nu_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_leaving` date NOT NULL,
  `leaving_time_class` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_time_class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_school_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason_to_leave` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mention_body_mark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `any_other_remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `member_type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `display_group` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_payments`
--

CREATE TABLE `online_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_registration_programs`
--

CREATE TABLE `online_registration_programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `faculties_id` int(10) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_registration_settings`
--

CREATE TABLE `online_registration_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Online Application for Admission',
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `rules_status` tinyint(1) NOT NULL DEFAULT 0,
  `rules` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agreement_status` tinyint(1) NOT NULL DEFAULT 0,
  `agreement` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_guidelines` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_close_message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_details`
--

CREATE TABLE `parent_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `grandfather_first_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grandfather_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grandfather_last_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_last_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_eligibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_office_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_residence_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_last_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_eligibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_office_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_residence_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent_details`
--

INSERT INTO `parent_details` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `students_id`, `grandfather_first_name`, `grandfather_middle_name`, `grandfather_last_name`, `father_first_name`, `father_middle_name`, `father_last_name`, `father_eligibility`, `father_occupation`, `father_office`, `father_office_number`, `father_residence_number`, `father_mobile_1`, `father_mobile_2`, `father_email`, `mother_first_name`, `mother_middle_name`, `mother_last_name`, `mother_eligibility`, `mother_occupation`, `mother_office`, `mother_office_number`, `mother_residence_number`, `mother_mobile_1`, `mother_mobile_2`, `mother_email`, `father_image`, `mother_image`, `status`) VALUES
(1, '2023-05-01 20:27:56', '2023-05-01 20:53:29', 1, NULL, 1, NULL, NULL, NULL, 'MARK', NULL, 'TONY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WINNIE', NULL, 'GAKII', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1),
(2, '2023-05-01 22:25:17', '2023-05-01 22:25:17', 1, NULL, 2, '', '', '', '', 'TEST0', 'FATHER0', '', '', '', '', '', '', '', '', 'demo1', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(3, '2023-05-01 22:25:17', '2023-05-01 22:25:17', 1, NULL, 3, '', '', '', '', 'TEST1', 'FATHER1', '', '', '', '', '', '', '', '', 'demo2', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(4, '2023-05-01 22:25:17', '2023-05-01 22:25:17', 1, NULL, 4, '', '', '', '', 'TEST2', 'FATHER2', '', '', '', '', '', '', '', '', 'demo3', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(5, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 5, '', '', '', '', 'TEST3', 'FATHER3', '', '', '', '', '', '', '', '', 'demo4', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(6, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 6, '', '', '', '', 'TEST4', 'FATHER4', '', '', '', '', '', '', '', '', 'demo5', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(7, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 7, '', '', '', '', 'TEST5', 'FATHER5', '', '', '', '', '', '', '', '', 'demo6', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(8, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 8, '', '', '', '', 'TEST6', 'FATHER6', '', '', '', '', '', '', '', '', 'demo7', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(9, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 9, '', '', '', '', 'TEST7', 'FATHER7', '', '', '', '', '', '', '', '', 'demo8', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(10, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 10, '', '', '', '', 'TEST8', 'FATHER8', '', '', '', '', '', '', '', '', 'demo9', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(11, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 11, '', '', '', '', 'TEST9', 'FATHER9', '', '', '', '', '', '', '', '', 'demo10', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(12, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 12, '', '', '', '', 'TEST10', 'FATHER10', '', '', '', '', '', '', '', '', 'demo11', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(13, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 13, '', '', '', '', 'TEST11', 'FATHER11', '', '', '', '', '', '', '', '', 'demo12', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(14, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 14, '', '', '', '', 'TEST12', 'FATHER12', '', '', '', '', '', '', '', '', 'demo13', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(15, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 15, '', '', '', '', 'TEST13', 'FATHER13', '', '', '', '', '', '', '', '', 'demo14', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(16, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 16, '', '', '', '', 'TEST14', 'FATHER14', '', '', '', '', '', '', '', '', 'demo15', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(17, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 1, NULL, 17, '', '', '', '', 'TEST15', 'FATHER15', '', '', '', '', '', '', '', '', 'demo16', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(18, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, 18, '', '', '', '', 'TEST16', 'FATHER16', '', '', '', '', '', '', '', '', 'demo17', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(19, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, 19, '', '', '', '', 'TEST17', 'FATHER17', '', '', '', '', '', '', '', '', 'demo18', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(20, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, 20, '', '', '', '', 'TEST18', 'FATHER18', '', '', '', '', '', '', '', '', 'demo19', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(21, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, 21, '', '', '', '', 'TEST19', 'FATHER19', '', '', '', '', '', '', '', '', 'demo20', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1),
(22, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 1, NULL, 22, '', '', '', '', 'TEST20', 'FATHER20', '', '', '', '', '', '', '', '', 'demo21', 'TEST', 'MOTHER', '', '', '', '', '', '', '', '', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-06-30 05:34:12', '2021-06-30 05:34:12', 1, 1, 'Cash', 1),
(2, '2021-06-30 05:34:12', '2021-06-30 05:34:12', 1, 1, 'Bank', 1),
(3, '2021-06-30 05:34:12', '2021-06-30 05:34:12', 1, 1, 'Online Payment', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `identity` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `created_at`, `updated_at`, `identity`, `logo`, `link`, `config`, `status`) VALUES
(1, NULL, NULL, 'Stripe', 'stripe', 'https://stripe.com', '{\"Publishable_Key\":\"\",\"Secret_Key\":\"\"}', 0),
(2, NULL, NULL, 'Instamojo', 'instamojo', 'https://www.instamojo.com', '{\"API_KEY\":\"\",\"AUTH_TOKEN\":\"\"}', 0),
(3, NULL, NULL, 'PayUMoney', 'payumoney', 'https://www.payumoney.com', '{\"Merchant_Key\":\"\",\"Merchant_Salt\":\"\",\"Auth_Header\":\"\"}', 0),
(4, NULL, NULL, 'RozorPay', 'rozorpay', 'https://razorpay.com', '{\"Key\":\"\",\"Secret\":\"\"}', 0),
(5, NULL, NULL, 'PayStack', 'paystack', 'https://paystack.co', '{\"publicKey\":\"\",\"secretKey\":\"\",\"merchantEmail\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_heads`
--

CREATE TABLE `payroll_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_masters`
--

CREATE TABLE `payroll_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `tag_line` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payroll_head` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_head` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `group`, `name`, `display_name`, `description`, `group_head`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin Setup Permission', 'super-admin-index', 'Super Admin Setup Permission', 'Super Admin Setup Permission', 1, '2021-06-30 05:29:08', '2021-06-30 05:29:08'),
(2, 'Menu', 'expand-action-menu', 'Expand Nav Menu', 'Expand Nav Menu', 0, '2021-06-30 05:29:09', '2021-06-30 05:29:09'),
(3, 'Menu', 'admin-control', 'Admin Control', 'Admin Control Menu', 0, '2021-06-30 05:29:09', '2021-06-30 05:29:09'),
(4, 'Menu', 'dashboard', 'Dashboard', 'Dashboard Menu', 0, '2021-06-30 05:29:09', '2021-06-30 05:29:09'),
(5, 'Menu', 'web-cms', 'Web CMS', 'Web CMS Menu', 0, '2021-06-30 05:29:10', '2021-06-30 05:29:10'),
(6, 'Menu', 'front-office', 'Front Office', 'Front Office Menu', 0, '2021-06-30 05:29:10', '2021-06-30 05:29:10'),
(7, 'Menu', 'student-staff', 'Student-Staff', 'Student-Staff Menu', 0, '2021-06-30 05:29:10', '2021-06-30 05:29:10'),
(8, 'Menu', 'account', 'Account', 'Account Menu', 0, '2021-06-30 05:29:10', '2021-06-30 05:29:10'),
(9, 'Menu', 'inventory', 'Inventory', 'Inventory Menu', 0, '2021-06-30 05:29:10', '2021-06-30 05:29:10'),
(10, 'Menu', 'library', 'Library', 'Libaray Menu', 0, '2021-06-30 05:29:10', '2021-06-30 05:29:10'),
(11, 'Menu', 'attendance', 'Attendance', 'Attendance Menu', 0, '2021-06-30 05:29:10', '2021-06-30 05:29:10'),
(12, 'Menu', 'examination', 'Examination', 'Examination Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(13, 'Menu', 'certificate', 'Certificate', 'Certificate Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(14, 'Menu', 'hostel', 'Hostel', 'Hostel Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(15, 'Menu', 'transport', 'Transport', 'Transport Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(16, 'Menu', 'assignment', 'Assignment', 'Assignment Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(17, 'Menu', 'download', 'Download', 'Download Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(18, 'Menu', 'meeting', 'Meeting', 'Meeting Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(19, 'Menu', 'report', 'Report', 'Report Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(20, 'Menu', 'alert-center', 'Alert Center', 'Alert Center Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(21, 'Menu', 'academic', 'Academic Setup', 'Academic Setup Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(22, 'Menu', 'help', 'Help', 'Help Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(23, 'Student Menu', 'student-dashboard', 'Dashboard', 'Dashboard Student Menu', 0, '2021-06-30 05:29:11', '2021-06-30 05:29:11'),
(24, 'Student Menu', 'student-profile', 'Profile', 'Profile Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(25, 'Student Menu', 'student-profile-edit', 'Profile Edit', 'Profile Edit Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(26, 'Student Menu', 'student-fees', 'Fees', 'Fees Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(27, 'Student Menu', 'student-library', 'Library', 'Library Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(28, 'Student Menu', 'student-attendance', 'Attendance', 'Attendance Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(29, 'Student Menu', 'student-exam', 'Exam', 'Exam Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(30, 'Student Menu', 'student-hostel', 'Hostel', 'Hostel Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(31, 'Student Menu', 'student-transport', 'Transport', 'Transport Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(32, 'Student Menu', 'student-course', 'Course', 'Course Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(33, 'Student Menu', 'student-notice', 'Notice', 'Notice Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(34, 'Student Menu', 'student-download', 'Download', 'Download Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(35, 'Student Menu', 'student-assignment', 'Assignment', 'Assignment Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(36, 'Student Menu', 'student-meeting', 'Meeting', 'Meeting Student Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(37, 'Guardian Menu', 'guardian-dashboard', 'Dashboard', 'Dashboard Guardian Menu', 0, '2021-06-30 05:29:12', '2021-06-30 05:29:12'),
(38, 'Guardian Menu', 'guardian-profile-edit', 'Profile Edit', 'Profile Edit Guardian Menu', 0, '2021-06-30 05:29:13', '2021-06-30 05:29:13'),
(39, 'Guardian Menu', 'guardian-notice', 'Notice', 'Notice Guardian Menu', 0, '2021-06-30 05:29:13', '2021-06-30 05:29:13'),
(40, 'Guardian Menu', 'guardian-student-list', 'Student List', 'Student List Guardian Menu', 0, '2021-06-30 05:29:13', '2021-06-30 05:29:13'),
(41, 'Guardian Menu', 'guardian-student-profile', 'Student Profile', 'Student Profile Guardian Menu', 0, '2021-06-30 05:29:13', '2021-06-30 05:29:13'),
(42, 'Guardian Menu', 'guardian-student-fees', 'Fees', 'Fees Guardian Menu', 0, '2021-06-30 05:29:13', '2021-06-30 05:29:13'),
(43, 'Guardian Menu', 'guardian-student-library', 'Library', 'Library Guardian Menu', 0, '2021-06-30 05:29:13', '2021-06-30 05:29:13'),
(44, 'Guardian Menu', 'guardian-student-attendance', 'Attendance', 'Attendance Guardian Menu', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(45, 'Guardian Menu', 'guardian-student-hostel', 'Hostel', 'Hostel Guardian Menu', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(46, 'Guardian Menu', 'guardian-student-transport', 'Transport', 'Transport Guardian Menu', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(47, 'Guardian Menu', 'guardian-student-course', 'Course', 'Course Guardian Menu', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(48, 'Guardian Menu', 'guardian-student-download', 'Download', 'Download Guardian Menu', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(49, 'Guardian Menu', 'guardian-student-exam', 'Exam', 'Exam Guardian Menu', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(50, 'Guardian Menu', 'guardian-student-assignment', 'Assignment', 'Assignment Guardian Menu', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(51, 'Super Suit', 'super-suit', 'Super Suit', 'Super Suit', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(52, 'User Activity', 'user-activity-index', 'Index', 'User Activity Index', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(53, 'User Activity', 'user-activity-delete', 'Delete', 'Delete User Activity', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(54, 'User Activity', 'user-activity-bulk-action', 'Bulk(Active,InActive,Delete)', 'User Activity Bulk Action', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(55, 'Role', 'role-index', 'Index', 'Role Index', 0, '2021-06-30 05:29:14', '2021-06-30 05:29:14'),
(56, 'Role', 'role-add', 'Add', 'Role Add', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(57, 'Role', 'role-view', 'View', 'View Role', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(58, 'Role', 'role-edit', 'Edit', 'Edit Role', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(59, 'Role', 'role-delete', 'Delete', 'Delete Role', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(60, 'User', 'user-index', 'Index', 'User Index', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(61, 'User', 'user-add', 'Add', 'User Add', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(62, 'User', 'user-edit', 'Edit', 'Edit User', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(63, 'User', 'user-delete', 'Delete', 'Delete User', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(64, 'User', 'user-active', 'Active', 'Active User', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(65, 'User', 'user-in-active', 'In-Active', 'In-Active User', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(66, 'User', 'user-bulk-action', 'Bulk(Active,InActive,Delete)', 'User Bulk Action', 0, '2021-06-30 05:29:15', '2021-06-30 05:29:15'),
(67, 'General Setting', 'general-setting-index', 'Index', 'General Setting Index', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(68, 'General Setting', 'general-setting-add', 'Add', 'General Setting Add', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(69, 'General Setting', 'general-setting-edit', 'Edit', 'Edit General Setting', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(70, 'Alert Setting', 'alert-setting-index', 'Index', 'Alert Setting Index', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(71, 'Alert Setting', 'alert-setting-add', 'Add', 'Alert Setting Add', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(72, 'Alert Setting', 'alert-setting-edit', 'Edit', 'Edit Alert Setting', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(73, 'SMS Setting', 'sms-setting-index', 'Index', 'SMS Setting Index', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(74, 'SMS Setting', 'sms-setting-add', 'Add', 'SMS Setting Add', 0, '2021-06-30 05:29:16', '2021-06-30 05:29:16'),
(75, 'SMS Setting', 'sms-setting-edit', 'Edit', 'Edit SMS Setting', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(76, 'SMS Setting', 'sms-setting-active', 'Active', 'Active SMS', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(77, 'SMS Setting', 'sms-setting-in-active', 'In-Active', 'In-Active SMS', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(78, 'Email Setting', 'email-setting-index', 'Index', 'Email Setting Index', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(79, 'Email Setting', 'email-setting-add', 'Add', 'Email Setting Add', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(80, 'Email Setting', 'email-setting-edit', 'Edit', 'Edit Email Setting', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(81, 'Email Setting', 'email-setting-status-change', 'Status', 'Change Status', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(82, 'Payment Gateway Setting', 'payment-gateway-setting-index', 'Index', 'Payment Gateway Setting Index', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(83, 'Payment Gateway Setting', 'payment-gateway-setting-add', 'Add', 'Payment Gateway Setting Add', 0, '2021-06-30 05:29:17', '2021-06-30 05:29:17'),
(84, 'Payment Gateway Setting', 'payment-gateway-setting-edit', 'Edit', 'Edit Payment Gateway Setting', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(85, 'Payment Gateway Setting', 'payment-gateway-active', 'Active', 'Active Payment Gateway', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(86, 'Payment Gateway Setting', 'payment-gateway-in-active', 'In-Active', 'In-Active Payment Gateway', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(87, 'Payment Method Setting', 'payment-method-index', 'Index', 'Payment Method Setting Index', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(88, 'Payment Method Setting', 'payment-method-add', 'Add', 'Payment Method Setting Add', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(89, 'Payment Method Setting', 'payment-method-edit', 'Edit', 'Edit Payment Method Setting', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(90, 'Payment Method Setting', 'payment-method-delete', 'Delete', 'Delete Payment Method', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(91, 'Payment Method Setting', 'payment-method-active', 'Active', 'Active Payment Method', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(92, 'Payment Method Setting', 'payment-method-in-active', 'In-Active', 'In-Active Payment Method', 0, '2021-06-30 05:29:18', '2021-06-30 05:29:18'),
(93, 'Payment Method Setting', 'payment-method-bulk-action', 'Bulk(Active,In-Active,Delete)', 'Bulk Action', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(94, 'Meeting Setting', 'meeting-setting-index', 'Index', 'Meeting Setting Index', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(95, 'Meeting Setting', 'meeting-setting-add', 'Add', 'Meeting Setting Add', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(96, 'Meeting Setting', 'meeting-setting-edit', 'Edit', 'Edit Meeting Setting', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(97, 'Meeting Setting', 'meeting-setting-active', 'Active', 'Active SMS', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(98, 'Meeting Setting', 'meeting-setting-in-active', 'In-Active', 'In-Active SMS', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(99, 'Academic Management Permission', 'academic-index', 'Academic Permission', 'Academic Permission', 1, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(100, 'Faculty', 'faculty-index', 'Index', 'Faculty Index', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(101, 'Faculty', 'faculty-add', 'Add', 'Faculty Add', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(102, 'Faculty', 'faculty-edit', 'Edit', 'Edit Faculty', 0, '2021-06-30 05:29:19', '2021-06-30 05:29:19'),
(103, 'Faculty', 'faculty-delete', 'Delete', 'Delete Faculty', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(104, 'Faculty', 'faculty-active', 'Active', 'Active Faculty', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(105, 'Faculty', 'faculty-in-active', 'In-Active', 'In-Active Faculty', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(106, 'Faculty', 'faculty-bulk-action', 'Bulk(Active,InActive,Delete)', 'Faculty Bulk Action', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(107, 'Semester', 'semester-index', 'Index', 'Semester Index', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(108, 'Semester', 'semester-add', 'Add', 'Semester Add', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(109, 'Semester', 'semester-edit', 'Edit', 'Edit Semester', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(110, 'Semester', 'semester-delete', 'Delete', 'Delete Semester', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(111, 'Semester', 'semester-active', 'Active', 'Active Semester', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(112, 'Semester', 'semester-in-active', 'In-Active', 'In-Active Semester', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(113, 'Semester', 'semester-bulk-action', 'Bulk(Active,InActive,Delete)', 'Semester Bulk Action', 0, '2021-06-30 05:29:20', '2021-06-30 05:29:20'),
(114, 'Student Batch', 'student-batch-index', 'Index', 'Student Batch Index', 0, '2021-06-30 05:29:21', '2021-06-30 05:29:21'),
(115, 'Student Batch', 'student-batch-add', 'Add', 'Student Batch Add', 0, '2021-06-30 05:29:21', '2021-06-30 05:29:21'),
(116, 'Student Batch', 'student-batch-edit', 'Edit', 'Edit Student Batch', 0, '2021-06-30 05:29:21', '2021-06-30 05:29:21'),
(117, 'Student Batch', 'student-batch-delete', 'Delete', 'Delete Student Batch', 0, '2021-06-30 05:29:21', '2021-06-30 05:29:21'),
(118, 'Student Batch', 'student-batch-active', 'Active', 'Active Student Batch', 0, '2021-06-30 05:29:21', '2021-06-30 05:29:21'),
(119, 'Student Batch', 'student-batch-in-active', 'In-Active', 'In-Active Student Batch', 0, '2021-06-30 05:29:21', '2021-06-30 05:29:21'),
(120, 'Student Batch', 'student-batch-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Status Bulk Action', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(121, 'Grading', 'grading-index', 'Index', 'Grading Index', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(122, 'Grading', 'grading-add', 'Add', 'Grading Add', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(123, 'Grading', 'grading-edit', 'Edit', 'Edit Grading', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(124, 'Grading', 'grading-delete', 'Delete', 'Delete Grading', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(125, 'Grading', 'grading-active', 'Active', 'Active Grading', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(126, 'Grading', 'grading-in-active', 'In-Active', 'In-Active Grading', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(127, 'Grading', 'grading-bulk-action', 'Bulk(Active,InActive,Delete)', 'Grading Bulk Action', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(128, 'Subject / Course', 'subject-index', 'Index', 'Subject / Course Index', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(129, 'Subject / Course', 'subject-add', 'Add', 'Subject / Course Add', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(130, 'Subject / Course', 'subject-edit', 'Edit', 'Edit Subject / Course', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(131, 'Subject / Course', 'subject-delete', 'Delete', 'Delete Subject / Course', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(132, 'Subject / Course', 'subject-active', 'Active', 'Active Subject / Course', 0, '2021-06-30 05:29:22', '2021-06-30 05:29:22'),
(133, 'Subject / Course', 'subject-in-active', 'In-Active', 'In-Active Subject / Course', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(134, 'Subject / Course', 'subject-bulk-action', 'Bulk(Active,InActive,Delete)', 'Subject / Course Bulk Action', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(135, 'Student Status', 'student-status-index', 'Index', 'Student Status Index', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(136, 'Student Status', 'student-status-add', 'Add', 'Student Status Add', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(137, 'Student Status', 'student-status-edit', 'Edit', 'Edit Student Status', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(138, 'Student Status', 'student-status-delete', 'Delete', 'Delete Student Status', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(139, 'Student Status', 'student-status-active', 'Active', 'Active Student Status', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(140, 'Student Status', 'student-status-in-active', 'In-Active', 'In-Active Student Status', 0, '2021-06-30 05:29:23', '2021-06-30 05:29:23'),
(141, 'Student Status', 'student-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Status Bulk Action', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(142, 'Book Status', 'book-status-index', 'Index', 'Book Status Index', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(143, 'Book Status', 'book-status-add', 'Add', 'Book Status Add', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(144, 'Book Status', 'book-status-edit', 'Edit', 'Edit Book Status', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(145, 'Book Status', 'book-status-delete', 'Delete', 'Delete Book Status', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(146, 'Book Status', 'book-status-active', 'Active', 'Active Book Status', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(147, 'Book Status', 'book-status-in-active', 'In-Active', 'In-Active Book Status', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(148, 'Book Status', 'book-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Book Status Bulk Action', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(149, 'Bed Status', 'bed-status-index', 'Index', 'Bed Status Index', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(150, 'Bed Status', 'bed-status-add', 'Add', 'Bed Status Add', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(151, 'Bed Status', 'bed-status-edit', 'Edit', 'Edit Bed Status', 0, '2021-06-30 05:29:24', '2021-06-30 05:29:24'),
(152, 'Bed Status', 'bed-status-delete', 'Delete', 'Delete Bed Status', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(153, 'Bed Status', 'bed-status-active', 'Active', 'Active Bed Status', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(154, 'Bed Status', 'bed-status-in-active', 'In-Active', 'In-Active Bed Status', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(155, 'Bed Status', 'bed-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bed Status Bulk Action', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(156, 'Year', 'year-index', 'Index', 'Year Index', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(157, 'Year', 'year-add', 'Add', 'Year Add', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(158, 'Year', 'year-edit', 'Edit', 'Edit Year', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(159, 'Year', 'year-delete', 'Delete', 'Delete Year', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(160, 'Year', 'year-active', 'Active', 'Active Year', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(161, 'Year', 'year-in-active', 'In-Active', 'In-Active Year', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(162, 'Year', 'year-bulk-action', 'Bulk(Active,InActive,Delete)', 'Year Bulk Action', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(163, 'Year', 'year-active-status', 'Make Active', 'Year Make Active', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(164, 'Month', 'month-index', 'Index', 'Month Index', 0, '2021-06-30 05:29:25', '2021-06-30 05:29:25'),
(165, 'Month', 'month-add', 'Add', 'Month Add', 0, '2021-06-30 05:29:26', '2021-06-30 05:29:26'),
(166, 'Month', 'month-edit', 'Edit', 'Edit Month', 0, '2021-06-30 05:29:26', '2021-06-30 05:29:26'),
(167, 'Month', 'month-delete', 'Delete', 'Delete Month', 0, '2021-06-30 05:29:26', '2021-06-30 05:29:26'),
(168, 'Month', 'month-active', 'Active', 'Active Month', 0, '2021-06-30 05:29:26', '2021-06-30 05:29:26'),
(169, 'Month', 'month-in-active', 'In-Active', 'In-Active Month', 0, '2021-06-30 05:29:26', '2021-06-30 05:29:26'),
(170, 'Month', 'month-bulk-action', 'Bulk(Active,InActive,Delete)', 'Month Bulk Action', 0, '2021-06-30 05:29:26', '2021-06-30 05:29:26'),
(171, 'Day', 'day-index', 'Index', 'Day Index', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(172, 'Day', 'day-add', 'Add', 'Day Add', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(173, 'Day', 'day-edit', 'Edit', 'Edit Day', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(174, 'Day', 'day-delete', 'Delete', 'Delete Day', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(175, 'Day', 'day-active', 'Active', 'Active Day', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(176, 'Day', 'day-in-active', 'In-Active', 'In-Active Day', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(177, 'Day', 'day-bulk-action', 'Bulk(Active,InActive,Delete)', 'Day Bulk Action', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(178, 'Front Office Permission', 'front-office-index', 'Front Office Management', 'Front Office Management', 1, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(179, 'Postal Exchange', 'postal-exchange-index', 'Index', 'Postal Exchange Index', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(180, 'Postal Exchange', 'postal-exchange-add', 'Add', 'Postal Exchange Add', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(181, 'Postal Exchange', 'postal-exchange-edit', 'Edit', 'Edit Postal Exchange', 0, '2021-06-30 05:29:27', '2021-06-30 05:29:27'),
(182, 'Postal Exchange', 'postal-exchange-delete', 'Delete', 'Delete Postal Exchange', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(183, 'Postal Exchange', 'postal-exchange-bulk-action', 'Bulk(Active,InActive,Delete)', 'Postal Exchange Bulk Action', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(184, 'Exchange Type', 'postal-exchange-type-index', 'Index', 'Exchange Type Index', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(185, 'Exchange Type', 'postal-exchange-type-add', 'Add', 'Exchange Type Add', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(186, 'Exchange Type', 'postal-exchange-type-edit', 'Edit', 'Edit Exchange Type', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(187, 'Exchange Type', 'postal-exchange-type-active', 'Active', 'Active Exchange Type', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(188, 'Exchange Type', 'postal-exchange-type-in-active', 'In-Active', 'In-Active Exchange Type', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(189, 'Exchange Type', 'postal-exchange-type-delete', 'Delete', 'Delete Exchange Type', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(190, 'Exchange Type', 'postal-exchange-type-bulk-action', 'Bulk(Active,InActive,Delete)', 'Exchange Type Bulk Action', 0, '2021-06-30 05:29:28', '2021-06-30 05:29:28'),
(191, 'Visitor Log', 'visitor-index', 'Index', 'Visitor Log Index', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(192, 'Visitor Log', 'visitor-add', 'Add', 'Visitor Log Add', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(193, 'Visitor Log', 'visitor-edit', 'Edit', 'Edit Visitor Log', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(194, 'Visitor Log', 'visitor-active', 'Active', 'Active Visitor Log', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(195, 'Visitor Log', 'visitor-in-active', 'In-Active', 'In-Active Visitor Log', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(196, 'Visitor Log', 'visitor-delete', 'Delete', 'Delete Visitor Log', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(197, 'Visitor Log', 'visitor-bulk-action', 'Bulk(Active,InActive,Delete)', 'Visitor Log Bulk Action', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(198, 'Visit Purpose', 'visitor-purpose-index', 'Index', 'Visit Purpose Index', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(199, 'Visit Purpose', 'visitor-purpose-add', 'Add', 'Visit Purpose Add', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(200, 'Visit Purpose', 'visitor-purpose-edit', 'Edit', 'Edit Visit Purpose', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(201, 'Visit Purpose', 'visitor-purpose-active', 'Active', 'Active Visit Purpose', 0, '2021-06-30 05:29:29', '2021-06-30 05:29:29'),
(202, 'Visit Purpose', 'visitor-purpose-in-active', 'In-Active', 'In-Active Visit Purpose', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(203, 'Visit Purpose', 'visitor-purpose-delete', 'Delete', 'Delete Visit Purpose', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(204, 'Visit Purpose', 'visitor-purpose-bulk-action', 'Bulk(Active,InActive,Delete)', 'Visit Purpose Bulk Action', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(205, 'Student Management Permission', 'student-management-index', 'Student Management', 'Student Management', 1, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(206, 'Student', 'student-index', 'Index', 'Student Index', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(207, 'Student', 'student-registration', 'Registration', 'Student Registration', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(208, 'Student', 'student-view', 'View', 'View Student', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(209, 'Student', 'student-edit', 'Edit', 'Edit Student', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(210, 'Student', 'student-delete', 'Delete', 'Delete Student', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(211, 'Student', 'student-active', 'Active', 'Active Student', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(212, 'Student', 'student-in-active', 'In-Active', 'In-Active Student', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(213, 'Student', 'student-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Bulk Action', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(214, 'Student', 'student-delete-academic-info', 'Delete Academic Info', 'Student Delete Academic Info', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(215, 'Student', 'student-transfer', 'Transfer', 'Transfer Student', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(216, 'Student Document', 'student-document-index', 'Index', 'Student Document Index', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(217, 'Student Document', 'student-document-add', 'Add', 'Student Document Add', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(218, 'Student Document', 'student-document-edit', 'Edit', 'Edit Student Document', 0, '2021-06-30 05:29:30', '2021-06-30 05:29:30'),
(219, 'Student Document', 'student-document-delete', 'Delete', 'Delete Student Document', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(220, 'Student Document', 'student-document-active', 'Active', 'Active Student Document', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(221, 'Student Document', 'student-document-in-active', 'In-Active', 'In-Active Student Document', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(222, 'Student Document', 'student-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Document Bulk Action', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(223, 'Student Note', 'student-note-index', 'Index', 'Student Note Index', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(224, 'Student Note', 'student-note-add', 'Add', 'Student Note Add', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(225, 'Student Note', 'student-note-edit', 'Edit', 'Edit Student Note', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(226, 'Student Note', 'student-note-delete', 'Delete', 'Delete Student Note', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(227, 'Student Note', 'student-note-active', 'Active', 'Active Student Note', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(228, 'Student Note', 'student-note-in-active', 'In-Active', 'In-Active Student Note', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(229, 'Student Note', 'student-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Note Bulk Action', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(230, 'Report', 'student-report', 'Student', 'Student Report', 0, '2021-06-30 05:29:31', '2021-06-30 05:29:31'),
(231, 'Guardian Management Permission', 'guardian-management-index', 'Guardian Management', 'Guardian Management', 1, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(232, 'Guardian', 'guardian-index', 'Index', 'Guardian Index', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(233, 'Guardian', 'guardian-registration', 'Registration', 'Guardian Registration', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(234, 'Guardian', 'guardian-view', 'View', 'View Guardian', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(235, 'Guardian', 'guardian-edit', 'Edit', 'Edit Guardian', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(236, 'Guardian', 'guardian-delete', 'Delete', 'Delete Guardian', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(237, 'Guardian', 'guardian-active', 'Active', 'Active Guardian', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(238, 'Guardian', 'guardian-in-active', 'In-Active', 'In-Active Guardian', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(239, 'Guardian', 'guardian-bulk-action', 'Bulk(Active,InActive,Delete)', 'Guardian Bulk Action', 0, '2021-06-30 05:29:32', '2021-06-30 05:29:32'),
(240, 'Guardian', 'guardian-link', 'Link Student', 'Guardian Link Student', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(241, 'Guardian', 'guardian-unlink', 'UnLink Student', 'Guardian UnLink Student', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(242, 'Staff Management Permission', 'staff-management-index', 'Staff Management', 'Staff Management', 1, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(243, 'Staff', 'staff-index', 'Index', 'Staff Index', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(244, 'Staff', 'staff-add', 'Add', 'Staff Registration', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(245, 'Staff', 'staff-view', 'View', 'View Staff', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(246, 'Staff', 'staff-edit', 'Edit', 'Edit Staff', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(247, 'Staff', 'staff-delete', 'Delete', 'Delete Staff', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(248, 'Staff', 'staff-active', 'Active', 'Active Staff', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(249, 'Staff', 'staff-in-active', 'In-Active', 'In-Active Staff', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(250, 'Staff', 'staff-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Bulk Action', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(251, 'Staff Document', 'staff-document-index', 'Index', 'Staff Document Index', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(252, 'Staff Document', 'staff-document-add', 'Add', 'Staff Document Add', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(253, 'Staff Document', 'staff-document-edit', 'Edit', 'Edit Staff Document', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(254, 'Staff Document', 'staff-document-delete', 'Delete', 'Delete Staff Document', 0, '2021-06-30 05:29:33', '2021-06-30 05:29:33'),
(255, 'Staff Document', 'staff-document-active', 'Active', 'Active Staff Document', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(256, 'Staff Document', 'staff-document-in-active', 'In-Active', 'In-Active Staff Document', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(257, 'Staff Document', 'staff-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Document Bulk Action', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(258, 'Staff Note', 'staff-note-index', 'Index', 'Staff Note Index', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(259, 'Staff Note', 'staff-note-add', 'Add', 'Staff Note Add', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(260, 'Staff Note', 'staff-note-edit', 'Edit', 'Edit Staff Note', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(261, 'Staff Note', 'staff-note-delete', 'Delete', 'Delete Staff Note', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(262, 'Staff Note', 'staff-note-active', 'Active', 'Active Staff Note', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(263, 'Staff Note', 'staff-note-in-active', 'In-Active', 'In-Active Staff Note', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(264, 'Staff Note', 'staff-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Note Bulk Action', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(265, 'Staff Designation', 'staff-designation-index', 'Index', 'Staff Designation Index', 0, '2021-06-30 05:29:34', '2021-06-30 05:29:34'),
(266, 'Staff Designation', 'staff-designation-add', 'Add', 'Staff Designation Add', 0, '2021-06-30 05:29:35', '2021-06-30 05:29:35'),
(267, 'Staff Designation', 'staff-designation-edit', 'Edit', 'Edit Staff Designation', 0, '2021-06-30 05:29:35', '2021-06-30 05:29:35'),
(268, 'Staff Designation', 'staff-designation-delete', 'Delete', 'Delete Staff Designation', 0, '2021-06-30 05:29:36', '2021-06-30 05:29:36'),
(269, 'Staff Designation', 'staff-designation-active', 'Active', 'Active Staff Designation', 0, '2021-06-30 05:29:36', '2021-06-30 05:29:36'),
(270, 'Staff Designation', 'staff-designation-in-active', 'In-Active', 'In-Active Staff Designation', 0, '2021-06-30 05:29:36', '2021-06-30 05:29:36'),
(271, 'Staff Designation', 'staff-designation-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Designation Bulk Action', 0, '2021-06-30 05:29:36', '2021-06-30 05:29:36'),
(272, 'Report', 'staff-report', 'Staff', 'Staff Report', 0, '2021-06-30 05:29:36', '2021-06-30 05:29:36'),
(273, 'Account Management Permission', 'account-management-index', 'Account Management', 'Account Management', 1, '2021-06-30 05:29:36', '2021-06-30 05:29:36'),
(274, 'Fees', 'fees-index', 'Index', 'Student Fees Index', 0, '2021-06-30 05:29:36', '2021-06-30 05:29:36'),
(275, 'Fees', 'fees-balance', 'Balance', 'Fees Balance', 0, '2021-06-30 05:29:37', '2021-06-30 05:29:37'),
(276, 'Fees Head', 'fees-head-index', 'Index', 'Fees Head Index', 0, '2021-06-30 05:29:37', '2021-06-30 05:29:37'),
(277, 'Fees Head', 'fees-head-add', 'Add', 'Fees Head Add', 0, '2021-06-30 05:29:37', '2021-06-30 05:29:37'),
(278, 'Fees Head', 'fees-head-edit', 'Edit', 'Edit Fees Head', 0, '2021-06-30 05:29:37', '2021-06-30 05:29:37'),
(279, 'Fees Head', 'fees-head-delete', 'Delete', 'Delete Fees Head', 0, '2021-06-30 05:29:37', '2021-06-30 05:29:37'),
(280, 'Fees Head', 'fees-head-active', 'Active', 'Active Fees Head', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(281, 'Fees Head', 'fees-head-in-active', 'In-Active', 'In-Active Fees Head', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(282, 'Fees Head', 'fees-head-bulk-action', 'Bulk(Active,InActive,Delete)', 'Fees Head Bulk Action', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(283, 'Fees Master', 'fees-master-index', 'Index', 'Fees Master Index', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(284, 'Fees Master', 'fees-master-add', 'Add', 'Fees Master Add', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(285, 'Fees Master', 'fees-master-edit', 'Edit', 'Edit Fees Master', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(286, 'Fees Master', 'fees-master-delete', 'Delete', 'Delete Fees Master', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(287, 'Fees Master', 'fees-master-active', 'Active', 'Active Fees Master', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(288, 'Fees Master', 'fees-master-in-active', 'In-Active', 'In-Active Fees Master', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(289, 'Fees Master', 'fees-master-bulk-action', 'Bulk(Active,InActive,Delete)', 'Fees Master Bulk Action', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(290, 'Quick Fee Receive', 'fees-quick-receive-add', 'Collect', 'Quick Fee Receive Index', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(291, 'Fees Collection', 'fees-collection-index', 'Index', 'Fees Collection Index', 0, '2021-06-30 05:29:38', '2021-06-30 05:29:38'),
(292, 'Fees Collection', 'fees-collection-add', 'Add', 'Fees Collection Add', 0, '2021-06-30 05:29:39', '2021-06-30 05:29:39'),
(293, 'Fees Collection', 'fees-collection-view', 'View', 'View Fees Collection', 0, '2021-06-30 05:29:39', '2021-06-30 05:29:39'),
(294, 'Fees Collection', 'fees-collection-delete', 'Delete', 'Delete Fees Collection', 0, '2021-06-30 05:29:39', '2021-06-30 05:29:39'),
(295, 'Online Fee Payment', 'fees-online-payment-pay', 'Pay', 'Pay Online Fee', 0, '2021-06-30 05:29:39', '2021-06-30 05:29:39'),
(296, 'Online Fee Payment', 'fees-online-payment-index', 'Index', 'Index Online Fee Payment', 0, '2021-06-30 05:29:39', '2021-06-30 05:29:39'),
(297, 'Online Fee Payment', 'fees-online-payment-view', 'View', 'View Online Fee Payment', 0, '2021-06-30 05:29:39', '2021-06-30 05:29:39'),
(298, 'Online Fee Payment', 'fees-online-payment-verify', 'Verify', 'Verify Online Fee Payment', 0, '2021-06-30 05:29:39', '2021-06-30 05:29:39'),
(299, 'Payroll', 'payroll-index', 'Index', 'Staff Payroll Index', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(300, 'Payroll', 'payroll-balance', 'Balance', 'Payroll Balance', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(301, 'Payroll Head', 'payroll-head-index', 'Index', 'Payroll Head Index', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(302, 'Payroll Head', 'payroll-head-add', 'Add', 'Payroll Head Add', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(303, 'Payroll Head', 'payroll-head-edit', 'Edit', 'Edit Payroll Head', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(304, 'Payroll Head', 'payroll-head-delete', 'Delete', 'Delete Payroll Head', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(305, 'Payroll Head', 'payroll-head-active', 'Active', 'Active Payroll Head', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(306, 'Payroll Head', 'payroll-head-in-active', 'In-Active', 'In-Active Payroll Head', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(307, 'Payroll Head', 'payroll-head-bulk-action', 'Bulk(Active,InActive,Delete)', 'Payroll Head Bulk Action', 0, '2021-06-30 05:29:40', '2021-06-30 05:29:40'),
(308, 'Payroll Master', 'payroll-master-index', 'Index', 'Payroll Master Index', 0, '2021-06-30 05:29:41', '2021-06-30 05:29:41'),
(309, 'Payroll Master', 'payroll-master-add', 'Add', 'Payroll Master Add', 0, '2021-06-30 05:29:41', '2021-06-30 05:29:41'),
(310, 'Payroll Master', 'payroll-master-edit', 'Edit', 'Edit Payroll Master', 0, '2021-06-30 05:29:41', '2021-06-30 05:29:41'),
(311, 'Payroll Master', 'payroll-master-delete', 'Delete', 'Delete Payroll Master', 0, '2021-06-30 05:29:41', '2021-06-30 05:29:41'),
(312, 'Payroll Master', 'payroll-master-active', 'Active', 'Active Payroll Master', 0, '2021-06-30 05:29:41', '2021-06-30 05:29:41'),
(313, 'Payroll Master', 'payroll-master-in-active', 'In-Active', 'In-Active Payroll Master', 0, '2021-06-30 05:29:42', '2021-06-30 05:29:42'),
(314, 'Payroll Master', 'payroll-master-bulk-action', 'Bulk(Active,InActive,Delete)', 'Payroll Master Bulk Action', 0, '2021-06-30 05:29:42', '2021-06-30 05:29:42'),
(315, 'Salary Pay', 'salary-payment-index', 'Index', 'Salary Pay Index', 0, '2021-06-30 05:29:42', '2021-06-30 05:29:42'),
(316, 'Salary Pay', 'salary-payment-add', 'Add', 'Salary Pay Add', 0, '2021-06-30 05:29:42', '2021-06-30 05:29:42'),
(317, 'Salary Pay', 'salary-payment-view', 'View', 'View Salary Pay', 0, '2021-06-30 05:29:42', '2021-06-30 05:29:42'),
(318, 'Salary Pay', 'salary-payment-delete', 'Delete', 'Delete Salary Pay', 0, '2021-06-30 05:29:42', '2021-06-30 05:29:42'),
(319, 'Account Group', 'account-group-index', 'Index', 'Account Group Index', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(320, 'Account Group', 'account-group-add', 'Add', 'Account Group Add', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(321, 'Account Group', 'account-group-edit', 'Edit', 'Edit Account Group', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(322, 'Account Group', 'account-group-delete', 'Delete', 'Delete Account Group', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(323, 'Account Group', 'account-group-active', 'Active', 'Active Account Group', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(324, 'Account Group', 'account-group-in-active', 'In-Active', 'In-Active Account Group', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(325, 'Account Group', 'account-group-bulk-action', 'Bulk(Active,InActive,Delete)', 'Account Group Bulk Action', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(326, 'Account Group', 'account-group-chart-of-account', 'Chart of Account', 'Account Group Chart of Account', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(327, 'Transaction Head', 'transaction-head-index', 'Index', 'Transaction Head Index', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(328, 'Transaction Head', 'transaction-head-add', 'Add', 'Transaction Head Add', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(329, 'Transaction Head', 'transaction-head-edit', 'Edit', 'Edit Transaction Head', 0, '2021-06-30 05:29:43', '2021-06-30 05:29:43'),
(330, 'Transaction Head', 'transaction-head-delete', 'Delete', 'Delete Transaction Head', 0, '2021-06-30 05:29:44', '2021-06-30 05:29:44'),
(331, 'Transaction Head', 'transaction-head-active', 'Active', 'Active Transaction Head', 0, '2021-06-30 05:29:44', '2021-06-30 05:29:44'),
(332, 'Transaction Head', 'transaction-head-in-active', 'In-Active', 'In-Active Transaction Head', 0, '2021-06-30 05:29:44', '2021-06-30 05:29:44'),
(333, 'Transaction Head', 'transaction-head-bulk-action', 'Bulk(Active,InActive,Delete)', 'Payroll Head Bulk Action', 0, '2021-06-30 05:29:44', '2021-06-30 05:29:44'),
(334, 'Transaction', 'transaction-index', 'Index', 'Transaction Index', 0, '2021-06-30 05:29:44', '2021-06-30 05:29:44'),
(335, 'Transaction', 'transaction-add', 'Add', 'Transaction Add', 0, '2021-06-30 05:29:44', '2021-06-30 05:29:44'),
(336, 'Transaction', 'transaction-edit', 'Edit', 'Edit Transaction', 0, '2021-06-30 05:29:44', '2021-06-30 05:29:44'),
(337, 'Transaction', 'transaction-delete', 'Delete', 'Delete Transaction', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(338, 'Transaction', 'transaction-active', 'Active', 'Active Transaction', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(339, 'Transaction', 'transaction-in-active', 'In-Active', 'In-Active Transaction', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(340, 'Transaction', 'transaction-bulk-action', 'Bulk(Active,InActive,Delete)', 'Transaction Bulk Action', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(341, 'Bank', 'bank-index', 'Index', 'Bank Index', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(342, 'Bank', 'bank-add', 'Add', 'Bank Add', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(343, 'Bank', 'bank-edit', 'Edit', 'Edit Bank', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(344, 'Bank', 'bank-view', 'View', 'View Bank', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(345, 'Bank', 'bank-delete', 'Delete', 'Delete Bank', 0, '2021-06-30 05:29:45', '2021-06-30 05:29:45'),
(346, 'Bank', 'bank-active', 'Active', 'Active Bank', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(347, 'Bank', 'bank-in-active', 'In-Active', 'In-Active Bank', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(348, 'Bank', 'bank-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bank Bulk Action', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(349, 'Bank Transaction', 'bank-transaction-index', 'Index', 'Bank Transaction Index', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(350, 'Bank Transaction', 'bank-transaction-add', 'Add', 'Bank Transaction Add', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(351, 'Bank Transaction', 'bank-transaction-delete', 'Delete', 'Delete Bank Transaction', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(352, 'Bank Transaction', 'bank-transaction-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bank Transaction Bulk Action', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(353, 'Account Print', 'fee-print-master', 'Master Slip', 'Fee Master Slip', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(354, 'Account Print', 'fee-print-collection', 'Collection', 'Print Fee Collection', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(355, 'Account Print', 'fee-print-today-receipt', 'Today Short Receipt', 'Print Today Short Receipt', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(356, 'Account Print', 'fee-print-today-detail-receipt', 'Today Detail Receipt', 'Print Today Detail Receip', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(357, 'Account Print', 'fee-print-student-ledger', 'Student Ledger', 'Print Student Ledger', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(358, 'Account Print', 'fee-print-student-due', 'Due Short Slip', 'Print Due Short Slip', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(359, 'Account Print', 'fee-print-student-due-detail', 'Due Detail Slip', 'Print Due Detail Slip', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(360, 'Account Print', 'fee-print-bulk-due-slip', 'Bulk Due Short Slip', 'Print Bulk Due Short Slip', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(361, 'Account Print', 'fee-print-bulk-due-detail-slip', 'Bulk Due Detail SLip', 'Print Bulk Due Detail SLip', 0, '2021-06-30 05:29:46', '2021-06-30 05:29:46'),
(362, 'Account Report', 'report-cash-book', 'Cashbook', 'Cashbook Detail', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(363, 'Account Report', 'report-fee-collection', 'Fee Collection', 'Fee Collection Detail', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(364, 'Account Report', 'report-fee-collection-head', 'Fee Collection Head', 'Fee Collection Head Detail', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(365, 'Account Report', 'report-fee-online-payment', 'Online Payment', 'Fee Online Payment', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(366, 'Account Report', 'report-balance-fee', 'Fee Balance Statement', 'Fee Balance Statement', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(367, 'Account Report', 'transaction-head-view', 'Statement of Ledger', 'View Transaction Head', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(368, 'Account Report', 'transaction-head-balance-statement', 'Ledger Balance Statement', 'View Transaction Head', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(369, 'Inventory Management Permission', 'inventory-index', 'Inventory Management', 'Inventory Management', 1, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(370, 'Assets', 'assets-index', 'Index', 'Assets Index', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(371, 'Assets', 'assets-add', 'Add', 'Assets Add', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(372, 'Assets', 'assets-edit', 'Edit', 'Edit Assets', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(373, 'Assets', 'assets-view', 'View', 'View Assets', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(374, 'Assets', 'assets-delete', 'Delete', 'Delete Assets', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(375, 'Assets', 'assets-active', 'Active', 'Active Assets', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(376, 'Assets', 'assets-in-active', 'In-Active', 'In-Active Assets', 0, '2021-06-30 05:29:47', '2021-06-30 05:29:47'),
(377, 'Assets', 'assets-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bank Bulk Action', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(378, 'SemesterAssets', 'sem-assets-index', 'Index', 'SemesterAssets Index', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(379, 'SemesterAssets', 'sem-assets-add', 'Add', 'SemesterAssets Add', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(380, 'SemesterAssets', 'sem-assets-delete', 'Delete', 'Delete SemesterAssets', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(381, 'Product', 'product-index', 'Index', 'Product Index', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(382, 'Product', 'product-add', 'Add', 'Product Add', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(383, 'Product', 'product-view', 'View', 'Product View', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(384, 'Product', 'product-edit', 'Edit', 'Edit Product', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(385, 'Product', 'product-delete', 'Delete', 'Delete Product', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(386, 'Product', 'product-active', 'Active', 'Active Product', 0, '2021-06-30 05:29:48', '2021-06-30 05:29:48'),
(387, 'Product', 'product-in-active', 'In-Active', 'In-Active Product', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(388, 'Product', 'product-bulk-action', 'Bulk(Active,InActive,Delete)', 'Product Bulk Action', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(389, 'Product Category', 'product-category-index', 'Index', 'Product Category Index', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(390, 'Product Category', 'product-category-add', 'Add', 'Product Category Add', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(391, 'Product Category', 'product-category-edit', 'Edit', 'Edit Product Category', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(392, 'Product Category', 'product-category-delete', 'Delete', 'Delete Product Category', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(393, 'Product Category', 'product-category-active', 'Active', 'Active Product Category', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(394, 'Product Category', 'product-category-in-active', 'In-Active', 'In-Active Product Category', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(395, 'Product Category', 'product-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Product Category Bulk Action', 0, '2021-06-30 05:29:49', '2021-06-30 05:29:49'),
(396, 'Customer', 'customer-index', 'Index', 'Customer Index', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(397, 'Customer', 'customer-registration', 'Registration', 'Customer Registration', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50');
INSERT INTO `permissions` (`id`, `group`, `name`, `display_name`, `description`, `group_head`, `created_at`, `updated_at`) VALUES
(398, 'Customer', 'customer-view', 'View', 'View Customer', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(399, 'Customer', 'customer-edit', 'Edit', 'Edit Customer', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(400, 'Customer', 'customer-delete', 'Delete', 'Delete Customer', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(401, 'Customer', 'customer-active', 'Active', 'Active Customer', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(402, 'Customer', 'customer-in-active', 'In-Active', 'In-Active Customer', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(403, 'Customer', 'customer-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Bulk Action', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(404, 'Customer', 'customer-bulk-registration', 'Bulk Registration', 'Bulk Registration', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(405, 'Customer Document', 'customer-document-index', 'Index', 'Customer Document Index', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(406, 'Customer Document', 'customer-document-add', 'Add', 'Customer Document Add', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(407, 'Customer Document', 'customer-document-edit', 'Edit', 'Edit Customer Document', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(408, 'Customer Document', 'customer-document-delete', 'Delete', 'Delete Customer Document', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(409, 'Customer Document', 'customer-document-active', 'Active', 'Active Customer Document', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(410, 'Customer Document', 'customer-document-in-active', 'In-Active', 'In-Active Customer Document', 0, '2021-06-30 05:29:50', '2021-06-30 05:29:50'),
(411, 'Customer Document', 'customer-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Document Bulk Action', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(412, 'Customer Note', 'customer-note-index', 'Index', 'Customer Note Index', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(413, 'Customer Note', 'customer-note-add', 'Add', 'Customer Note Add', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(414, 'Customer Note', 'customer-note-edit', 'Edit', 'Edit Customer Note', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(415, 'Customer Note', 'customer-note-delete', 'Delete', 'Delete Customer Note', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(416, 'Customer Note', 'customer-note-active', 'Active', 'Active Customer Note', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(417, 'Customer Note', 'customer-note-in-active', 'In-Active', 'In-Active Customer Note', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(418, 'Customer Note', 'customer-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Note Bulk Action', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(419, 'Customer Status', 'customer-status-index', 'Index', 'Customer Status Index', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(420, 'Customer Status', 'customer-status-add', 'Add', 'Customer Status Add', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(421, 'Customer Status', 'customer-status-edit', 'Edit', 'Edit Customer Status', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(422, 'Customer Status', 'customer-status-delete', 'Delete', 'Delete Customer Status', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(423, 'Customer Status', 'customer-status-active', 'Active', 'Active Customer Status', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(424, 'Customer Status', 'customer-status-in-active', 'In-Active', 'In-Active Customer Status', 0, '2021-06-30 05:29:51', '2021-06-30 05:29:51'),
(425, 'Customer Status', 'customer-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Customer Status Bulk Action', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(426, 'Vendor', 'vendor-index', 'Index', 'Vendor Index', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(427, 'Vendor', 'vendor-registration', 'Registration', 'Vendor Registration', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(428, 'Vendor', 'vendor-view', 'View', 'View Vendor', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(429, 'Vendor', 'vendor-edit', 'Edit', 'Edit Vendor', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(430, 'Vendor', 'vendor-delete', 'Delete', 'Delete Vendor', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(431, 'Vendor', 'vendor-active', 'Active', 'Active Vendor', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(432, 'Vendor', 'vendor-in-active', 'In-Active', 'In-Active Vendor', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(433, 'Vendor', 'vendor-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vendor Bulk Action', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(434, 'Vendor', 'vendor-bulk-registration', 'Bulk Registration', 'Bulk Registration', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(435, 'Vendor Document', 'vendor-document-index', 'Index', 'Vendor Document Index', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(436, 'Vendor Document', 'vendor-document-add', 'Add', 'Vendor Document Add', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(437, 'Vendor Document', 'vendor-document-edit', 'Edit', 'Edit Vendor Document', 0, '2021-06-30 05:29:52', '2021-06-30 05:29:52'),
(438, 'Vendor Document', 'vendor-document-delete', 'Delete', 'Delete Vendor Document', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(439, 'Vendor Document', 'vendor-document-active', 'Active', 'Active Vendor Document', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(440, 'Vendor Document', 'vendor-document-in-active', 'In-Active', 'In-Active Vendor Document', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(441, 'Vendor Document', 'vendor-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vendor Document Bulk Action', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(442, 'Vendor Note', 'vendor-note-index', 'Index', 'Vendor Note Index', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(443, 'Vendor Note', 'vendor-note-add', 'Add', 'Vendor Note Add', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(444, 'Vendor Note', 'vendor-note-edit', 'Edit', 'Edit Vendor Note', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(445, 'Vendor Note', 'vendor-note-delete', 'Delete', 'Delete Vendor Note', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(446, 'Vendor Note', 'vendor-note-active', 'Active', 'Active Vendor Note', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(447, 'Vendor Note', 'vendor-note-in-active', 'In-Active', 'In-Active Vendor Note', 0, '2021-06-30 05:29:53', '2021-06-30 05:29:53'),
(448, 'Vendor Note', 'vendor-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vendor Note Bulk Action', 0, '2021-06-30 05:29:54', '2021-06-30 05:29:54'),
(449, 'Library Management Permission', 'library-management-index', 'Library Management', 'Library Management', 1, '2021-06-30 05:29:54', '2021-06-30 05:29:54'),
(450, 'Library', 'library-index', 'Index', 'Library Index', 0, '2021-06-30 05:29:54', '2021-06-30 05:29:54'),
(451, 'Library', 'library-book-issue', 'Book Issue', 'Book Issue', 0, '2021-06-30 05:29:54', '2021-06-30 05:29:54'),
(452, 'Library', 'library-book-return', 'Book Return', 'Return Book', 0, '2021-06-30 05:29:54', '2021-06-30 05:29:54'),
(453, 'Library', 'library-return-over', 'Return Period Over', 'Return Period Over', 0, '2021-06-30 05:29:54', '2021-06-30 05:29:54'),
(454, 'Library', 'library-staff-request-index', 'Staff Request', 'Staff Request', 0, '2021-06-30 05:29:54', '2021-06-30 05:29:54'),
(455, 'Library', 'library-student-request-index', 'Student Request', 'Student Request', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(456, 'Library', 'library-issue-history', 'History', 'Issue History', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(457, 'Book', 'book-index', 'Index', 'Book Index', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(458, 'Book', 'book-add', 'Add', 'Book Add', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(459, 'Book', 'book-edit', 'Edit', 'Edit Book', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(460, 'Book', 'book-view', 'View', 'View Book', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(461, 'Book', 'book-delete', 'Delete', 'Delete Book', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(462, 'Book', 'book-active', 'Active', 'Active Book', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(463, 'Book', 'book-in-active', 'In-Active', 'In-Active Book', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(464, 'Book', 'book-bulk-action', 'Bulk(Active,InActive,Delete)', 'Book Bulk Action', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(465, 'Book', 'book-add-copies', 'Add Book Copies', 'Add Book Copies', 0, '2021-06-30 05:29:55', '2021-06-30 05:29:55'),
(466, 'Book', 'book-status', 'Status', 'Book Status', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(467, 'Book', 'book-bulk-copies-delete', 'Delete Bulk Copies', 'Delete Bulk Copes', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(468, 'Book Category', 'book-category-index', 'Index', 'Book Category Index', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(469, 'Book Category', 'book-category-add', 'Add', 'Book Category Add', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(470, 'Book Category', 'book-category-edit', 'Edit', 'Edit Book Category', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(471, 'Book Category', 'book-category-delete', 'Delete', 'Delete Book Category', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(472, 'Book Category', 'book-category-active', 'Active', 'Active Book Category', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(473, 'Book Category', 'book-category-in-active', 'In-Active', 'In-Active Book Category', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(474, 'Book Category', 'book-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Book Category Bulk Action', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(475, 'Library Circulation', 'library-circulation-index', 'Index', 'Library Circulation Index', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(476, 'Library Circulation', 'library-circulation-add', 'Add', 'Library Circulation Add', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(477, 'Library Circulation', 'library-circulation-edit', 'Edit', 'Edit Library Circulation', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(478, 'Library Circulation', 'library-circulation-delete', 'Delete', 'Delete Library Circulation', 0, '2021-06-30 05:29:56', '2021-06-30 05:29:56'),
(479, 'Library Circulation', 'library-circulation-active', 'Active', 'Active Library Circulation', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(480, 'Library Circulation', 'library-circulation-in-active', 'In-Active', 'In-Active Library Circulation', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(481, 'Library Circulation', 'library-circulation-bulk-action', 'Bulk(Active,InActive,Delete)', 'Library Circulation Bulk Action', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(482, 'Library Member', 'library-member-index', 'Index', 'Library Member Index', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(483, 'Library Member', 'library-member-add', 'Add', 'Library Member Add', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(484, 'Library Member', 'library-member-edit', 'Edit', 'Edit Library Member', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(485, 'Library Member', 'library-member-delete', 'Delete', 'Delete Library Member', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(486, 'Library Member', 'library-member-active', 'Active', 'Active Library Member', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(487, 'Library Member', 'library-member-in-active', 'In-Active', 'In-Active Library Member', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(488, 'Library Member', 'library-member-bulk-action', 'Bulk(Active,InActive,Delete)', 'Library Member Bulk Action', 0, '2021-06-30 05:29:57', '2021-06-30 05:29:57'),
(489, 'Library Member', 'library-member-staff', 'Staff Index', 'Library Member Staff', 0, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(490, 'Library Member', 'library-member-staff-view', 'Staff View', 'Library Member Staff', 0, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(491, 'Library Member', 'library-member-student', 'Student Index', 'Library Member Student', 0, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(492, 'Library Member', 'library-member-student-view', 'Student View', 'Library Member Student', 0, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(493, 'Attendance Management Permission', 'attendance-management-index', 'Attendance Management', 'Attendance Management', 1, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(494, 'Attendance Master', 'attendance-master-index', 'Index', 'Attendance Master Index', 0, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(495, 'Attendance Master', 'attendance-master-add', 'Add', 'Attendance Master Add', 0, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(496, 'Attendance Master', 'attendance-master-edit', 'Edit', 'Edit Attendance Master', 0, '2021-06-30 05:29:58', '2021-06-30 05:29:58'),
(497, 'Attendance Master', 'attendance-master-delete', 'Delete', 'Delete Attendance Master', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(498, 'Attendance Master', 'attendance-master-active', 'Active', 'Active Attendance Master', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(499, 'Attendance Master', 'attendance-master-in-active', 'In-Active', 'In-Active Attendance Master', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(500, 'Attendance Master', 'attendance-master-bulk-action', 'Bulk(Active,InActive,Delete)', 'Attendance Master Bulk Action', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(501, 'Student Regular Attendance', 'student-attendance-index', 'Index', 'Student Regular Attendance Index', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(502, 'Student Regular Attendance', 'student-attendance-add', 'Add', 'Student Regular Attendance Add', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(503, 'Student Regular Attendance', 'student-attendance-delete', 'Delete', 'Delete Student Regular Attendance', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(504, 'Student Regular Attendance', 'student-attendance-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Regular Attendance Bulk Action', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(505, 'Student SubjectWise Attendance', 'subject-attendance-index', 'Index', 'Student SubjectWise Attendance Index', 0, '2021-06-30 05:29:59', '2021-06-30 05:29:59'),
(506, 'Student SubjectWise Attendance', 'subject-attendance-add', 'Add', 'Student SubjectWise Attendance Add', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(507, 'Student SubjectWise Attendance', 'subject-attendance-delete', 'Delete', 'Delete Student SubjectWise Attendance', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(508, 'Student SubjectWise Attendance', 'subject-attendance-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student SubjectWise Attendance Bulk Action', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(509, 'Student SubjectWise Attendance', 'subject-attendance-alert', 'Alert', 'Student SubjectWise Attendance Alert', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(510, 'Staff Attendance', 'staff-attendance-index', 'Index', 'Staff Attendance Index', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(511, 'Staff Attendance', 'staff-attendance-add', 'Add', 'Staff Attendance Add', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(512, 'Staff Attendance', 'staff-attendance-delete', 'Delete', 'Delete Staff Attendance', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(513, 'Staff Attendance', 'staff-attendance-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Attendance Bulk Action', 0, '2021-06-30 05:30:00', '2021-06-30 05:30:00'),
(514, 'Exam Management Permission', 'exam-management-index', 'Exam Management', 'Exam Management', 1, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(515, 'Exam', 'exam-index', 'Index', 'Exam Index', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(516, 'Exam', 'exam-add', 'Add', 'Exam Add', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(517, 'Exam', 'exam-edit', 'Edit', 'Edit Exam', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(518, 'Exam', 'exam-delete', 'Delete', 'Delete Exam', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(519, 'Exam', 'exam-active', 'Active', 'Active Exam', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(520, 'Exam', 'exam-in-active', 'In-Active', 'In-Active Exam', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(521, 'Exam', 'exam-bulk-action', 'Bulk(Active,InActive,Delete)', 'Exam Bulk Action', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(522, 'Exam', 'exam-admit-card', 'Admit Card', 'Exam Admit Card', 0, '2021-06-30 05:30:01', '2021-06-30 05:30:01'),
(523, 'Exam', 'exam-exam-routine', 'Routin/Schedule', 'Exam Routine/Schedule', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(524, 'Exam', 'exam-mark-ledger', 'MarkLedger', 'Exam Mark Ledger', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(525, 'Exam', 'exam-result-publish', 'Result Publish', 'Exam Result Publish', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(526, 'Exam', 'exam-result-un-publish', 'Result UnPublish', 'Exam Result UnPublish', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(527, 'Exam Schedule', 'exam-schedule-index', 'Index', 'Exam Schedule Index', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(528, 'Exam Schedule', 'exam-schedule-add', 'Add', 'Exam Schedule Add', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(529, 'Exam Schedule', 'exam-schedule-edit', 'Edit', 'Edit Exam Schedule', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(530, 'Exam Schedule', 'exam-schedule-delete', 'Delete', 'Delete Exam Schedule', 0, '2021-06-30 05:30:02', '2021-06-30 05:30:02'),
(531, 'Exam Schedule', 'exam-schedule-active', 'Active', 'Active Exam Schedule', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(532, 'Exam Schedule', 'exam-schedule-in-active', 'In-Active', 'In-Active Exam Schedule', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(533, 'Exam Mark Ledger', 'exam-mark-ledger-index', 'Index', 'Exam Mark Ledger Index', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(534, 'Exam Mark Ledger', 'exam-mark-ledger-add', 'Add', 'Exam Mark Ledger Add', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(535, 'Exam Mark Ledger', 'exam-mark-ledger-edit', 'Edit', 'Edit Exam Mark Ledger', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(536, 'Exam Mark Ledger', 'exam-mark-ledger-delete', 'Delete', 'Delete Exam Mark Ledger', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(537, 'Exam Mark Ledger', 'exam-mark-ledger-active', 'Active', 'Active Exam Mark Ledger', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(538, 'Exam Mark Ledger', 'exam-mark-ledger-in-active', 'In-Active', 'In-Active Exam Mark Ledger', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(539, 'Exam Print', 'exam-print-admitcard', 'Admit Card', 'Exam Admit Card', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(540, 'Exam Print', 'exam-print-routine', 'Routine/Schedule', 'Exam Routine/Schedule', 0, '2021-06-30 05:30:03', '2021-06-30 05:30:03'),
(541, 'Exam Print', 'exam-print-mark-sheet', 'Mark/Grade Sheet', 'Exam Mark/Grade Sheet', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(542, 'Exam Print', 'exam-print-mark-ledger', 'Mark Ledger', 'Exam Mark Ledger Sheet', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(543, 'Certificate Management Permission', 'certificate-management-index', 'Certificate Management', 'Certificate Management', 1, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(544, 'Certificate', 'issue-certificate', 'Certificate Issue', 'Certificate Issue', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(545, 'Certificate', 'certificate-history', 'Certificate History', 'Certificate History', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(546, 'General Certificate', 'certificate-generate', 'General Certificate Generate', 'General Certificate Generate', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(547, 'General Certificate', 'general-certificate-print', 'General Certificate Print', 'General Certificate Print', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(548, 'Certificate Template', 'certificate-template-index', 'Index', 'Certificate Template Index', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(549, 'Certificate Template', 'certificate-template-add', 'Add', 'Certificate Template Add', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(550, 'Certificate Template', 'certificate-template-edit', 'Edit', 'Edit Certificate Template', 0, '2021-06-30 05:30:04', '2021-06-30 05:30:04'),
(551, 'Certificate Template', 'certificate-template-view', 'View', 'View Certificate Template', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(552, 'Certificate Template', 'certificate-template-delete', 'Delete', 'Delete Certificate Template', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(553, 'Certificate Template', 'certificate-template-active', 'Active', 'Active Certificate Template', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(554, 'Certificate Template', 'certificate-template-in-active', 'In-Active', 'In-Active Certificate Template', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(555, 'Certificate Template', 'certificate-template-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Certificate Template', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(556, 'Attendance Certificate', 'attendance-certificate-index', 'Index', 'Attendance Certificate Index', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(557, 'Attendance Certificate', 'attendance-certificate-add', 'Add', 'Attendance Certificate Add', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(558, 'Attendance Certificate', 'attendance-certificate-edit', 'Edit', 'Edit Attendance Certificate', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(559, 'Attendance Certificate', 'attendance-certificate-view', 'View', 'View Attendance Certificate', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(560, 'Attendance Certificate', 'attendance-certificate-delete', 'Delete', 'Delete Attendance Certificate', 0, '2021-06-30 05:30:05', '2021-06-30 05:30:05'),
(561, 'Attendance Certificate', 'attendance-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Attendance Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(562, 'Attendance Certificate', 'attendance-certificate-print', 'Print', 'Print Attendance Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(563, 'Attendance Certificate', 'attendance-certificate-bulk-print', 'Bulk Print', 'Bulk Print Attendance Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(564, 'Transfer Certificate', 'transfer-certificate-index', 'Index', 'Transfer Certificate Index', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(565, 'Transfer Certificate', 'transfer-certificate-add', 'Add', 'Transfer Certificate Add', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(566, 'Transfer Certificate', 'transfer-certificate-edit', 'Edit', 'Edit Transfer Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(567, 'Transfer Certificate', 'transfer-certificate-view', 'View', 'View Transfer Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(568, 'Transfer Certificate', 'transfer-certificate-delete', 'Delete', 'Delete Transfer Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(569, 'Transfer Certificate', 'transfer-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Transfer Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(570, 'Transfer Certificate', 'transfer-certificate-print', 'Print', 'Print Transfer Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(571, 'Transfer Certificate', 'transfer-certificate-bulk-print', 'Bulk Print', 'Bulk Print Transfer Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(572, 'Bonafide Certificate', 'bonafide-certificate-index', 'Index', 'Bonafide Certificate Index', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(573, 'Bonafide Certificate', 'bonafide-certificate-add', 'Add', 'Bonafide Certificate Add', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(574, 'Bonafide Certificate', 'bonafide-certificate-edit', 'Edit', 'Edit Bonafide Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(575, 'Bonafide Certificate', 'bonafide-certificate-view', 'View', 'View Bonafide Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(576, 'Bonafide Certificate', 'bonafide-certificate-delete', 'Delete', 'Delete Bonafide Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(577, 'Bonafide Certificate', 'bonafide-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Bonafide Certificate', 0, '2021-06-30 05:30:06', '2021-06-30 05:30:06'),
(578, 'Bonafide Certificate', 'bonafide-certificate-print', 'Print', 'Print Bonafide Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(579, 'Bonafide Certificate', 'bonafide-certificate-bulk-print', 'Bulk Print', 'Bulk Print Bonafide Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(580, 'Course Completion Certificate', 'course-completion-certificate-index', 'Index', 'Course Completion Certificate Index', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(581, 'Course Completion Certificate', 'course-completion-certificate-add', 'Add', 'Course Completion Certificate Add', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(582, 'Course Completion Certificate', 'course-completion-certificate-edit', 'Edit', 'Edit Course Completion Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(583, 'Course Completion Certificate', 'course-completion-certificate-view', 'View', 'View Course Completion Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(584, 'Course Completion Certificate', 'course-completion-certificate-delete', 'Delete', 'Delete Course Completion Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(585, 'Course Completion Certificate', 'course-completion-certificate-bulk-action', 'Bulk(Active,InActive,Delete', 'Bulk Course Completion Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(586, 'Course Completion Certificate', 'course-completion-certificate-print', 'Print', 'Print Course Completion Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(587, 'Course Completion Certificate', 'course-completion-certificate-bulk-print', 'Bulk Print', 'Bulk Print Course Completion Certificate', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(588, 'Hostel Management Permission', 'hostel-management-index', 'Hostel Management', 'Hostel Management', 1, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(589, 'Hostel', 'hostel-index', 'Index', 'Hostel Index', 0, '2021-06-30 05:30:07', '2021-06-30 05:30:07'),
(590, 'Hostel', 'hostel-add', 'Add', 'Hostel Add', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(591, 'Hostel', 'hostel-view', 'view', 'Hostel View', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(592, 'Hostel', 'hostel-edit', 'Edit', 'Edit Hostel', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(593, 'Hostel', 'hostel-delete', 'Delete', 'Delete Hostel', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(594, 'Hostel', 'hostel-active', 'Active', 'Active Hostel', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(595, 'Hostel', 'hostel-in-active', 'In-Active', 'In-Active Hostel', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(596, 'Hostel', 'hostel-bulk-action', 'Bulk(Active,InActive,Delete)', 'Hostel Bulk Action', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(597, 'Room', 'room-add', 'Add', 'Room Add', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(598, 'Room', 'room-view', 'View', 'Room View', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(599, 'Room', 'room-edit', 'Edit', 'Edit Room', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(600, 'Room', 'room-delete', 'Delete', 'Delete Room', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(601, 'Room', 'room-active', 'Active', 'Active Room', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(602, 'Room', 'room-in-active', 'In-Active', 'In-Active Room', 0, '2021-06-30 05:30:08', '2021-06-30 05:30:08'),
(603, 'Room', 'room-bulk-action', 'Bulk(Active,InActive,Delete)', 'Room Bulk Action', 0, '2021-06-30 05:30:09', '2021-06-30 05:30:09'),
(604, 'Bed', 'bed-add', 'Add', 'Bed Add', 0, '2021-06-30 05:30:09', '2021-06-30 05:30:09'),
(605, 'Bed', 'bed-status', 'Status', 'Bed Status', 0, '2021-06-30 05:30:09', '2021-06-30 05:30:09'),
(606, 'Bed', 'bed-delete', 'Delete', 'Delete Bed', 0, '2021-06-30 05:30:09', '2021-06-30 05:30:09'),
(607, 'Bed', 'bed-active', 'Active', 'Active Bed', 0, '2021-06-30 05:30:09', '2021-06-30 05:30:09'),
(608, 'Bed', 'bed-in-active', 'In-Active', 'In-Active Bed', 0, '2021-06-30 05:30:09', '2021-06-30 05:30:09'),
(609, 'Bed', 'bed-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bed Bulk Action', 0, '2021-06-30 05:30:09', '2021-06-30 05:30:09'),
(610, 'Room Type', 'room-type-index', 'Index', 'Room Type Index', 0, '2021-06-30 05:30:10', '2021-06-30 05:30:10'),
(611, 'Room Type', 'room-type-add', 'Add', 'Room Type Add', 0, '2021-06-30 05:30:10', '2021-06-30 05:30:10'),
(612, 'Room Type', 'room-type-edit', 'Edit', 'Edit Room Type', 0, '2021-06-30 05:30:10', '2021-06-30 05:30:10'),
(613, 'Room Type', 'room-type-delete', 'Delete', 'Delete Room Type', 0, '2021-06-30 05:30:10', '2021-06-30 05:30:10'),
(614, 'Room Type', 'room-type-active', 'Active', 'Active Room Type', 0, '2021-06-30 05:30:11', '2021-06-30 05:30:11'),
(615, 'Room Type', 'room-type-in-active', 'In-Active', 'In-Active Room Type', 0, '2021-06-30 05:30:11', '2021-06-30 05:30:11'),
(616, 'Room Type', 'room-type-bulk-action', 'Bulk(Active,InActive,Delete)', 'Room Type Bulk Action', 0, '2021-06-30 05:30:11', '2021-06-30 05:30:11'),
(617, 'Resident', 'resident-index', 'Index', 'Resident Index', 0, '2021-06-30 05:30:11', '2021-06-30 05:30:11'),
(618, 'Resident', 'resident-add', 'Add', 'Resident Add', 0, '2021-06-30 05:30:11', '2021-06-30 05:30:11'),
(619, 'Resident', 'resident-edit', 'Edit', 'Edit Resident', 0, '2021-06-30 05:30:11', '2021-06-30 05:30:11'),
(620, 'Resident', 'resident-delete', 'Delete', 'Delete Resident', 0, '2021-06-30 05:30:11', '2021-06-30 05:30:11'),
(621, 'Resident', 'resident-bulk-action', 'Bulk(Active,InActive,Delete)', 'Resident Bulk Action', 0, '2021-06-30 05:30:12', '2021-06-30 05:30:12'),
(622, 'Resident', 'resident-renew', 'Renew', 'Renew Resident', 0, '2021-06-30 05:30:12', '2021-06-30 05:30:12'),
(623, 'Resident', 'resident-leave', 'Leave', 'Leave Resident', 0, '2021-06-30 05:30:12', '2021-06-30 05:30:12'),
(624, 'Resident', 'resident-shift', 'Shift', 'Shift Resident', 0, '2021-06-30 05:30:13', '2021-06-30 05:30:13'),
(625, 'Resident', 'resident-history', 'History', 'Resident History', 0, '2021-06-30 05:30:15', '2021-06-30 05:30:15'),
(626, 'Food', 'food-index', 'Index', 'Food Index', 0, '2021-06-30 05:30:15', '2021-06-30 05:30:15'),
(627, 'Food', 'food-add', 'Add', 'Food Add', 0, '2021-06-30 05:30:16', '2021-06-30 05:30:16'),
(628, 'Food', 'food-edit', 'Edit', 'Edit Food', 0, '2021-06-30 05:30:16', '2021-06-30 05:30:16'),
(629, 'Food', 'food-delete', 'Delete', 'Delete Food', 0, '2021-06-30 05:30:16', '2021-06-30 05:30:16'),
(630, 'Food', 'food-active', 'Active', 'Active Food', 0, '2021-06-30 05:30:17', '2021-06-30 05:30:17'),
(631, 'Food', 'food-in-active', 'In-Active', 'In-Active Food', 0, '2021-06-30 05:30:17', '2021-06-30 05:30:17'),
(632, 'Food', 'food-bulk-action', 'Bulk(Active,InActive,Delete)', 'Food Bulk Action', 0, '2021-06-30 05:30:18', '2021-06-30 05:30:18'),
(633, 'Food Category', 'food-category-index', 'Index', 'Food Category Index', 0, '2021-06-30 05:30:18', '2021-06-30 05:30:18'),
(634, 'Food Category', 'food-category-add', 'Add', 'Food Category Add', 0, '2021-06-30 05:30:19', '2021-06-30 05:30:19'),
(635, 'Food Category', 'food-category-edit', 'Edit', 'Edit Food Category', 0, '2021-06-30 05:30:19', '2021-06-30 05:30:19'),
(636, 'Food Category', 'food-category-delete', 'Delete', 'Delete Food Category', 0, '2021-06-30 05:30:19', '2021-06-30 05:30:19'),
(637, 'Food Category', 'food-category-active', 'Active', 'Active Food Category', 0, '2021-06-30 05:30:20', '2021-06-30 05:30:20'),
(638, 'Food Category', 'food-category-in-active', 'In-Active', 'In-Active Food Category', 0, '2021-06-30 05:30:20', '2021-06-30 05:30:20'),
(639, 'Food Category', 'food-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Food Category Bulk Action', 0, '2021-06-30 05:30:20', '2021-06-30 05:30:20'),
(640, 'Food Item', 'food-item-index', 'Index', 'Food Item Index', 0, '2021-06-30 05:30:20', '2021-06-30 05:30:20'),
(641, 'Food Item', 'food-item-add', 'Add', 'Food Item Add', 0, '2021-06-30 05:30:21', '2021-06-30 05:30:21'),
(642, 'Food Item', 'food-item-edit', 'Edit', 'Edit Food Item', 0, '2021-06-30 05:30:21', '2021-06-30 05:30:21'),
(643, 'Food Item', 'food-item-delete', 'Delete', 'Delete Food Item', 0, '2021-06-30 05:30:21', '2021-06-30 05:30:21'),
(644, 'Food Item', 'food-item-active', 'Active', 'Active Food Item', 0, '2021-06-30 05:30:21', '2021-06-30 05:30:21'),
(645, 'Food Item', 'food-item-in-active', 'In-Active', 'In-Active Food Item', 0, '2021-06-30 05:30:22', '2021-06-30 05:30:22'),
(646, 'Food Item', 'food-item-bulk-action', 'Bulk(Active,InActive,Delete)', 'Food Item Bulk Action', 0, '2021-06-30 05:30:22', '2021-06-30 05:30:22'),
(647, 'Eating Time', 'eating-time-index', 'Index', 'Eating Time Index', 0, '2021-06-30 05:30:23', '2021-06-30 05:30:23'),
(648, 'Eating Time', 'eating-time-add', 'Add', 'Eating Time Add', 0, '2021-06-30 05:30:23', '2021-06-30 05:30:23'),
(649, 'Eating Time', 'eating-time-edit', 'Edit', 'Edit Eating Time', 0, '2021-06-30 05:30:23', '2021-06-30 05:30:23'),
(650, 'Eating Time', 'eating-time-delete', 'Delete', 'Delete Eating Time', 0, '2021-06-30 05:30:23', '2021-06-30 05:30:23'),
(651, 'Eating Time', 'eating-time-active', 'Active', 'Active Eating Time', 0, '2021-06-30 05:30:23', '2021-06-30 05:30:23'),
(652, 'Eating Time', 'eating-time-in-active', 'In-Active', 'In-Active Eating Time', 0, '2021-06-30 05:30:23', '2021-06-30 05:30:23'),
(653, 'Eating Time', 'eating-time-bulk-action', 'Bulk(Active,InActive,Delete)', 'Eating Time Bulk Action', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(654, 'Transport Management Permission', 'transport-management-index', 'Transport Management', 'Transport Management', 1, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(655, 'Transport Route', 'transport-route-index', 'Index', 'Transport Route Index', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(656, 'Transport Route', 'transport-route-add', 'Add', 'Transport Route Add', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(657, 'Transport Route', 'transport-route-edit', 'Edit', 'Edit Transport Route', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(658, 'Transport Route', 'transport-route-delete', 'Delete', 'Delete Transport Route', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(659, 'Transport Route', 'transport-route-active', 'Active', 'Active Transport Route', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(660, 'Transport Route', 'transport-route-in-active', 'In-Active', 'In-Active Transport Route', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(661, 'Transport Route', 'transport-route-bulk-action', 'Bulk(Active,InActive,Delete)', 'Transport Route Bulk Action', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(662, 'Vehicle', 'vehicle-index', 'Index', 'Vehicle Index', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(663, 'Vehicle', 'vehicle-add', 'Add', 'Vehicle Add', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(664, 'Vehicle', 'vehicle-edit', 'Edit', 'Edit Vehicle', 0, '2021-06-30 05:30:24', '2021-06-30 05:30:24'),
(665, 'Vehicle', 'vehicle-delete', 'Delete', 'Delete Vehicle', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(666, 'Vehicle', 'vehicle-active', 'Active', 'Active Vehicle', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(667, 'Vehicle', 'vehicle-in-active', 'In-Active', 'In-Active Vehicle', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(668, 'Vehicle', 'vehicle-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vehicle Bulk Action', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(669, 'Transport User/Traveller', 'transport-user-index', 'Index', 'Transport User/Traveller Index', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(670, 'Transport User/Traveller', 'transport-user-add', 'Add', 'Transport User/Traveller Add', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(671, 'Transport User/Traveller', 'transport-user-edit', 'Edit', 'Edit Transport User/Traveller', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(672, 'Transport User/Traveller', 'transport-user-delete', 'Delete', 'Delete Transport User/Traveller', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(673, 'Transport User/Traveller', 'transport-user-bulk-action', 'Bulk(Active,InActive,Delete)', 'Transport User/Traveller Bulk Action', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(674, 'Transport User/Traveller', 'transport-user-renew', 'Renew', 'Renew Transport User/Traveller', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(675, 'Transport User/Traveller', 'transport-user-leave', 'Leave', 'Leave Transport User/Traveller', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(676, 'Transport User/Traveller', 'transport-user-shift', 'Shift', 'Shift Transport User/Traveller', 0, '2021-06-30 05:30:25', '2021-06-30 05:30:25'),
(677, 'Transport User/Traveller', 'transport-user-history', 'History', 'Resident History', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(678, 'Notice & Alert Management Permission', 'notice-group-index', 'Notice & Alert Permission', 'Notice & Alert Permission', 1, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(679, 'Notice', 'notice-index', 'Index', 'Notice Index', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(680, 'Notice', 'notice-add', 'Add', 'Notice Add', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(681, 'Notice', 'notice-edit', 'Edit', 'Edit Notice', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(682, 'Notice', 'notice-delete', 'Delete', 'Delete Notice', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(683, 'SMS/E-Mail', 'sms-email-index', 'Index', 'SMS/E-Mail Index', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(684, 'SMS/E-Mail', 'sms-email-delete', 'Delete', 'SMS/E-Mail Delete', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(685, 'SMS/E-Mail', 'sms-email-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bulk SMS/E-Mail', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(686, 'SMS/E-Mail', 'sms-email-create', 'Create', 'Create SMS/E-Mail', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(687, 'SMS/E-Mail', 'sms-email-send', 'Send', 'Send SMS/E-Mail', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(688, 'SMS/E-Mail', 'sms-email-student-guardian-send', 'Student & Guardian', 'Student & Guardian SMS/E-Mail', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(689, 'SMS/E-Mail', 'sms-email-staff-send', 'Staff', 'Staff SMS/E-Mail', 0, '2021-06-30 05:30:26', '2021-06-30 05:30:26'),
(690, 'SMS/E-Mail', 'sms-email-individual-send', 'Individual', 'Individual SMS/E-Mail', 0, '2021-06-30 05:30:27', '2021-06-30 05:30:27'),
(691, 'SMS/E-Mail', 'sms-email-fee-receipt', 'Fee Receipt', 'Fee ReceiptSMS/E-Mail', 0, '2021-06-30 05:30:27', '2021-06-30 05:30:27'),
(692, 'SMS/E-Mail', 'sms-email-due-reminder', 'Due Reminder', 'Due Reminder SMS/E-Mail', 0, '2021-06-30 05:30:27', '2021-06-30 05:30:27'),
(693, 'SMS/E-Mail', 'sms-email-book-return-reminder', 'Book Return Reminder', 'Book Return Reminder', 0, '2021-06-30 05:30:27', '2021-06-30 05:30:27'),
(694, 'More(Assignment & Download) Management Permission', 'more-index', 'More(Assignment & Download) Permission', 'More(Assignment & Download) Permission', 1, '2021-06-30 05:30:27', '2021-06-30 05:30:27'),
(695, 'Assignment', 'assignment-index', 'Index', 'Assignment Index', 0, '2021-06-30 05:30:27', '2021-06-30 05:30:27'),
(696, 'Assignment', 'assignment-add', 'Add', 'Assignment Add', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(697, 'Assignment', 'assignment-edit', 'Edit', 'Edit Assignment', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(698, 'Assignment', 'assignment-view', 'View', 'View Assignment', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(699, 'Assignment', 'assignment-delete', 'Delete', 'Delete Assignment', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(700, 'Assignment', 'assignment-active', 'Active', 'Active Assignment', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(701, 'Assignment', 'assignment-in-active', 'In-Active', 'In-Active Assignment', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(702, 'Assignment', 'assignment-bulk-action', 'Bulk(Active,InActive,Delete)', 'Assignment Bulk Action', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(703, 'Assignment Answer', 'assignment-answer-view', 'View', 'Assignment Answer View', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(704, 'Assignment Answer', 'assignment-answer-approve', 'Approve', 'Approve Assignment Answer', 0, '2021-06-30 05:30:28', '2021-06-30 05:30:28'),
(705, 'Assignment Answer', 'assignment-answer-reject', 'Reject', 'Reject Assignment Answer', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(706, 'Assignment Answer', 'assignment-answer-delete', 'Delete', 'Delete Assignment Answer', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(707, 'Assignment Answer', 'assignment-answer-bulk-action', 'Bulk(Approve, Reject,Delete)', 'Assignment Answer Bulk Action', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(708, 'Download', 'download-index', 'Index', 'Download Index', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(709, 'Download', 'download-add', 'Add', 'Download Add', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(710, 'Download', 'download-edit', 'Edit', 'Edit Download', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(711, 'Download', 'download-delete', 'Delete', 'Delete Download', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(712, 'Download', 'download-active', 'Active', 'Active Download', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(713, 'Download', 'download-in-active', 'In-Active', 'In-Active Download', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(714, 'Download', 'download-bulk-action', 'Bulk(Active,InActive,Delete)', 'Download Bulk Action', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(715, 'Meeting', 'meeting-index', 'Index', 'Meeting Index', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(716, 'Meeting', 'meeting-add', 'Add', 'Meeting Add', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(717, 'Meeting', 'meeting-delete', 'Delete', 'Delete Meeting', 0, '2021-06-30 05:30:29', '2021-06-30 05:30:29'),
(718, 'Meeting', 'meeting-complete', 'Complete', 'Complete Meeting', 0, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(719, 'Meeting', 'meeting-start', 'Start', 'Start Meeting', 0, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(720, 'Meeting', 'meeting-pending', 'Pending', 'Pending Meeting', 0, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(721, 'Meeting', 'meeting-bulk-action', 'Bulk(Active,InActive,Delete)', 'Meeting Bulk Action', 0, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(722, 'Meeting', 'meeting-zoom-index', 'Zoom Server Index', 'Meeting Index', 0, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(723, 'Meeting', 'sms-email-meeting', 'Send Meeting Alert', 'Meeting Alert Sending', 0, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(724, 'Web Portal Content Management Permission', 'web-cms-index', 'Web CMS Permission', 'Web CMS Permission', 1, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(725, 'Module', 'web-menu-dashboard', 'Dashboard', 'Dashboard', 0, '2021-06-30 05:30:30', '2021-06-30 05:30:30'),
(726, 'Module', 'web-menu-analytics', 'Analytics', 'Analytics', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(727, 'Module', 'web-menu-setting', 'Settings', 'Settings', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(728, 'Module', 'web-menu-menu-page', 'Menu & Pages', 'Menu & Pages', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(729, 'Module', 'web-menu-slider', 'Slider', 'Slider', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(730, 'Module', 'web-menu-notice', 'Notice', 'Notice', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(731, 'Module', 'web-menu-blog', 'Blog', 'Blog', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(732, 'Module', 'web-menu-event', 'Event', 'Event', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(733, 'Module', 'web-menu-services', 'Services', 'Services', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(734, 'Module', 'web-menu-gallery', 'Gallery', 'Gallery', 0, '2021-06-30 05:30:31', '2021-06-30 05:30:31'),
(735, 'Module', 'web-menu-download', 'Download', 'Download', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(736, 'Module', 'web-menu-faq', 'FAQ', 'FAQ', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(737, 'Module', 'web-menu-counter', 'Counter', 'Counter', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(738, 'Module', 'web-menu-client', 'Client', 'Client', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(739, 'Module', 'web-menu-testimonial', 'Testimonial', 'Testimonial', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(740, 'Module', 'web-menu-staff', 'Staff', 'Staff', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(741, 'Module', 'web-menu-pricing', 'Pricing', 'Pricing', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(742, 'Module', 'web-menu-registration', 'Online Registration', 'Online Registration', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(743, 'Module', 'web-menu-contact', 'Contact Detail Manager', 'Contact Detail Manager', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(744, 'Module', 'web-menu-alert', 'Alert/Notification Manager', 'Alert/Notification Manager', 0, '2021-06-30 05:30:32', '2021-06-30 05:30:32'),
(745, 'Module', 'web-menu-user-role', 'User & Role', 'User & Role', 0, '2021-06-30 05:30:33', '2021-06-30 05:30:33'),
(746, 'General Setting', 'web-settings-general-index', 'Index', 'General Setting Index', 0, '2021-06-30 05:30:33', '2021-06-30 05:30:33'),
(747, 'General Setting', 'web-settings-general-add', 'Add', 'General Setting Add', 0, '2021-06-30 05:30:33', '2021-06-30 05:30:33'),
(748, 'General Setting', 'web-settings-general-edit', 'Edit', 'Edit General Setting', 0, '2021-06-30 05:30:33', '2021-06-30 05:30:33'),
(749, 'HomePage Setting', 'web-settings-home-index', 'Index', 'HomePage Setting Index', 0, '2021-06-30 05:30:33', '2021-06-30 05:30:33'),
(750, 'HomePage Setting', 'web-settings-home-add', 'Add', 'HomePage Setting Add', 0, '2021-06-30 05:30:33', '2021-06-30 05:30:33'),
(751, 'HomePage Setting', 'web-settings-home-edit', 'Edit', 'Edit HomePage Setting', 0, '2021-06-30 05:30:33', '2021-06-30 05:30:33'),
(752, 'AboutUs Setting', 'web-settings-about-us-index', 'Index', 'AboutUs Setting Index', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(753, 'AboutUs Setting', 'web-settings-about-us-add', 'Add', 'AboutUs Setting Add', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(754, 'AboutUs Setting', 'web-settings-about-us-edit', 'Edit', 'Edit AboutUs Setting', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(755, 'ContactUs Setting', 'web-settings-contact-us-index', 'Index', 'ContactUs Setting Index', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(756, 'ContactUs Setting', 'web-settings-contact-us-add', 'Add', 'ContactUs Setting Add', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(757, 'ContactUs Setting', 'web-settings-contact-us-edit', 'Edit', 'Edit ContactUs Setting', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(758, 'Online Registration Setting', 'web-setting-registration-index', 'Index', 'Online Registration Setting Index', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(759, 'Online Registration Setting', 'web-setting-registration-add', 'Add', 'Online Registration Setting Add', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(760, 'Online Registration Setting', 'web-setting-registration-edit', 'Edit', 'Edit Online Registration Setting', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(761, 'Dashboard', 'web-dashboard-index', 'Index', 'Dashboard Index', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(762, 'Analytics', 'web-view-analytics', 'View', 'Analytics View', 0, '2021-06-30 05:30:34', '2021-06-30 05:30:34'),
(763, 'Menu', 'web-menu-index', 'Index', 'Menu Index', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(764, 'Menu', 'web-menu-edit', 'Edit', 'Edit Menu', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(765, 'Page', 'web-page-index', 'Index', 'Page Index', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(766, 'Page', 'web-page-add', 'Add', 'Page Add', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(767, 'Page', 'web-page-edit', 'Edit', 'Edit Page', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(768, 'Page', 'web-page-view', 'View', 'View Page', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(769, 'Page', 'web-page-delete', 'Delete', 'Delete Page', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(770, 'Page', 'web-page-active', 'Active', 'Active Page', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(771, 'Page', 'web-page-in-active', 'In-Active', 'In-Active Page', 0, '2021-06-30 05:30:35', '2021-06-30 05:30:35'),
(772, 'Page', 'web-page-bulk-action', 'Bulk(Active,InActive,Delete)', 'Page Bulk Action', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(773, 'Slider', 'web-slider-index', 'Index', 'Slider Index', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(774, 'Slider', 'web-slider-add', 'Add', 'Slider Add', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(775, 'Slider', 'web-slider-view', 'View', 'Slider View', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(776, 'Slider', 'web-slider-edit', 'Edit', 'Edit Slider', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(777, 'Slider', 'web-slider-delete', 'Delete', 'Delete Slider', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(778, 'Slider', 'web-slider-active', 'Active', 'Active Slider', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(779, 'Slider', 'web-slider-in-active', 'In-Active', 'In-Active Slider', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36');
INSERT INTO `permissions` (`id`, `group`, `name`, `display_name`, `description`, `group_head`, `created_at`, `updated_at`) VALUES
(780, 'Slider', 'web-slider-bulk-action', 'Bulk(Active,InActive,Delete)', 'Slider Bulk Action', 0, '2021-06-30 05:30:36', '2021-06-30 05:30:36'),
(781, 'Notice', 'web-notice-index', 'Index', 'Notice Index', 0, '2021-06-30 05:30:37', '2021-06-30 05:30:37'),
(782, 'Notice', 'web-notice-add', 'Add', 'Notice Add', 0, '2021-06-30 05:30:37', '2021-06-30 05:30:37'),
(783, 'Notice', 'web-notice-view', 'View', 'Notice View', 0, '2021-06-30 05:30:37', '2021-06-30 05:30:37'),
(784, 'Notice', 'web-notice-edit', 'Edit', 'Edit Notice', 0, '2021-06-30 05:30:37', '2021-06-30 05:30:37'),
(785, 'Notice', 'web-notice-delete', 'Delete', 'Delete Notice', 0, '2021-06-30 05:30:37', '2021-06-30 05:30:37'),
(786, 'Notice', 'web-notice-active', 'Active', 'Active Notice', 0, '2021-06-30 05:30:37', '2021-06-30 05:30:37'),
(787, 'Notice', 'web-notice-in-active', 'In-Active', 'In-Active Notice', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(788, 'Notice', 'web-notice-bulk-action', 'Bulk(Active,InActive,Delete)', 'Notice Bulk Action', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(789, 'Category', 'web-category-index', 'Index', 'Category Index', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(790, 'Category', 'web-category-add', 'Add', 'Category Add', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(791, 'Category', 'web-category-view', 'View', 'Category View', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(792, 'Category', 'web-category-edit', 'Edit', 'Edit Category', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(793, 'Category', 'web-category-delete', 'Delete', 'Delete Category', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(794, 'Category', 'web-category-active', 'Active', 'Active Category', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(795, 'Category', 'web-category-in-active', 'In-Active', 'In-Active Category', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(796, 'Category', 'web-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Category Bulk Action', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(797, 'Blog', 'web-blog-index', 'Index', 'Blog Index', 0, '2021-06-30 05:30:38', '2021-06-30 05:30:38'),
(798, 'Blog', 'web-blog-add', 'Add', 'Blog Add', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(799, 'Blog', 'web-blog-view', 'View', 'Blog View', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(800, 'Blog', 'web-blog-edit', 'Edit', 'Edit Blog', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(801, 'Blog', 'web-blog-delete', 'Delete', 'Delete Blog', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(802, 'Blog', 'web-blog-active', 'Active', 'Active Blog', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(803, 'Blog', 'web-blog-in-active', 'In-Active', 'In-Active Blog', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(804, 'Blog', 'web-blog-bulk-action', 'Bulk(Active,InActive,Delete)', 'Blog Bulk Action', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(805, 'Events', 'web-events-index', 'Index', 'Events Index', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(806, 'Events', 'web-events-add', 'Add', 'Events Add', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(807, 'Events', 'web-events-view', 'View', 'Events View', 0, '2021-06-30 05:30:39', '2021-06-30 05:30:39'),
(808, 'Events', 'web-events-edit', 'Edit', 'Edit Events', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(809, 'Events', 'web-events-delete', 'Delete', 'Delete Events', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(810, 'Events', 'web-events-active', 'Active', 'Active Events', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(811, 'Events', 'web-events-in-active', 'In-Active', 'In-Active Events', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(812, 'Events', 'web-events-bulk-action', 'Bulk(Active,InActive,Delete)', 'Events Bulk Action', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(813, 'Services', 'web-services-index', 'Index', 'Services Index', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(814, 'Services', 'web-services-add', 'Add', 'Services Add', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(815, 'Services', 'web-services-view', 'View', 'Services View', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(816, 'Services', 'web-services-edit', 'Edit', 'Edit Services', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(817, 'Services', 'web-services-delete', 'Delete', 'Delete Services', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(818, 'Services', 'web-services-active', 'Active', 'Active Services', 0, '2021-06-30 05:30:40', '2021-06-30 05:30:40'),
(819, 'Services', 'web-services-in-active', 'In-Active', 'In-Active Services', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(820, 'Services', 'web-services-bulk-action', 'Bulk(Active,InActive,Delete)', 'Services Bulk Action', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(821, 'Gallery', 'web-gallery-index', 'Index', 'Gallery Index', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(822, 'Gallery', 'web-gallery-add', 'Add', 'Gallery Add', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(823, 'Gallery', 'web-gallery-view', 'View', 'Gallery View', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(824, 'Gallery', 'web-gallery-edit', 'Edit', 'Edit Gallery', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(825, 'Gallery', 'web-gallery-delete', 'Delete', 'Delete Gallery', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(826, 'Gallery', 'web-gallery-active', 'Active', 'Active Gallery', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(827, 'Gallery', 'web-gallery-in-active', 'In-Active', 'In-Active Gallery', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(828, 'Gallery', 'web-gallery-bulk-action', 'Bulk(Active,InActive,Delete)', 'Notice Bulk Action', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(829, 'Download', 'web-download-index', 'Index', 'Download Index', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(830, 'Download', 'web-download-add', 'Add', 'Download Add', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(831, 'Download', 'web-download-view', 'View', 'Download View', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(832, 'Download', 'web-download-edit', 'Edit', 'Edit Download', 0, '2021-06-30 05:30:41', '2021-06-30 05:30:41'),
(833, 'Download', 'web-download-delete', 'Delete', 'Delete Download', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(834, 'Download', 'web-download-active', 'Active', 'Active Download', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(835, 'Download', 'web-download-in-active', 'In-Active', 'In-Active Download', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(836, 'Download', 'web-download-bulk-action', 'Bulk(Active,InActive,Delete)', 'Download Bulk Action', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(837, 'Staff', 'web-staff-index', 'Index', 'Staff Index', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(838, 'Staff', 'web-staff-add', 'Add', 'Staff Add', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(839, 'Staff', 'web-staff-view', 'View', 'Staff View', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(840, 'Staff', 'web-staff-edit', 'Edit', 'Edit Staff', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(841, 'Staff', 'web-staff-delete', 'Delete', 'Delete Staff', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(842, 'Staff', 'web-staff-active', 'Active', 'Active Staff', 0, '2021-06-30 05:30:42', '2021-06-30 05:30:42'),
(843, 'Staff', 'web-staff-in-active', 'In-Active', 'In-Active Staff', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(844, 'Staff', 'web-staff-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Bulk Action', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(845, 'Testimonial', 'web-testimonial-index', 'Index', 'Testimonial Index', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(846, 'Testimonial', 'web-testimonial-add', 'Add', 'Testimonial Add', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(847, 'Testimonial', 'web-testimonial-view', 'View', 'Testimonial View', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(848, 'Testimonial', 'web-testimonial-edit', 'Edit', 'Edit Testimonial', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(849, 'Testimonial', 'web-testimonial-delete', 'Delete', 'Delete Testimonial', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(850, 'Testimonial', 'web-testimonial-active', 'Active', 'Active Testimonial', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(851, 'Testimonial', 'web-testimonial-in-active', 'In-Active', 'In-Active Testimonial', 0, '2021-06-30 05:30:43', '2021-06-30 05:30:43'),
(852, 'Testimonial', 'web-testimonial-bulk-action', 'Bulk(Active,InActive,Delete)', 'Testimonial Bulk Action', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(853, 'FAQ', 'web-faq-index', 'Index', 'FAQ Index', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(854, 'FAQ', 'web-faq-add', 'Add', 'FAQ Add', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(855, 'FAQ', 'web-faq-view', 'View', 'FAQ View', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(856, 'FAQ', 'web-faq-edit', 'Edit', 'Edit FAQ', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(857, 'FAQ', 'web-faq-delete', 'Delete', 'Delete FAQ', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(858, 'FAQ', 'web-faq-active', 'Active', 'Active FAQ', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(859, 'FAQ', 'web-faq-in-active', 'In-Active', 'In-Active FAQ', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(860, 'FAQ', 'web-faq-bulk-action', 'Bulk(Active,InActive,Delete)', 'FAQ Bulk Action', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(861, 'Counter', 'web-counter-index', 'Index', 'Counter Index', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(862, 'Counter', 'web-counter-add', 'Add', 'Counter Add', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(863, 'Counter', 'web-counter-view', 'View', 'Counter View', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(864, 'Counter', 'web-counter-edit', 'Edit', 'Edit Counter', 0, '2021-06-30 05:30:44', '2021-06-30 05:30:44'),
(865, 'Counter', 'web-counter-delete', 'Delete', 'Delete Counter', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(866, 'Counter', 'web-counter-active', 'Active', 'Active Counter', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(867, 'Counter', 'web-counter-in-active', 'In-Active', 'In-Active Counter', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(868, 'Counter', 'web-counter-bulk-action', 'Bulk(Active,InActive,Delete)', 'Counter Bulk Action', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(869, 'Clint', 'web-clint-index', 'Index', 'Clint Index', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(870, 'Clint', 'web-clint-add', 'Add', 'Clint Add', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(871, 'Clint', 'web-clint-view', 'View', 'Clint View', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(872, 'Clint', 'web-clint-edit', 'Edit', 'Edit Clint', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(873, 'Clint', 'web-clint-delete', 'Delete', 'Delete Clint', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(874, 'Clint', 'web-clint-active', 'Active', 'Active Clint', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(875, 'Clint', 'web-clint-in-active', 'In-Active', 'In-Active Clint', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(876, 'Clint', 'web-clint-bulk-action', 'Bulk(Active,InActive,Delete)', 'Clint Bulk Action', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(877, 'Pricing', 'web-pricing-index', 'Index', 'Pricing Index', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(878, 'Pricing', 'web-pricing-add', 'Add', 'Pricing Add', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(879, 'Pricing', 'web-pricing-view', 'View', 'Pricing View', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(880, 'Pricing', 'web-pricing-edit', 'Edit', 'Edit Pricing', 0, '2021-06-30 05:30:45', '2021-06-30 05:30:45'),
(881, 'Pricing', 'web-pricing-delete', 'Delete', 'Delete Pricing', 0, '2021-06-30 05:30:46', '2021-06-30 05:30:46'),
(882, 'Pricing', 'web-pricing-active', 'Active', 'Active Pricing', 0, '2021-06-30 05:30:46', '2021-06-30 05:30:46'),
(883, 'Pricing', 'web-pricing-in-active', 'In-Active', 'In-Active Pricing', 0, '2021-06-30 05:30:46', '2021-06-30 05:30:46'),
(884, 'Pricing', 'web-pricing-bulk-action', 'Bulk(Active,InActive,Delete)', 'Pricing Bulk Action', 0, '2021-06-30 05:30:46', '2021-06-30 05:30:46'),
(885, 'Online Registration', 'web-registration-index', 'Index', 'Online Registration Index', 0, '2021-06-30 05:30:46', '2021-06-30 05:30:46'),
(886, 'Online Registration', 'web-registration-add', 'Add', 'Online Registration Add', 0, '2021-06-30 05:30:46', '2021-06-30 05:30:46'),
(887, 'Online Registration', 'web-registration-view', 'View', 'Online Registration View', 0, '2021-06-30 05:30:47', '2021-06-30 05:30:47'),
(888, 'Online Registration', 'web-registration-edit', 'Edit', 'Edit Online Registration', 0, '2021-06-30 05:30:47', '2021-06-30 05:30:47'),
(889, 'Online Registration', 'web-registration-delete', 'Delete', 'Delete Online Registration', 0, '2021-06-30 05:30:47', '2021-06-30 05:30:47'),
(890, 'Online Registration', 'web-registration-active', 'Active', 'Active Online Registration', 0, '2021-06-30 05:30:47', '2021-06-30 05:30:47'),
(891, 'Online Registration', 'web-registration-in-active', 'In-Active', 'In-Active Online Registration', 0, '2021-06-30 05:30:47', '2021-06-30 05:30:47'),
(892, 'Online Registration', 'web-registration-bulk-action', 'Bulk(Active,InActive,Delete)', 'Online Registration Bulk Action', 0, '2021-06-30 05:30:47', '2021-06-30 05:30:47'),
(893, 'Online Registration', 'web-registration-delete-academic-info', 'Delete Academic Qualification', 'Delete Academic Qualification', 0, '2021-06-30 05:30:47', '2021-06-30 05:30:47'),
(894, 'Online Registration', 'web-registration-delete-work-experience', 'Delete Work Experience', 'Delete Work Experience', 0, '2021-06-30 05:30:48', '2021-06-30 05:30:48'),
(895, 'Registration Programme', 'web-programme-index', 'Index', 'Registration  ProgrammeIndex', 0, '2021-06-30 05:30:48', '2021-06-30 05:30:48'),
(896, 'Registration Programme', 'web-programme-add', 'Add', 'Registration  ProgrammeAdd', 0, '2021-06-30 05:30:49', '2021-06-30 05:30:49'),
(897, 'Registration Programme', 'web-programme-view', 'View', 'Registration  ProgrammeView', 0, '2021-06-30 05:30:49', '2021-06-30 05:30:49'),
(898, 'Registration Programme', 'web-programme-edit', 'Edit', 'Edit Registration Programme', 0, '2021-06-30 05:30:50', '2021-06-30 05:30:50'),
(899, 'Registration Programme', 'web-programme-delete', 'Delete', 'Delete Registration Programme', 0, '2021-06-30 05:30:51', '2021-06-30 05:30:51'),
(900, 'Registration Programme', 'web-programme-active', 'Active', 'Active Registration Programme', 0, '2021-06-30 05:30:51', '2021-06-30 05:30:51'),
(901, 'Registration Programme', 'web-programme-in-active', 'In-Active', 'In-Active Registration Programme', 0, '2021-06-30 05:30:51', '2021-06-30 05:30:51'),
(902, 'Registration Programme', 'web-programme-bulk-action', 'Bulk(Active,InActive,Delete)', 'Registration  ProgrammeBulk Action', 0, '2021-06-30 05:30:51', '2021-06-30 05:30:51'),
(903, 'Contact Detail Manager', 'web-contact-index', 'Index', 'Contact Detail Manager Index', 0, '2021-06-30 05:30:51', '2021-06-30 05:30:51'),
(904, 'Contact Detail Manager', 'web-contact-add', 'Add', 'Contact Detail Manager Add', 0, '2021-06-30 05:30:51', '2021-06-30 05:30:51'),
(905, 'Contact Detail Manager', 'web-contact-view', 'View', 'Contact Detail Manager View', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(906, 'Contact Detail Manager', 'web-contact-edit', 'Edit', 'Edit Contact Detail Manager', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(907, 'Contact Detail Manager', 'web-contact-delete', 'Delete', 'Delete Contact Detail Manager', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(908, 'Contact Detail Manager', 'web-contact-active', 'Active', 'Active Contact Detail Manager', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(909, 'Contact Detail Manager', 'web-contact-in-active', 'In-Active', 'In-Active Contact Detail Manager', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(910, 'Contact Detail Manager', 'web-contact-bulk-action', 'Bulk(Active,InActive,Delete)', 'Contact Detail Manager Bulk Action', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(911, 'Contact Detail Manager', 'web-contact-import', 'Import Contact', 'Import Contact', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(912, 'Contact Group', 'web-contact-group-index', 'Index', 'Contact Detail Index', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(913, 'Contact Group', 'web-contact-group-add', 'Add', 'Contact Detail Add', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(914, 'Contact Group', 'web-contact-group-view', 'View', 'Contact Detail View', 0, '2021-06-30 05:30:52', '2021-06-30 05:30:52'),
(915, 'Contact Group', 'web-contact-group-edit', 'Edit', 'Edit Contact Group', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(916, 'Contact Group', 'web-contact-group-delete', 'Delete', 'Delete Contact Group', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(917, 'Contact Group', 'web-contact-group-active', 'Active', 'Active Contact Group', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(918, 'Contact Group', 'web-contact-group-in-active', 'In-Active', 'In-Active Contact Group', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(919, 'Contact Group', 'web-contact-group-bulk-action', 'Bulk(Active,InActive,Delete)', 'Contact Detail Bulk Action', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(920, 'Subscribers', 'web-subscribers-index', 'Index', 'Subscribers Index', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(921, 'Subscribers', 'web-subscribers-active', 'Active', 'Active Subscribers', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(922, 'Subscribers', 'web-subscribers-in-active', 'InActive', 'InActive Subscribers', 0, '2021-06-30 05:30:53', '2021-06-30 05:30:53'),
(923, 'Subscribers', 'web-subscribers-delete', 'Delete', 'Delete Subscribers', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(924, 'Subscribers', 'web-subscribers-import', 'Import', 'Import Subscribers', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(925, 'Subscribers', 'web-subscribers-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bul kAction Subscribers', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(926, 'ContactMessage', 'web-contact-us-index', 'Index', 'ContactMessage Index', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(927, 'ContactMessage', 'web-contact-us-view', 'View', 'ContactMessage Add', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(928, 'ContactMessage', 'web-contact-us-delete', 'Delete', 'Delete Message', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(929, 'User Notice', 'web-user-notice-index', 'Index', 'User Notice Index', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(930, 'User Notice', 'web-user-notice-add', 'Add', 'User Notice Add', 0, '2021-06-30 05:30:54', '2021-06-30 05:30:54'),
(931, 'User Notice', 'web-user-notice-edit', 'Edit', 'User Notice Edit', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55'),
(932, 'User Notice', 'web-user-notice-delete', 'Delete', 'User Notice Delete', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55'),
(933, 'SMS & Email', 'web-sms-email-index', 'Index', 'SMS & Email Index', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55'),
(934, 'SMS & Email', 'web-sms-email-create', 'Create', 'SMS & Email Create', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55'),
(935, 'SMS & Email', 'web-sms-email-send', 'Send', 'SMS & Email Send', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55'),
(936, 'SMS & Email', 'web-sms-email-delete', 'Delete', 'SMS & Email Delete', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55'),
(937, 'SMS & Email', 'web-sms-email-bulk-action', 'Bulk Action', 'SMS & Email Delete', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55'),
(938, 'SMS & Email', 'web-sms-email-subscriber', 'Mail Subscribers', 'Mail Subscribers', 0, '2021-06-30 05:30:55', '2021-06-30 05:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(83, 2),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(91, 2),
(92, 1),
(92, 2),
(93, 1),
(93, 2),
(94, 1),
(94, 2),
(95, 1),
(95, 2),
(96, 1),
(96, 2),
(97, 1),
(97, 2),
(98, 1),
(98, 2),
(99, 1),
(100, 1),
(100, 2),
(101, 1),
(101, 2),
(102, 1),
(102, 2),
(103, 1),
(103, 2),
(104, 1),
(104, 2),
(105, 1),
(105, 2),
(106, 1),
(106, 2),
(107, 1),
(107, 2),
(108, 1),
(108, 2),
(109, 1),
(109, 2),
(110, 1),
(110, 2),
(111, 1),
(111, 2),
(112, 1),
(112, 2),
(113, 1),
(113, 2),
(114, 1),
(114, 2),
(115, 1),
(115, 2),
(116, 1),
(116, 2),
(117, 1),
(117, 2),
(118, 1),
(118, 2),
(119, 1),
(119, 2),
(120, 1),
(120, 2),
(121, 1),
(121, 2),
(122, 1),
(122, 2),
(123, 1),
(123, 2),
(124, 1),
(124, 2),
(125, 1),
(125, 2),
(126, 1),
(126, 2),
(127, 1),
(127, 2),
(128, 1),
(128, 2),
(129, 1),
(129, 2),
(130, 1),
(130, 2),
(131, 1),
(131, 2),
(132, 1),
(132, 2),
(133, 1),
(133, 2),
(134, 1),
(134, 2),
(135, 1),
(135, 2),
(136, 1),
(136, 2),
(137, 1),
(137, 2),
(138, 1),
(138, 2),
(139, 1),
(139, 2),
(140, 1),
(140, 2),
(141, 1),
(141, 2),
(142, 1),
(142, 2),
(143, 1),
(143, 2),
(144, 1),
(144, 2),
(145, 1),
(145, 2),
(146, 1),
(146, 2),
(147, 1),
(147, 2),
(148, 1),
(148, 2),
(149, 1),
(149, 2),
(150, 1),
(150, 2),
(151, 1),
(151, 2),
(152, 1),
(152, 2),
(153, 1),
(153, 2),
(154, 1),
(154, 2),
(155, 1),
(155, 2),
(156, 1),
(156, 2),
(157, 1),
(157, 2),
(158, 1),
(158, 2),
(159, 1),
(159, 2),
(160, 1),
(160, 2),
(161, 1),
(161, 2),
(162, 1),
(162, 2),
(163, 1),
(163, 2),
(164, 1),
(164, 2),
(165, 1),
(165, 2),
(166, 1),
(166, 2),
(167, 1),
(167, 2),
(168, 1),
(168, 2),
(169, 1),
(169, 2),
(170, 1),
(170, 2),
(171, 1),
(171, 2),
(172, 1),
(172, 2),
(173, 1),
(173, 2),
(174, 1),
(174, 2),
(175, 1),
(175, 2),
(176, 1),
(176, 2),
(177, 1),
(177, 2),
(178, 1),
(179, 1),
(179, 2),
(180, 1),
(180, 2),
(181, 1),
(181, 2),
(182, 1),
(182, 2),
(183, 1),
(183, 2),
(184, 1),
(184, 2),
(185, 1),
(185, 2),
(186, 1),
(186, 2),
(187, 1),
(187, 2),
(188, 1),
(188, 2),
(189, 1),
(189, 2),
(190, 1),
(190, 2),
(191, 1),
(191, 2),
(192, 1),
(192, 2),
(193, 1),
(193, 2),
(194, 1),
(194, 2),
(195, 1),
(195, 2),
(196, 1),
(196, 2),
(197, 1),
(197, 2),
(198, 1),
(198, 2),
(199, 1),
(199, 2),
(200, 1),
(200, 2),
(201, 1),
(201, 2),
(202, 1),
(202, 2),
(203, 1),
(203, 2),
(204, 1),
(204, 2),
(205, 1),
(206, 1),
(206, 2),
(207, 1),
(207, 2),
(208, 1),
(208, 2),
(209, 1),
(209, 2),
(210, 1),
(210, 2),
(211, 1),
(211, 2),
(212, 1),
(212, 2),
(213, 1),
(213, 2),
(214, 1),
(214, 2),
(215, 1),
(215, 2),
(216, 1),
(216, 2),
(217, 1),
(217, 2),
(218, 1),
(218, 2),
(219, 1),
(219, 2),
(220, 1),
(220, 2),
(221, 1),
(221, 2),
(222, 1),
(222, 2),
(223, 1),
(223, 2),
(224, 1),
(224, 2),
(225, 1),
(225, 2),
(226, 1),
(226, 2),
(227, 1),
(227, 2),
(228, 1),
(228, 2),
(229, 1),
(229, 2),
(230, 1),
(230, 2),
(231, 1),
(232, 1),
(232, 2),
(233, 1),
(233, 2),
(234, 1),
(234, 2),
(235, 1),
(235, 2),
(236, 1),
(236, 2),
(237, 1),
(237, 2),
(238, 1),
(238, 2),
(239, 1),
(239, 2),
(240, 1),
(240, 2),
(241, 1),
(241, 2),
(242, 1),
(243, 1),
(243, 2),
(244, 1),
(244, 2),
(245, 1),
(245, 2),
(246, 1),
(246, 2),
(247, 1),
(247, 2),
(248, 1),
(248, 2),
(249, 1),
(249, 2),
(250, 1),
(250, 2),
(251, 1),
(251, 2),
(252, 1),
(252, 2),
(253, 1),
(253, 2),
(254, 1),
(254, 2),
(255, 1),
(255, 2),
(256, 1),
(256, 2),
(257, 1),
(257, 2),
(258, 1),
(258, 2),
(259, 1),
(259, 2),
(260, 1),
(260, 2),
(261, 1),
(261, 2),
(262, 1),
(262, 2),
(263, 1),
(263, 2),
(264, 1),
(264, 2),
(265, 1),
(265, 2),
(266, 1),
(266, 2),
(267, 1),
(267, 2),
(268, 1),
(268, 2),
(269, 1),
(269, 2),
(270, 1),
(270, 2),
(271, 1),
(271, 2),
(272, 1),
(272, 2),
(273, 1),
(274, 1),
(274, 2),
(275, 1),
(275, 2),
(276, 1),
(276, 2),
(277, 1),
(277, 2),
(278, 1),
(278, 2),
(279, 1),
(279, 2),
(280, 1),
(280, 2),
(281, 1),
(281, 2),
(282, 1),
(282, 2),
(283, 1),
(283, 2),
(284, 1),
(284, 2),
(285, 1),
(285, 2),
(286, 1),
(286, 2),
(287, 1),
(287, 2),
(288, 1),
(288, 2),
(289, 1),
(289, 2),
(290, 1),
(290, 2),
(291, 1),
(291, 2),
(292, 1),
(292, 2),
(293, 1),
(293, 2),
(294, 1),
(294, 2),
(295, 1),
(295, 2),
(296, 1),
(296, 2),
(297, 1),
(297, 2),
(298, 1),
(298, 2),
(299, 1),
(299, 2),
(300, 1),
(300, 2),
(301, 1),
(301, 2),
(302, 1),
(302, 2),
(303, 1),
(303, 2),
(304, 1),
(304, 2),
(305, 1),
(305, 2),
(306, 1),
(306, 2),
(307, 1),
(307, 2),
(308, 1),
(308, 2),
(309, 1),
(309, 2),
(310, 1),
(310, 2),
(311, 1),
(311, 2),
(312, 1),
(312, 2),
(313, 1),
(313, 2),
(314, 1),
(314, 2),
(315, 1),
(315, 2),
(316, 1),
(316, 2),
(317, 1),
(317, 2),
(318, 1),
(318, 2),
(319, 1),
(319, 2),
(320, 1),
(320, 2),
(321, 1),
(321, 2),
(322, 1),
(322, 2),
(323, 1),
(323, 2),
(324, 1),
(324, 2),
(325, 1),
(325, 2),
(326, 1),
(326, 2),
(327, 1),
(327, 2),
(328, 1),
(328, 2),
(329, 1),
(329, 2),
(330, 1),
(330, 2),
(331, 1),
(331, 2),
(332, 1),
(332, 2),
(333, 1),
(333, 2),
(334, 1),
(334, 2),
(335, 1),
(335, 2),
(336, 1),
(336, 2),
(337, 1),
(337, 2),
(338, 1),
(338, 2),
(339, 1),
(339, 2),
(340, 1),
(340, 2),
(341, 1),
(341, 2),
(342, 1),
(342, 2),
(343, 1),
(343, 2),
(344, 1),
(344, 2),
(345, 1),
(345, 2),
(346, 1),
(346, 2),
(347, 1),
(347, 2),
(348, 1),
(348, 2),
(349, 1),
(349, 2),
(350, 1),
(350, 2),
(351, 1),
(351, 2),
(352, 1),
(352, 2),
(353, 1),
(353, 2),
(354, 1),
(354, 2),
(355, 1),
(355, 2),
(356, 1),
(356, 2),
(357, 1),
(357, 2),
(358, 1),
(358, 2),
(359, 1),
(359, 2),
(360, 1),
(360, 2),
(361, 1),
(361, 2),
(362, 1),
(362, 2),
(363, 1),
(363, 2),
(364, 1),
(364, 2),
(365, 1),
(365, 2),
(366, 1),
(366, 2),
(367, 1),
(367, 2),
(368, 1),
(368, 2),
(369, 1),
(370, 1),
(370, 2),
(371, 1),
(371, 2),
(372, 1),
(372, 2),
(373, 1),
(373, 2),
(374, 1),
(374, 2),
(375, 1),
(375, 2),
(376, 1),
(376, 2),
(377, 1),
(377, 2),
(378, 1),
(378, 2),
(379, 1),
(379, 2),
(380, 1),
(380, 2),
(381, 1),
(381, 2),
(382, 1),
(382, 2),
(383, 1),
(383, 2),
(384, 1),
(384, 2),
(385, 1),
(385, 2),
(386, 1),
(386, 2),
(387, 1),
(387, 2),
(388, 1),
(388, 2),
(389, 1),
(389, 2),
(390, 1),
(390, 2),
(391, 1),
(391, 2),
(392, 1),
(392, 2),
(393, 1),
(393, 2),
(394, 1),
(394, 2),
(395, 1),
(395, 2),
(396, 1),
(396, 2),
(397, 1),
(397, 2),
(398, 1),
(398, 2),
(399, 1),
(399, 2),
(400, 1),
(400, 2),
(401, 1),
(401, 2),
(402, 1),
(402, 2),
(403, 1),
(403, 2),
(404, 1),
(404, 2),
(405, 1),
(405, 2),
(406, 1),
(406, 2),
(407, 1),
(407, 2),
(408, 1),
(408, 2),
(409, 1),
(409, 2),
(410, 1),
(410, 2),
(411, 1),
(411, 2),
(412, 1),
(412, 2),
(413, 1),
(413, 2),
(414, 1),
(414, 2),
(415, 1),
(415, 2),
(416, 1),
(416, 2),
(417, 1),
(417, 2),
(418, 1),
(418, 2),
(419, 1),
(419, 2),
(420, 1),
(420, 2),
(421, 1),
(421, 2),
(422, 1),
(422, 2),
(423, 1),
(423, 2),
(424, 1),
(424, 2),
(425, 1),
(425, 2),
(426, 1),
(426, 2),
(427, 1),
(427, 2),
(428, 1),
(428, 2),
(429, 1),
(429, 2),
(430, 1),
(430, 2),
(431, 1),
(431, 2),
(432, 1),
(432, 2),
(433, 1),
(433, 2),
(434, 1),
(434, 2),
(435, 1),
(435, 2),
(436, 1),
(436, 2),
(437, 1),
(437, 2),
(438, 1),
(438, 2),
(439, 1),
(439, 2),
(440, 1),
(440, 2),
(441, 1),
(441, 2),
(442, 1),
(442, 2),
(443, 1),
(443, 2),
(444, 1),
(444, 2),
(445, 1),
(445, 2),
(446, 1),
(446, 2),
(447, 1),
(447, 2),
(448, 1),
(448, 2),
(449, 1),
(450, 1),
(450, 2),
(451, 1),
(451, 2),
(452, 1),
(452, 2),
(453, 1),
(453, 2),
(454, 1),
(454, 2),
(455, 1),
(455, 2),
(456, 1),
(456, 2),
(457, 1),
(457, 2),
(458, 1),
(458, 2),
(459, 1),
(459, 2),
(460, 1),
(460, 2),
(461, 1),
(461, 2),
(462, 1),
(462, 2),
(463, 1),
(463, 2),
(464, 1),
(464, 2),
(465, 1),
(465, 2),
(466, 1),
(466, 2),
(467, 1),
(467, 2),
(468, 1),
(468, 2),
(469, 1),
(469, 2),
(470, 1),
(470, 2),
(471, 1),
(471, 2),
(472, 1),
(472, 2),
(473, 1),
(473, 2),
(474, 1),
(474, 2),
(475, 1),
(475, 2),
(476, 1),
(476, 2),
(477, 1),
(477, 2),
(478, 1),
(478, 2),
(479, 1),
(479, 2),
(480, 1),
(480, 2),
(481, 1),
(481, 2),
(482, 1),
(482, 2),
(483, 1),
(483, 2),
(484, 1),
(484, 2),
(485, 1),
(485, 2),
(486, 1),
(486, 2),
(487, 1),
(487, 2),
(488, 1),
(488, 2),
(489, 1),
(489, 2),
(490, 1),
(490, 2),
(491, 1),
(491, 2),
(492, 1),
(492, 2),
(493, 1),
(494, 1),
(494, 2),
(495, 1),
(495, 2),
(496, 1),
(496, 2),
(497, 1),
(497, 2),
(498, 1),
(498, 2),
(499, 1),
(499, 2),
(500, 1),
(500, 2),
(501, 1),
(501, 2),
(502, 1),
(502, 2),
(503, 1),
(503, 2),
(504, 1),
(504, 2),
(505, 1),
(505, 2),
(506, 1),
(506, 2),
(507, 1),
(507, 2),
(508, 1),
(508, 2),
(509, 1),
(509, 2),
(510, 1),
(510, 2),
(511, 1),
(511, 2),
(512, 1),
(512, 2),
(513, 1),
(513, 2),
(514, 1),
(515, 1),
(515, 2),
(516, 1),
(516, 2),
(517, 1),
(517, 2),
(518, 1),
(518, 2),
(519, 1),
(519, 2),
(520, 1),
(520, 2),
(521, 1),
(521, 2),
(522, 1),
(522, 2),
(523, 1),
(523, 2),
(524, 1),
(524, 2),
(525, 1),
(525, 2),
(526, 1),
(526, 2),
(527, 1),
(527, 2),
(528, 1),
(528, 2),
(529, 1),
(529, 2),
(530, 1),
(530, 2),
(531, 1),
(531, 2),
(532, 2),
(533, 2),
(534, 2),
(535, 2),
(536, 2),
(537, 2),
(538, 2),
(539, 2),
(540, 2),
(541, 2),
(542, 2),
(544, 2),
(545, 2),
(546, 2),
(547, 2),
(548, 2),
(549, 2),
(550, 2),
(551, 2),
(552, 2),
(553, 2),
(554, 2),
(555, 2),
(556, 2),
(557, 2),
(558, 2),
(559, 2),
(560, 2),
(561, 2),
(562, 2),
(563, 2),
(564, 2),
(565, 2),
(566, 2),
(567, 2),
(568, 2),
(569, 2),
(570, 2),
(571, 2),
(572, 2),
(573, 2),
(574, 2),
(575, 2),
(576, 2),
(577, 2),
(578, 2),
(579, 2),
(580, 2),
(581, 2),
(582, 2),
(583, 2),
(584, 2),
(585, 2),
(586, 2),
(587, 2),
(589, 2),
(590, 2),
(591, 2),
(592, 2),
(593, 2),
(594, 2),
(595, 2),
(596, 2),
(597, 2),
(598, 2),
(599, 2),
(600, 2),
(601, 2),
(602, 2),
(603, 2),
(604, 2),
(605, 2),
(606, 2),
(607, 2),
(608, 2),
(609, 2),
(610, 2),
(611, 2),
(612, 2),
(613, 2),
(614, 2),
(615, 2),
(616, 2),
(617, 2),
(618, 2),
(619, 2),
(620, 2),
(621, 2),
(622, 2),
(623, 2),
(624, 2),
(625, 2),
(626, 2),
(627, 2),
(628, 2),
(629, 2),
(630, 2),
(631, 2),
(632, 2),
(633, 2),
(634, 2),
(635, 2),
(636, 2),
(637, 2),
(638, 2),
(639, 2),
(640, 2),
(641, 2),
(642, 2),
(643, 2),
(644, 2),
(645, 2),
(646, 2),
(647, 2),
(648, 2),
(649, 2),
(650, 2),
(651, 2),
(652, 2),
(653, 2),
(655, 2),
(656, 2),
(657, 2),
(658, 2),
(659, 2),
(660, 2),
(661, 2),
(662, 2),
(663, 2),
(664, 2),
(665, 2),
(666, 2),
(667, 2),
(668, 2),
(669, 2),
(670, 2),
(671, 2),
(672, 2),
(673, 2),
(674, 2),
(675, 2),
(676, 2),
(677, 2),
(679, 2),
(680, 2),
(681, 2),
(682, 2),
(683, 2),
(684, 2),
(685, 2),
(686, 2),
(687, 2),
(688, 2),
(689, 2),
(690, 2),
(691, 2),
(692, 2),
(693, 2),
(695, 2),
(696, 2),
(697, 2),
(698, 2),
(699, 2),
(700, 2),
(701, 2),
(702, 2),
(703, 2),
(704, 2),
(705, 2),
(706, 2),
(707, 2),
(708, 2),
(709, 2),
(710, 2),
(711, 2),
(712, 2),
(713, 2),
(714, 2),
(715, 2),
(716, 2),
(717, 2),
(718, 2),
(719, 2),
(720, 2),
(721, 2),
(722, 2),
(723, 2),
(725, 2),
(726, 2),
(727, 2),
(728, 2),
(729, 2),
(730, 2),
(731, 2),
(732, 2),
(733, 2),
(734, 2),
(735, 2),
(736, 2),
(737, 2),
(738, 2),
(739, 2),
(740, 2),
(741, 2),
(742, 2),
(743, 2),
(744, 2),
(745, 2),
(746, 2),
(747, 2),
(748, 2),
(749, 2),
(750, 2),
(751, 2),
(752, 2),
(753, 2),
(754, 2),
(755, 2),
(756, 2),
(757, 2),
(758, 2),
(759, 2),
(760, 2),
(761, 2),
(762, 2),
(763, 2),
(764, 2),
(765, 2),
(766, 2),
(767, 2),
(768, 2),
(769, 2),
(770, 2),
(771, 2),
(772, 2),
(773, 2),
(774, 2),
(775, 2),
(776, 2),
(777, 2),
(778, 2),
(779, 2),
(780, 2),
(781, 2),
(782, 2),
(783, 2),
(784, 2),
(785, 2),
(786, 2),
(787, 2),
(788, 2),
(789, 2),
(790, 2),
(791, 2),
(792, 2),
(793, 2),
(794, 2),
(795, 2),
(796, 2),
(797, 2),
(798, 2),
(799, 2),
(800, 2),
(801, 2),
(802, 2),
(803, 2),
(804, 2),
(805, 2),
(806, 2),
(807, 2),
(808, 2),
(809, 2),
(810, 2),
(811, 2),
(812, 2),
(813, 2),
(814, 2),
(815, 2),
(816, 2),
(817, 2),
(818, 2),
(819, 2),
(820, 2),
(821, 2),
(822, 2),
(823, 2),
(824, 2),
(825, 2),
(826, 2),
(827, 2),
(828, 2),
(829, 2),
(830, 2),
(831, 2),
(832, 2),
(833, 2),
(834, 2),
(835, 2),
(836, 2),
(837, 2),
(838, 2),
(839, 2),
(840, 2),
(841, 2),
(842, 2),
(843, 2),
(844, 2),
(845, 2),
(846, 2),
(847, 2),
(848, 2),
(849, 2),
(850, 2),
(851, 2),
(852, 2),
(853, 2),
(854, 2),
(855, 2),
(856, 2),
(857, 2),
(858, 2),
(859, 2),
(860, 2),
(861, 2),
(862, 2),
(863, 2),
(864, 2),
(865, 2),
(866, 2),
(867, 2),
(868, 2),
(869, 2),
(870, 2),
(871, 2),
(872, 2),
(873, 2),
(874, 2),
(875, 2),
(876, 2),
(877, 2),
(878, 2),
(879, 2),
(880, 2),
(881, 2),
(882, 2),
(883, 2),
(884, 2),
(885, 2),
(886, 2),
(887, 2),
(888, 2);

-- --------------------------------------------------------

--
-- Table structure for table `postal_exchanges`
--

CREATE TABLE `postal_exchanges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `ref_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postal_exchange_types`
--

CREATE TABLE `postal_exchange_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postal_exchange_types`
--

INSERT INTO `postal_exchange_types` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-06-30 05:33:49', '2021-06-30 05:33:49', 1, NULL, 'LETTER DISPATCH', 1),
(2, '2021-06-30 05:33:49', '2021-06-30 05:33:49', 1, NULL, 'LETTER RECEIVE', 1),
(3, '2021-06-30 05:33:49', '2021-06-30 05:33:49', 1, NULL, 'COURIER RECEIVE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT 0,
  `sub_category_id` int(10) UNSIGNED DEFAULT 0,
  `warranty` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `cost_price` double(10,2) DEFAULT 0.00,
  `sale_price` double(10,2) DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `invoice_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendors_id` int(10) UNSIGNED NOT NULL,
  `purchase_date` datetime NOT NULL,
  `grand_total_amount` int(11) NOT NULL,
  `total_discount` int(11) NOT NULL,
  `purchase_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `purchase_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_returns`
--

CREATE TABLE `purchase_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `purchase_date` datetime NOT NULL,
  `invoice_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_id` int(10) UNSIGNED NOT NULL,
  `vendors_id` int(10) UNSIGNED NOT NULL,
  `purchase_detail_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `rooms_id` int(10) UNSIGNED DEFAULT NULL,
  `beds_id` int(10) UNSIGNED DEFAULT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `register_date` datetime NOT NULL,
  `leave_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resident_histories`
--

CREATE TABLE `resident_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `rooms_id` int(10) UNSIGNED DEFAULT NULL,
  `beds_id` int(10) UNSIGNED DEFAULT NULL,
  `residents_id` int(10) UNSIGNED NOT NULL,
  `history_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'Super Admin', 'Super Admin', '2021-06-30 05:29:07', '2021-06-30 05:29:07'),
(2, 'admin', 'Administrator', 'Administrator', '2021-06-30 05:29:07', '2021-06-30 05:29:07'),
(3, 'account', 'Accountant', 'Accountant', '2021-06-30 05:29:07', '2021-06-30 05:29:07'),
(4, 'library', 'Librarian', 'Librarian', '2021-06-30 05:29:07', '2021-06-30 05:29:07'),
(5, 'staff', 'Staff/Teacher', 'Staff', '2021-06-30 05:29:07', '2021-06-30 05:29:07'),
(6, 'student', 'Student', 'Student', '2021-06-30 05:29:07', '2021-06-30 05:29:07'),
(7, 'guardian', 'Guardian', 'Guardian', '2021-06-30 05:29:07', '2021-06-30 05:29:07'),
(8, 'web-admin', 'Web Admin', 'Web Admin', '2021-06-30 05:29:07', '2021-06-30 05:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `room_type` int(10) UNSIGNED NOT NULL,
  `room_number` int(11) NOT NULL,
  `rate_perbed` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `route_vehicles`
--

CREATE TABLE `route_vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `routes_id` int(10) UNSIGNED NOT NULL,
  `vehicles_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_pays`
--

CREATE TABLE `salary_pays` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `salary_masters_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `allowance` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `payment_mode` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_returns`
--

CREATE TABLE `sales_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semester` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `gradingType_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `semester`, `slug`, `staff_id`, `gradingType_id`, `status`) VALUES
(1, '2023-05-01 20:20:16', '2023-05-01 20:20:39', 1, 1, 'TERM1', 'TERM1', 0, 1, 1),
(2, '2023-05-01 20:52:02', '2023-05-01 20:52:02', 1, NULL, 'TERM2', 'TERM2', 0, 1, 1),
(3, '2023-05-01 20:57:24', '2023-05-01 20:57:24', 1, NULL, 'TERM3', 'TERM3', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `semester_assets`
--

CREATE TABLE `semester_assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `assets_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semester_subject`
--

CREATE TABLE `semester_subject` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semester_subject`
--

INSERT INTO `semester_subject` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `semester_id`, `subject_id`, `status`) VALUES
(1, NULL, NULL, 1, 1, 1, 1, 0),
(2, NULL, NULL, 1, 1, 1, 2, 0),
(3, NULL, NULL, 1, 1, 1, 3, 0),
(4, NULL, NULL, 1, 1, 1, 5, 0),
(5, NULL, NULL, 1, 1, 1, 6, 0),
(6, NULL, NULL, 1, 1, 1, 8, 0),
(7, NULL, NULL, 1, 1, 1, 9, 0),
(8, NULL, NULL, 1, 1, 1, 7, 0),
(9, NULL, NULL, 1, 1, 1, 11, 0),
(10, NULL, NULL, 1, 1, 1, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_emails`
--

CREATE TABLE `sms_emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms` tinyint(1) NOT NULL DEFAULT 0,
  `email` tinyint(1) NOT NULL DEFAULT 0,
  `group` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `identity` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `created_at`, `updated_at`, `identity`, `logo`, `link`, `config`, `status`) VALUES
(1, NULL, NULL, 'Msg91', 'msg91', 'https://msg91.com', '{\"Authkey\":\"\",\"Sender\":\"\",\"Route\":\"\",\"Country\":\"\"}', 0),
(2, NULL, NULL, 'Msg94', 'msg94', 'http://www.msg94.com', '{\"Authkey\":\"\",\"Sender\":\"\",\"Route\":\"\",\"Country\":\"\"}', 0),
(3, NULL, NULL, 'KeswaTech', 'keswasms', 'http://ktsms.keswatech.com', '{\"Sender\":\"\",\"apiKey\":\"\"}', 0),
(4, NULL, NULL, 'Twilio', 'twilio', 'https://www.twilio.com', '{\"SID\":\"\",\"Token\":\"\",\"FromNumber\":\"\"}', 0),
(5, NULL, NULL, 'MessageBird', 'messagebird', 'https://www.messagebird.com', '{\"Originator\":\"\",\"AcccessKey\":\"\"}', 0),
(6, NULL, NULL, 'Clickatell', 'clickatell', 'http://clickatell.com', '{\"API_ID\":\"\",\"User\":\"\",\"Password\":\"\",\"Unicode\":\"0\"}', 0),
(7, NULL, NULL, 'BudgetSmsNet', 'budgetsms', 'https://www.budgetsms.net', '{\"Username\":\"\",\"UserID\":\"\",\"Handle\":\"\",\"From\":\"\"}', 0),
(8, NULL, NULL, 'Nexmo', 'nexmo', 'https://www.nexmo.com', '{\"From\":\"\",\"API_KEY\":\"\",\"API_SECRET\":\"\"}', 0),
(9, NULL, NULL, 'smsCountry', 'smscountry', 'https://www.smscountry.com', '{\"UserName\":\"\",\"Password\":\"\",\"SenderId\":\"\",\"Token\":\"\"}', 0),
(10, NULL, NULL, 'MsgClub', 'msgclub', 'http://msg.msgclub.net', '{\"AUTH_KEY\":\"\",\"senderId\":\"\",\"routeId\":\"\"}', 0),
(11, NULL, NULL, 'Digimiles', 'digimiles', 'http://www.digimiles.in', '{\"UserName\":\"\",\"Password\":\"\",\"Type\":0,\"Sender_ID\":\"\"}', 0),
(12, NULL, NULL, 'Textlocal', 'textlocal', 'https://www.textlocal.in', '{\"apiKey\":\"\",\"sender\":\"\"}', 0),
(13, NULL, NULL, 'SmartSMS', 'smartsms', 'https://smartsmssolutions.com/', '{\"ACCESS_TOKEN\":\"\",\"Sender\":\"\",\"Routing\":\"2\",\"Type\":\"0\"}', 0),
(14, NULL, NULL, 'Sparrow', 'sparrow', 'http://sparrowsms.com', '{\"From\":\"\",\"Token\":\"\"}', 0),
(15, NULL, NULL, 'InitiativeNepal', 'aayosms', 'https://www.ininepal.com', '{\"Sender\":\"\",\"UserName\":\"\",\"Password\":\"\"}', 0),
(16, NULL, NULL, 'SendPK', 'sendpk', 'https://sendpk.com/api.php', '{\"UserName\":\"\",\"Password\":\"\",\"Sender\":\"\",\"Type\":\"\"}', 0),
(17, NULL, NULL, 'LifetimeSMS', 'lifetimesms', 'http://lifetimesms.com', '{\"ApiToken\":\"\",\"ApiSecret\":\"\",\"From\":\"\"}', 0),
(18, NULL, NULL, 'SmsCluster', 'smscluster', 'http://www.smscluster.com', '{\"AUTH_KEY\":\"\",\"senderId\":\"\",\"routeId\":\"\",\"smsContentType\":\"English\"}', 0),
(19, NULL, NULL, 'marketsmsPK', 'marketsms', 'http://www.marketsms.pk', '{\"UserName\":\"\",\"Password\":\"\",\"From\":\"\"}', 0),
(20, NULL, NULL, 'springEdge', 'springedge', 'http://springedge.com', '{\"API_KEY\":\"\",\"SenderID\":\"\"}', 0),
(21, NULL, '2023-05-01 22:58:43', 'africastalking', 'africastalking', 'https://africastalking.com', '[]', 0),
(22, NULL, NULL, 'TheSMSCentral', 'thesmscentral', 'https://thesmscentral.com', '{\"ApiToken\":\"\",\"Sender\":\"\"}', 0),
(23, NULL, '2023-05-01 22:58:36', 'AakashNepal', 'aakashsms', 'https://aakashsms.com', '[]', 0),
(24, NULL, NULL, 'FullTimeBulk', 'fulltimesms', 'http://www.sms.fulltimesms.com', '{\"ApiToken\":\"\",\"ApiSecret\":\"\",\"From\":\"\"}', 0),
(25, NULL, NULL, 'AmetechSolution', 'ametechsolution', 'https://ametechsolution.in', '{\"User\":\"\",\"Auth\":\"\",\"Sender\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_date` datetime NOT NULL,
  `designation` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_designations`
--

CREATE TABLE `staff_designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `transaction_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  `qty_in` int(11) DEFAULT 0,
  `qty_out` int(11) DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_date` datetime NOT NULL,
  `university_reg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty` int(10) UNSIGNED DEFAULT NULL,
  `semester` int(10) UNSIGNED DEFAULT NULL,
  `academic_status` int(10) UNSIGNED DEFAULT NULL,
  `batch` int(10) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id_number` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_id_card_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_id_card_number` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_signature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `reg_no`, `reg_date`, `university_reg`, `faculty`, `semester`, `academic_status`, `batch`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `gender`, `blood_group`, `religion`, `caste`, `nationality`, `national_id_type`, `national_id_number`, `extra_id_card_type`, `extra_id_card_number`, `mother_tongue`, `email`, `extra_info`, `student_image`, `student_signature`, `status`) VALUES
(1, '2023-05-01 20:27:56', '2023-05-01 23:42:13', 1, NULL, '001', '2023-01-01 00:00:00', NULL, 1, 1, 4, 1, 'BRIAN', NULL, 'MUTUMA', '2005-06-08 00:00:00', 'MALE', 'AB-', 'CHRISTIAN', NULL, 'KENYAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1),
(2, '2023-05-01 22:25:17', '2023-05-01 23:42:13', 1, NULL, '2', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Kelvin   ', 'Mwenda', 'Muchiri', '2004-12-06 00:00:00', 'MALE', 'B+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(3, '2023-05-01 22:25:17', '2023-05-01 23:42:13', 1, NULL, '3', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Jeff Mutugi Kirimi ', '', '', '2004-12-07 00:00:00', 'MALE', 'A+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(4, '2023-05-01 22:25:17', '2023-05-01 23:42:13', 1, NULL, '4', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Erustus   ', 'Macharia', 'Karumba', '2004-12-08 00:00:00', 'MALE', 'A-', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(5, '2023-05-01 22:25:18', '2023-05-01 23:42:13', 1, NULL, '5', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Alex  ', '', 'Bundi', '2004-12-09 00:00:00', 'MALE', 'O+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(6, '2023-05-01 22:25:18', '2023-05-01 23:42:13', 1, NULL, '6', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Cornelius  ', '', 'Karani', '2004-12-10 00:00:00', 'MALE', 'B+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(7, '2023-05-01 22:25:18', '2023-05-01 23:42:13', 1, NULL, '7', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Joseph   ', 'Ngau', 'Mutinda', '2004-12-11 00:00:00', 'MALE', 'B+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(8, '2023-05-01 22:25:18', '2023-05-01 23:42:13', 1, NULL, '8', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Morris  ', '', 'Koome', '2004-12-12 00:00:00', 'MALE', 'A+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(9, '2023-05-01 22:25:18', '2023-05-01 23:42:13', 1, NULL, '9', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Julius  ', '', 'Mutwiri', '2004-12-13 00:00:00', 'MALE', 'A-', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(10, '2023-05-01 22:25:18', '2023-05-01 23:42:13', 1, NULL, '10', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Julius   ', 'Mutabari', 'Kainga', '2004-12-14 00:00:00', 'MALE', 'O+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(11, '2023-05-01 22:25:18', '2023-05-01 23:42:13', 1, NULL, '11', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Dennis  ', '', 'Mwenda', '2004-12-15 00:00:00', 'MALE', 'B+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(12, '2023-05-01 22:25:18', '2023-05-01 23:42:13', 1, NULL, '12', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Sammy   ', 'Munyi', 'Ndungu', '2004-12-16 00:00:00', 'MALE', 'B+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(13, '2023-05-01 22:25:18', '2023-05-01 23:42:13', 1, NULL, '13', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Godwin  ', '', 'Mwenda', '2004-12-17 00:00:00', 'MALE', 'A+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(14, '2023-05-01 22:25:18', '2023-05-01 23:42:13', 1, NULL, '14', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Bonface  ', '', 'Karani', '2004-12-18 00:00:00', 'MALE', 'A-', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(15, '2023-05-01 22:25:18', '2023-05-01 23:42:13', 1, NULL, '15', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Denis  ', '', 'Kithinji', '2004-12-19 00:00:00', 'MALE', 'O+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(16, '2023-05-01 22:25:18', '2023-05-01 23:42:13', 1, NULL, '16', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Dennis  ', '', 'Mwiti', '2004-12-20 00:00:00', 'MALE', 'B+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(17, '2023-05-01 22:25:18', '2023-05-01 23:42:13', 1, NULL, '17', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Antony  ', '', 'Kagwanja', '2004-12-21 00:00:00', 'MALE', 'B+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(18, '2023-05-01 22:25:19', '2023-05-01 23:42:13', 1, NULL, '18', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Mark  ', '', 'Murithi', '2004-12-22 00:00:00', 'MALE', 'A+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(19, '2023-05-01 22:25:19', '2023-05-01 23:42:13', 1, NULL, '19', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Murithi  ', '', 'Alex', '2004-12-23 00:00:00', 'MALE', 'A-', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(20, '2023-05-01 22:25:19', '2023-05-01 23:42:13', 1, NULL, '20', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Dennis  ', '', 'Mugendi', '2004-12-24 00:00:00', 'MALE', 'O+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(21, '2023-05-01 22:25:19', '2023-05-01 23:42:13', 1, NULL, '21', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Dennis  ', '', 'Mutwiri', '2004-12-25 00:00:00', 'MALE', 'B+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1),
(22, '2023-05-01 22:25:19', '2023-05-01 23:42:13', 1, NULL, '22', '2023-01-10 00:00:00', '', 1, 1, 4, 1, ' Abadan   ', 'Mwenda', 'Miriti', '2004-12-26 00:00:00', 'MALE', 'B+', 'christian', '', 'Kenyan', '', '', '', '', '', 'student4@gmail.com', '', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_batches`
--

CREATE TABLE `student_batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_batches`
--

INSERT INTO `student_batches` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2023-05-01 18:37:04', '2023-05-01 18:37:04', 1, NULL, 'BATCH23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_guardians`
--

CREATE TABLE `student_guardians` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `guardians_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_guardians`
--

INSERT INTO `student_guardians` (`id`, `created_at`, `updated_at`, `students_id`, `guardians_id`) VALUES
(1, '2023-05-01 20:27:56', '2023-05-01 20:27:56', 1, 1),
(2, '2023-05-01 22:25:17', '2023-05-01 22:25:17', 2, 2),
(3, '2023-05-01 22:25:17', '2023-05-01 22:25:17', 3, 3),
(4, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 4, 4),
(5, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 5, 5),
(6, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 6, 6),
(7, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 7, 7),
(8, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 8, 8),
(9, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 9, 9),
(10, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 10, 10),
(11, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 11, 11),
(12, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 12, 12),
(13, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 13, 13),
(14, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 14, 14),
(15, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 15, 15),
(16, '2023-05-01 22:25:18', '2023-05-01 22:25:18', 16, 16),
(17, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 17, 17),
(18, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 18, 18),
(19, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 19, 19),
(20, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 20, 20),
(21, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 21, 21),
(22, '2023-05-01 22:25:19', '2023-05-01 22:25:19', 22, 22);

-- --------------------------------------------------------

--
-- Table structure for table `student_statuses`
--

CREATE TABLE `student_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_statuses`
--

INSERT INTO `student_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'New Admission', 1),
(2, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'Continue', 1),
(3, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'Pass Out', 1),
(4, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'Back Continue', 1),
(5, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'Drop Out', 1),
(6, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'Transfer in', 1),
(7, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'Transfer Out', 1),
(8, '2021-06-30 05:33:50', '2021-06-30 05:33:50', 1, 1, 'Online Registration', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_mark_theory` int(11) DEFAULT NULL,
  `pass_mark_theory` int(11) DEFAULT NULL,
  `full_mark_practical` int(11) DEFAULT NULL,
  `pass_mark_practical` int(11) DEFAULT NULL,
  `credit_hour` int(11) DEFAULT NULL,
  `sub_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `code`, `full_mark_theory`, `pass_mark_theory`, `full_mark_practical`, `pass_mark_practical`, `credit_hour`, `sub_type`, `class_type`, `staff_id`, `description`, `status`) VALUES
(1, '2023-05-01 17:59:59', '2023-05-01 17:59:59', 1, NULL, 'Mathematics', '01', NULL, NULL, NULL, NULL, NULL, 'Compulsory', 'Theory', 0, NULL, 1),
(2, '2023-05-01 18:00:29', '2023-05-01 18:00:29', 1, NULL, 'ENGLISH', '02', NULL, NULL, NULL, NULL, NULL, 'Compulsory', 'Theory', 0, NULL, 1),
(3, '2023-05-01 18:00:54', '2023-05-01 18:00:54', 1, NULL, 'KISWAHILI', '03', NULL, NULL, NULL, NULL, NULL, 'Compulsory', 'Theory', 0, NULL, 1),
(4, '2023-05-01 18:01:53', '2023-05-01 18:01:53', 1, NULL, 'BIOLOGY', '4', NULL, NULL, NULL, NULL, NULL, 'Compulsory', 'Theory', 0, NULL, 1),
(5, '2023-05-01 18:02:12', '2023-05-01 18:02:12', 1, NULL, 'PHYSICS', '05', NULL, NULL, NULL, NULL, NULL, 'Compulsory', 'Theory', 0, NULL, 1),
(6, '2023-05-01 18:03:33', '2023-05-01 18:03:33', 1, NULL, 'CHEMISTRY', '06', NULL, NULL, NULL, NULL, NULL, 'Compulsory', 'Theory', 0, NULL, 1),
(7, '2023-05-01 18:03:55', '2023-05-01 18:03:55', 1, NULL, 'AGRICUTURE', '07', NULL, NULL, NULL, NULL, NULL, 'Optional', 'Theory', 0, NULL, 1),
(8, '2023-05-01 18:04:11', '2023-05-01 18:04:11', 1, NULL, 'HISTORY', '08', NULL, NULL, NULL, NULL, NULL, 'Optional', 'Theory', 0, NULL, 1),
(9, '2023-05-01 18:04:31', '2023-05-01 18:04:31', 1, NULL, 'BUSINESS', '10', NULL, NULL, NULL, NULL, NULL, 'Optional', 'Theory', 0, NULL, 1),
(10, '2023-05-01 18:05:18', '2023-05-01 18:05:18', 1, NULL, 'GEOGRAPHY', '11', NULL, NULL, NULL, NULL, NULL, 'Optional', 'Theory', 0, NULL, 1),
(11, '2023-05-01 18:05:40', '2023-05-01 18:05:40', 1, NULL, 'CRE', '12', NULL, NULL, NULL, NULL, NULL, 'Optional', 'Theory', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject_attendances`
--

CREATE TABLE `subject_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `link_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `attendance_type` int(11) NOT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `months_id` int(10) UNSIGNED NOT NULL,
  `day_1` int(11) NOT NULL DEFAULT 0,
  `day_2` int(11) NOT NULL DEFAULT 0,
  `day_3` int(11) NOT NULL DEFAULT 0,
  `day_4` int(11) NOT NULL DEFAULT 0,
  `day_5` int(11) NOT NULL DEFAULT 0,
  `day_6` int(11) NOT NULL DEFAULT 0,
  `day_7` int(11) NOT NULL DEFAULT 0,
  `day_8` int(11) NOT NULL DEFAULT 0,
  `day_9` int(11) NOT NULL DEFAULT 0,
  `day_10` int(11) NOT NULL DEFAULT 0,
  `day_11` int(11) NOT NULL DEFAULT 0,
  `day_12` int(11) NOT NULL DEFAULT 0,
  `day_13` int(11) NOT NULL DEFAULT 0,
  `day_14` int(11) NOT NULL DEFAULT 0,
  `day_15` int(11) NOT NULL DEFAULT 0,
  `day_16` int(11) NOT NULL DEFAULT 0,
  `day_17` int(11) NOT NULL DEFAULT 0,
  `day_18` int(11) NOT NULL DEFAULT 0,
  `day_19` int(11) NOT NULL DEFAULT 0,
  `day_20` int(11) NOT NULL DEFAULT 0,
  `day_21` int(11) NOT NULL DEFAULT 0,
  `day_22` int(11) NOT NULL DEFAULT 0,
  `day_23` int(11) NOT NULL DEFAULT 0,
  `day_24` int(11) NOT NULL DEFAULT 0,
  `day_25` int(11) NOT NULL DEFAULT 0,
  `day_26` int(11) NOT NULL DEFAULT 0,
  `day_27` int(11) NOT NULL DEFAULT 0,
  `day_28` int(11) NOT NULL DEFAULT 0,
  `day_29` int(11) NOT NULL DEFAULT 0,
  `day_30` int(11) NOT NULL DEFAULT 0,
  `day_31` int(11) NOT NULL DEFAULT 0,
  `day_32` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_zones`
--

CREATE TABLE `time_zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timezone` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_zones`
--

INSERT INTO `time_zones` (`id`, `created_at`, `updated_at`, `timezone`, `status`) VALUES
(1, NULL, '2023-05-01 22:57:34', 'Africa/Abidjan', 0),
(2, NULL, '2023-05-01 22:57:34', 'Africa/Accra', 0),
(3, NULL, '2023-05-01 22:57:34', 'Africa/Addis_Ababa', 0),
(4, NULL, '2023-05-01 22:57:34', 'Africa/Algiers', 0),
(5, NULL, '2023-05-01 22:57:34', 'Africa/Asmara', 0),
(6, NULL, '2023-05-01 22:57:34', 'Africa/Asmera', 0),
(7, NULL, '2023-05-01 22:57:34', 'Africa/Bamako', 0),
(8, NULL, '2023-05-01 22:57:34', 'Africa/Bangui', 0),
(9, NULL, '2023-05-01 22:57:34', 'Africa/Banjul', 0),
(10, NULL, '2023-05-01 22:57:34', 'Africa/Bissau', 0),
(11, NULL, '2023-05-01 22:57:34', 'Africa/Blantyre', 0),
(12, NULL, '2023-05-01 22:57:34', 'Africa/Brazzaville', 0),
(13, NULL, '2023-05-01 22:57:34', 'Africa/Bujumbura', 0),
(14, NULL, '2023-05-01 22:57:34', 'Africa/Cairo', 0),
(15, NULL, '2023-05-01 22:57:34', 'Africa/Casablanca', 0),
(16, NULL, '2023-05-01 22:57:34', 'Africa/Ceuta', 0),
(17, NULL, '2023-05-01 22:57:34', 'Africa/Conakry', 0),
(18, NULL, '2023-05-01 22:57:34', 'Africa/Dakar', 0),
(19, NULL, '2023-05-01 22:57:34', 'Africa/Dar_es_Salaam', 0),
(20, NULL, '2023-05-01 22:57:34', 'Africa/Djibouti', 0),
(21, NULL, '2023-05-01 22:57:34', 'Africa/Douala', 0),
(22, NULL, '2023-05-01 22:57:34', 'Africa/El_Aaiun', 0),
(23, NULL, '2023-05-01 22:57:34', 'Africa/Freetown', 0),
(24, NULL, '2023-05-01 22:57:34', 'Africa/Gaborone', 0),
(25, NULL, '2023-05-01 22:57:34', 'Africa/Harare', 0),
(26, NULL, '2023-05-01 22:57:34', 'Africa/Johannesburg', 0),
(27, NULL, '2023-05-01 22:57:34', 'Africa/Juba', 0),
(28, NULL, '2023-05-01 22:57:34', 'Africa/Kampala', 0),
(29, NULL, '2023-05-01 22:57:34', 'Africa/Khartoum', 0),
(30, NULL, '2023-05-01 22:57:34', 'Africa/Kigali', 0),
(31, NULL, '2023-05-01 22:57:34', 'Africa/Kinshasa', 0),
(32, NULL, '2023-05-01 22:57:34', 'Africa/Lagos', 0),
(33, NULL, '2023-05-01 22:57:34', 'Africa/Libreville', 0),
(34, NULL, '2023-05-01 22:57:34', 'Africa/Lome', 0),
(35, NULL, '2023-05-01 22:57:34', 'Africa/Luanda', 0),
(36, NULL, '2023-05-01 22:57:34', 'Africa/Lubumbashi', 0),
(37, NULL, '2023-05-01 22:57:34', 'Africa/Lusaka', 0),
(38, NULL, '2023-05-01 22:57:34', 'Africa/Malabo', 0),
(39, NULL, '2023-05-01 22:57:34', 'Africa/Maputo', 0),
(40, NULL, '2023-05-01 22:57:34', 'Africa/Maseru', 0),
(41, NULL, '2023-05-01 22:57:34', 'Africa/Mbabane', 0),
(42, NULL, '2023-05-01 22:57:34', 'Africa/Mogadishu', 0),
(43, NULL, '2023-05-01 22:57:34', 'Africa/Monrovia', 0),
(44, NULL, '2023-05-01 22:57:34', 'Africa/Nairobi', 1),
(45, NULL, '2023-05-01 22:57:34', 'Africa/Ndjamena', 0),
(46, NULL, '2023-05-01 22:57:34', 'Africa/Niamey', 0),
(47, NULL, '2023-05-01 22:57:34', 'Africa/Nouakchott', 0),
(48, NULL, '2023-05-01 22:57:34', 'Africa/Ouagadougou', 0),
(49, NULL, '2023-05-01 22:57:34', 'Africa/Porto-Novo', 0),
(50, NULL, '2023-05-01 22:57:34', 'Africa/Sao_Tome', 0),
(51, NULL, '2023-05-01 22:57:34', 'Africa/Timbuktu', 0),
(52, NULL, '2023-05-01 22:57:34', 'Africa/Tripoli', 0),
(53, NULL, '2023-05-01 22:57:34', 'Africa/Tunis', 0),
(54, NULL, '2023-05-01 22:57:34', 'Africa/Windhoek', 0),
(55, NULL, '2023-05-01 22:57:34', 'America/Adak', 0),
(56, NULL, '2023-05-01 22:57:34', 'America/Anchorage', 0),
(57, NULL, '2023-05-01 22:57:34', 'America/Anguilla', 0),
(58, NULL, '2023-05-01 22:57:34', 'America/Antigua', 0),
(59, NULL, '2023-05-01 22:57:34', 'America/Araguaina', 0),
(60, NULL, '2023-05-01 22:57:34', 'America/Argentina/Buenos_Aires', 0),
(61, NULL, '2023-05-01 22:57:34', 'America/Argentina/Catamarca', 0),
(62, NULL, '2023-05-01 22:57:34', 'America/Argentina/ComodRivadavia', 0),
(63, NULL, '2023-05-01 22:57:34', 'America/Argentina/Cordoba', 0),
(64, NULL, '2023-05-01 22:57:34', 'America/Argentina/Jujuy', 0),
(65, NULL, '2023-05-01 22:57:34', 'America/Argentina/La_Rioja', 0),
(66, NULL, '2023-05-01 22:57:34', 'America/Argentina/Mendoza', 0),
(67, NULL, '2023-05-01 22:57:34', 'America/Argentina/Rio_Gallegos', 0),
(68, NULL, '2023-05-01 22:57:34', 'America/Argentina/Salta', 0),
(69, NULL, '2023-05-01 22:57:34', 'America/Argentina/San_Juan', 0),
(70, NULL, '2023-05-01 22:57:34', 'America/Argentina/San_Luis', 0),
(71, NULL, '2023-05-01 22:57:34', 'America/Argentina/Tucuman', 0),
(72, NULL, '2023-05-01 22:57:34', 'America/Argentina/Ushuaia', 0),
(73, NULL, '2023-05-01 22:57:34', 'America/Aruba', 0),
(74, NULL, '2023-05-01 22:57:34', 'America/Asuncion', 0),
(75, NULL, '2023-05-01 22:57:34', 'America/Atikokan', 0),
(76, NULL, '2023-05-01 22:57:34', 'America/Atka', 0),
(77, NULL, '2023-05-01 22:57:34', 'America/Bahia', 0),
(78, NULL, '2023-05-01 22:57:34', 'America/Bahia_Banderas', 0),
(79, NULL, '2023-05-01 22:57:34', 'America/Barbados', 0),
(80, NULL, '2023-05-01 22:57:34', 'America/Belem', 0),
(81, NULL, '2023-05-01 22:57:34', 'America/Belize', 0),
(82, NULL, '2023-05-01 22:57:34', 'America/Blanc-Sablon', 0),
(83, NULL, '2023-05-01 22:57:34', 'America/Boa_Vista', 0),
(84, NULL, '2023-05-01 22:57:34', 'America/Bogota', 0),
(85, NULL, '2023-05-01 22:57:34', 'America/Boise', 0),
(86, NULL, '2023-05-01 22:57:34', 'America/Buenos_Aires', 0),
(87, NULL, '2023-05-01 22:57:34', 'America/Cambridge_Bay', 0),
(88, NULL, '2023-05-01 22:57:34', 'America/Campo_Grande', 0),
(89, NULL, '2023-05-01 22:57:34', 'America/Cancun', 0),
(90, NULL, '2023-05-01 22:57:34', 'America/Caracas', 0),
(91, NULL, '2023-05-01 22:57:34', 'America/Catamarca', 0),
(92, NULL, '2023-05-01 22:57:34', 'America/Cayenne', 0),
(93, NULL, '2023-05-01 22:57:34', 'America/Cayman', 0),
(94, NULL, '2023-05-01 22:57:34', 'America/Chicago', 0),
(95, NULL, '2023-05-01 22:57:34', 'America/Chihuahua', 0),
(96, NULL, '2023-05-01 22:57:34', 'America/Coral_Harbour', 0),
(97, NULL, '2023-05-01 22:57:34', 'America/Cordoba', 0),
(98, NULL, '2023-05-01 22:57:34', 'America/Costa_Rica', 0),
(99, NULL, '2023-05-01 22:57:34', 'America/Creston', 0),
(100, NULL, '2023-05-01 22:57:34', 'America/Cuiaba', 0),
(101, NULL, '2023-05-01 22:57:34', 'America/Curacao', 0),
(102, NULL, '2023-05-01 22:57:34', 'America/Danmarkshavn', 0),
(103, NULL, '2023-05-01 22:57:34', 'America/Dawson', 0),
(104, NULL, '2023-05-01 22:57:34', 'America/Dawson_Creek', 0),
(105, NULL, '2023-05-01 22:57:34', 'America/Denver', 0),
(106, NULL, '2023-05-01 22:57:34', 'America/Detroit', 0),
(107, NULL, '2023-05-01 22:57:34', 'America/Dominica', 0),
(108, NULL, '2023-05-01 22:57:34', 'America/Edmonton', 0),
(109, NULL, '2023-05-01 22:57:34', 'America/Eirunepe', 0),
(110, NULL, '2023-05-01 22:57:34', 'America/El_Salvador', 0),
(111, NULL, '2023-05-01 22:57:34', 'America/Ensenada', 0),
(112, NULL, '2023-05-01 22:57:34', 'America/Fort_Wayne', 0),
(113, NULL, '2023-05-01 22:57:34', 'America/Fortaleza', 0),
(114, NULL, '2023-05-01 22:57:34', 'America/Glace_Bay', 0),
(115, NULL, '2023-05-01 22:57:34', 'America/Godthab', 0),
(116, NULL, '2023-05-01 22:57:34', 'America/Goose_Bay', 0),
(117, NULL, '2023-05-01 22:57:34', 'America/Grand_Turk', 0),
(118, NULL, '2023-05-01 22:57:34', 'America/Grenada', 0),
(119, NULL, '2023-05-01 22:57:34', 'America/Guadeloupe', 0),
(120, NULL, '2023-05-01 22:57:34', 'America/Guatemala', 0),
(121, NULL, '2023-05-01 22:57:34', 'America/Guayaquil', 0),
(122, NULL, '2023-05-01 22:57:34', 'America/Guyana', 0),
(123, NULL, '2023-05-01 22:57:34', 'America/Halifax', 0),
(124, NULL, '2023-05-01 22:57:34', 'America/Havana', 0),
(125, NULL, '2023-05-01 22:57:34', 'America/Hermosillo', 0),
(126, NULL, '2023-05-01 22:57:34', 'America/Indiana/Indianapolis', 0),
(127, NULL, '2023-05-01 22:57:34', 'America/Indiana/Knox', 0),
(128, NULL, '2023-05-01 22:57:34', 'America/Indiana/Marengo', 0),
(129, NULL, '2023-05-01 22:57:34', 'America/Indiana/Petersburg', 0),
(130, NULL, '2023-05-01 22:57:34', 'America/Indiana/Tell_City', 0),
(131, NULL, '2023-05-01 22:57:34', 'America/Indiana/Vevay', 0),
(132, NULL, '2023-05-01 22:57:34', 'America/Indiana/Vincennes', 0),
(133, NULL, '2023-05-01 22:57:34', 'America/Indiana/Winamac', 0),
(134, NULL, '2023-05-01 22:57:34', 'America/Indianapolis', 0),
(135, NULL, '2023-05-01 22:57:34', 'America/Inuvik', 0),
(136, NULL, '2023-05-01 22:57:34', 'America/Iqaluit', 0),
(137, NULL, '2023-05-01 22:57:34', 'America/Jamaica', 0),
(138, NULL, '2023-05-01 22:57:34', 'America/Jujuy', 0),
(139, NULL, '2023-05-01 22:57:34', 'America/Juneau', 0),
(140, NULL, '2023-05-01 22:57:34', 'America/Kentucky/Louisville', 0),
(141, NULL, '2023-05-01 22:57:34', 'America/Kentucky/Monticello', 0),
(142, NULL, '2023-05-01 22:57:34', 'America/Knox_IN', 0),
(143, NULL, '2023-05-01 22:57:34', 'America/Kralendijk', 0),
(144, NULL, '2023-05-01 22:57:34', 'America/La_Paz', 0),
(145, NULL, '2023-05-01 22:57:34', 'America/Lima', 0),
(146, NULL, '2023-05-01 22:57:34', 'America/Los_Angeles', 0),
(147, NULL, '2023-05-01 22:57:34', 'America/Louisville', 0),
(148, NULL, '2023-05-01 22:57:34', 'America/Lower_Princes', 0),
(149, NULL, '2023-05-01 22:57:34', 'America/Maceio', 0),
(150, NULL, '2023-05-01 22:57:34', 'America/Managua', 0),
(151, NULL, '2023-05-01 22:57:34', 'America/Manaus', 0),
(152, NULL, '2023-05-01 22:57:34', 'America/Marigot', 0),
(153, NULL, '2023-05-01 22:57:34', 'America/Martinique', 0),
(154, NULL, '2023-05-01 22:57:34', 'America/Matamoros', 0),
(155, NULL, '2023-05-01 22:57:34', 'America/Mazatlan', 0),
(156, NULL, '2023-05-01 22:57:34', 'America/Mendoza', 0),
(157, NULL, '2023-05-01 22:57:34', 'America/Menominee', 0),
(158, NULL, '2023-05-01 22:57:34', 'America/Merida', 0),
(159, NULL, '2023-05-01 22:57:34', 'America/Metlakatla', 0),
(160, NULL, '2023-05-01 22:57:34', 'America/Mexico_City', 0),
(161, NULL, '2023-05-01 22:57:34', 'America/Miquelon', 0),
(162, NULL, '2023-05-01 22:57:34', 'America/Moncton', 0),
(163, NULL, '2023-05-01 22:57:34', 'America/Monterrey', 0),
(164, NULL, '2023-05-01 22:57:34', 'America/Montevideo', 0),
(165, NULL, '2023-05-01 22:57:34', 'America/Montreal', 0),
(166, NULL, '2023-05-01 22:57:34', 'America/Montserrat', 0),
(167, NULL, '2023-05-01 22:57:34', 'America/Nassau', 0),
(168, NULL, '2023-05-01 22:57:34', 'America/New_York', 0),
(169, NULL, '2023-05-01 22:57:34', 'America/Nipigon', 0),
(170, NULL, '2023-05-01 22:57:34', 'America/Nome', 0),
(171, NULL, '2023-05-01 22:57:34', 'America/Noronha', 0),
(172, NULL, '2023-05-01 22:57:34', 'America/North_Dakota/Beulah', 0),
(173, NULL, '2023-05-01 22:57:34', 'America/North_Dakota/Center', 0),
(174, NULL, '2023-05-01 22:57:34', 'America/North_Dakota/New_Salem', 0),
(175, NULL, '2023-05-01 22:57:34', 'America/Ojinaga', 0),
(176, NULL, '2023-05-01 22:57:34', 'America/Panama', 0),
(177, NULL, '2023-05-01 22:57:34', 'America/Pangnirtung', 0),
(178, NULL, '2023-05-01 22:57:34', 'America/Paramaribo', 0),
(179, NULL, '2023-05-01 22:57:34', 'America/Phoenix', 0),
(180, NULL, '2023-05-01 22:57:34', 'America/Port-au-Prince', 0),
(181, NULL, '2023-05-01 22:57:34', 'America/Port_of_Spain', 0),
(182, NULL, '2023-05-01 22:57:34', 'America/Porto_Acre', 0),
(183, NULL, '2023-05-01 22:57:34', 'America/Porto_Velho', 0),
(184, NULL, '2023-05-01 22:57:34', 'America/Puerto_Rico', 0),
(185, NULL, '2023-05-01 22:57:34', 'America/Rainy_River', 0),
(186, NULL, '2023-05-01 22:57:34', 'America/Rankin_Inlet', 0),
(187, NULL, '2023-05-01 22:57:34', 'America/Recife', 0),
(188, NULL, '2023-05-01 22:57:34', 'America/Regina', 0),
(189, NULL, '2023-05-01 22:57:34', 'America/Resolute', 0),
(190, NULL, '2023-05-01 22:57:34', 'America/Rio_Branco', 0),
(191, NULL, '2023-05-01 22:57:34', 'America/Rosario', 0),
(192, NULL, '2023-05-01 22:57:34', 'America/Santa_Isabel', 0),
(193, NULL, '2023-05-01 22:57:34', 'America/Santarem', 0),
(194, NULL, '2023-05-01 22:57:34', 'America/Santiago', 0),
(195, NULL, '2023-05-01 22:57:34', 'America/Santo_Domingo', 0),
(196, NULL, '2023-05-01 22:57:34', 'America/Sao_Paulo', 0),
(197, NULL, '2023-05-01 22:57:34', 'America/Scoresbysund', 0),
(198, NULL, '2023-05-01 22:57:34', 'America/Shiprock', 0),
(199, NULL, '2023-05-01 22:57:34', 'America/Sitka', 0),
(200, NULL, '2023-05-01 22:57:34', 'America/St_Barthelemy', 0),
(201, NULL, '2023-05-01 22:57:34', 'America/St_Johns', 0),
(202, NULL, '2023-05-01 22:57:34', 'America/St_Kitts', 0),
(203, NULL, '2023-05-01 22:57:34', 'America/St_Lucia', 0),
(204, NULL, '2023-05-01 22:57:34', 'America/St_Thomas', 0),
(205, NULL, '2023-05-01 22:57:34', 'America/St_Vincent', 0),
(206, NULL, '2023-05-01 22:57:34', 'America/Swift_Current', 0),
(207, NULL, '2023-05-01 22:57:34', 'America/Tegucigalpa', 0),
(208, NULL, '2023-05-01 22:57:34', 'America/Thule', 0),
(209, NULL, '2023-05-01 22:57:34', 'America/Thunder_Bay', 0),
(210, NULL, '2023-05-01 22:57:34', 'America/Tijuana', 0),
(211, NULL, '2023-05-01 22:57:34', 'America/Toronto', 0),
(212, NULL, '2023-05-01 22:57:34', 'America/Tortola', 0),
(213, NULL, '2023-05-01 22:57:34', 'America/Vancouver', 0),
(214, NULL, '2023-05-01 22:57:34', 'America/Virgin', 0),
(215, NULL, '2023-05-01 22:57:34', 'America/Whitehorse', 0),
(216, NULL, '2023-05-01 22:57:34', 'America/Winnipeg', 0),
(217, NULL, '2023-05-01 22:57:34', 'America/Yakutat', 0),
(218, NULL, '2023-05-01 22:57:34', 'America/Yellowknife', 0),
(219, NULL, '2023-05-01 22:57:34', 'Antarctica/Casey', 0),
(220, NULL, '2023-05-01 22:57:34', 'Antarctica/Davis', 0),
(221, NULL, '2023-05-01 22:57:34', 'Antarctica/DumontDUrville', 0),
(222, NULL, '2023-05-01 22:57:34', 'Antarctica/Macquarie', 0),
(223, NULL, '2023-05-01 22:57:34', 'Antarctica/Mawson', 0),
(224, NULL, '2023-05-01 22:57:34', 'Antarctica/McMurdo', 0),
(225, NULL, '2023-05-01 22:57:34', 'Antarctica/Palmer', 0),
(226, NULL, '2023-05-01 22:57:34', 'Antarctica/Rothera', 0),
(227, NULL, '2023-05-01 22:57:34', 'Antarctica/South_Pole', 0),
(228, NULL, '2023-05-01 22:57:34', 'Antarctica/Syowa', 0),
(229, NULL, '2023-05-01 22:57:34', 'Antarctica/Vostok', 0),
(230, NULL, '2023-05-01 22:57:34', 'Arctic/Longyearbyen', 0),
(231, NULL, '2023-05-01 22:57:34', 'Asia/Aden', 0),
(232, NULL, '2023-05-01 22:57:34', 'Asia/Almaty', 0),
(233, NULL, '2023-05-01 22:57:34', 'Asia/Amman', 0),
(234, NULL, '2023-05-01 22:57:34', 'Asia/Anadyr', 0),
(235, NULL, '2023-05-01 22:57:34', 'Asia/Aqtau', 0),
(236, NULL, '2023-05-01 22:57:34', 'Asia/Aqtobe', 0),
(237, NULL, '2023-05-01 22:57:34', 'Asia/Ashgabat', 0),
(238, NULL, '2023-05-01 22:57:34', 'Asia/Ashkhabad', 0),
(239, NULL, '2023-05-01 22:57:34', 'Asia/Baghdad', 0),
(240, NULL, '2023-05-01 22:57:34', 'Asia/Bahrain', 0),
(241, NULL, '2023-05-01 22:57:34', 'Asia/Baku', 0),
(242, NULL, '2023-05-01 22:57:34', 'Asia/Bangkok', 0),
(243, NULL, '2023-05-01 22:57:34', 'Asia/Beirut', 0),
(244, NULL, '2023-05-01 22:57:34', 'Asia/Bishkek', 0),
(245, NULL, '2023-05-01 22:57:34', 'Asia/Brunei', 0),
(246, NULL, '2023-05-01 22:57:34', 'Asia/Calcutta', 0),
(247, NULL, '2023-05-01 22:57:34', 'Asia/Choibalsan', 0),
(248, NULL, '2023-05-01 22:57:34', 'Asia/Chongqing', 0),
(249, NULL, '2023-05-01 22:57:34', 'Asia/Chungking', 0),
(250, NULL, '2023-05-01 22:57:34', 'Asia/Colombo', 0),
(251, NULL, '2023-05-01 22:57:34', 'Asia/Dacca', 0),
(252, NULL, '2023-05-01 22:57:34', 'Asia/Damascus', 0),
(253, NULL, '2023-05-01 22:57:34', 'Asia/Dhaka', 0),
(254, NULL, '2023-05-01 22:57:34', 'Asia/Dili', 0),
(255, NULL, '2023-05-01 22:57:34', 'Asia/Dubai', 0),
(256, NULL, '2023-05-01 22:57:34', 'Asia/Dushanbe', 0),
(257, NULL, '2023-05-01 22:57:34', 'Asia/Gaza', 0),
(258, NULL, '2023-05-01 22:57:34', 'Asia/Harbin', 0),
(259, NULL, '2023-05-01 22:57:34', 'Asia/Hebron', 0),
(260, NULL, '2023-05-01 22:57:34', 'Asia/Ho_Chi_Minh', 0),
(261, NULL, '2023-05-01 22:57:34', 'Asia/Hong_Kong', 0),
(262, NULL, '2023-05-01 22:57:34', 'Asia/Hovd', 0),
(263, NULL, '2023-05-01 22:57:34', 'Asia/Irkutsk', 0),
(264, NULL, '2023-05-01 22:57:34', 'Asia/Istanbul', 0),
(265, NULL, '2023-05-01 22:57:34', 'Asia/Jakarta', 0),
(266, NULL, '2023-05-01 22:57:34', 'Asia/Jayapura', 0),
(267, NULL, '2023-05-01 22:57:34', 'Asia/Jerusalem', 0),
(268, NULL, '2023-05-01 22:57:34', 'Asia/Kabul', 0),
(269, NULL, '2023-05-01 22:57:34', 'Asia/Kamchatka', 0),
(270, NULL, '2023-05-01 22:57:34', 'Asia/Karachi', 0),
(271, NULL, '2023-05-01 22:57:34', 'Asia/Kashgar', 0),
(272, NULL, '2023-05-01 22:57:34', 'Asia/Kathmandu', 0),
(273, NULL, '2023-05-01 22:57:34', 'Asia/Khandyga', 0),
(274, NULL, '2023-05-01 22:57:34', 'Asia/Kolkata', 0),
(275, NULL, '2023-05-01 22:57:34', 'Asia/Krasnoyarsk', 0),
(276, NULL, '2023-05-01 22:57:34', 'Asia/Kuala_Lumpur', 0),
(277, NULL, '2023-05-01 22:57:34', 'Asia/Kuching', 0),
(278, NULL, '2023-05-01 22:57:34', 'Asia/Kuwait', 0),
(279, NULL, '2023-05-01 22:57:34', 'Asia/Macao', 0),
(280, NULL, '2023-05-01 22:57:34', 'Asia/Macau', 0),
(281, NULL, '2023-05-01 22:57:34', 'Asia/Magadan', 0),
(282, NULL, '2023-05-01 22:57:34', 'Asia/Makassar', 0),
(283, NULL, '2023-05-01 22:57:34', 'Asia/Manila', 0),
(284, NULL, '2023-05-01 22:57:34', 'Asia/Muscat', 0),
(285, NULL, '2023-05-01 22:57:34', 'Asia/Nicosia', 0),
(286, NULL, '2023-05-01 22:57:34', 'Asia/Novokuznetsk', 0),
(287, NULL, '2023-05-01 22:57:34', 'Asia/Novosibirsk', 0),
(288, NULL, '2023-05-01 22:57:34', 'Asia/Omsk', 0),
(289, NULL, '2023-05-01 22:57:34', 'Asia/Oral', 0),
(290, NULL, '2023-05-01 22:57:34', 'Asia/Phnom_Penh', 0),
(291, NULL, '2023-05-01 22:57:34', 'Asia/Pontianak', 0),
(292, NULL, '2023-05-01 22:57:34', 'Asia/Pyongyang', 0),
(293, NULL, '2023-05-01 22:57:34', 'Asia/Qatar', 0),
(294, NULL, '2023-05-01 22:57:34', 'Asia/Qyzylorda', 0),
(295, NULL, '2023-05-01 22:57:34', 'Asia/Rangoon', 0),
(296, NULL, '2023-05-01 22:57:34', 'Asia/Riyadh', 0),
(297, NULL, '2023-05-01 22:57:34', 'Asia/Saigon', 0),
(298, NULL, '2023-05-01 22:57:34', 'Asia/Sakhalin', 0),
(299, NULL, '2023-05-01 22:57:34', 'Asia/Samarkand', 0),
(300, NULL, '2023-05-01 22:57:34', 'Asia/Seoul', 0),
(301, NULL, '2023-05-01 22:57:34', 'Asia/Shanghai', 0),
(302, NULL, '2023-05-01 22:57:34', 'Asia/Singapore', 0),
(303, NULL, '2023-05-01 22:57:34', 'Asia/Taipei', 0),
(304, NULL, '2023-05-01 22:57:34', 'Asia/Tashkent', 0),
(305, NULL, '2023-05-01 22:57:34', 'Asia/Tbilisi', 0),
(306, NULL, '2023-05-01 22:57:34', 'Asia/Tehran', 0),
(307, NULL, '2023-05-01 22:57:34', 'Asia/Tel_Aviv', 0),
(308, NULL, '2023-05-01 22:57:34', 'Asia/Thimbu', 0),
(309, NULL, '2023-05-01 22:57:34', 'Asia/Thimphu', 0),
(310, NULL, '2023-05-01 22:57:34', 'Asia/Tokyo', 0),
(311, NULL, '2023-05-01 22:57:34', 'Asia/Ujung_Pandang', 0),
(312, NULL, '2023-05-01 22:57:34', 'Asia/Ulaanbaatar', 0),
(313, NULL, '2023-05-01 22:57:34', 'Asia/Ulan_Bator', 0),
(314, NULL, '2023-05-01 22:57:34', 'Asia/Urumqi', 0),
(315, NULL, '2023-05-01 22:57:34', 'Asia/Ust-Nera', 0),
(316, NULL, '2023-05-01 22:57:34', 'Asia/Vientiane', 0),
(317, NULL, '2023-05-01 22:57:34', 'Asia/Vladivostok', 0),
(318, NULL, '2023-05-01 22:57:34', 'Asia/Yakutsk', 0),
(319, NULL, '2023-05-01 22:57:34', 'Asia/Yekaterinburg', 0),
(320, NULL, '2023-05-01 22:57:34', 'Asia/Yerevan', 0),
(321, NULL, '2023-05-01 22:57:34', 'Atlantic/Azores', 0),
(322, NULL, '2023-05-01 22:57:34', 'Atlantic/Bermuda', 0),
(323, NULL, '2023-05-01 22:57:34', 'Atlantic/Canary', 0),
(324, NULL, '2023-05-01 22:57:34', 'Atlantic/Cape_Verde', 0),
(325, NULL, '2023-05-01 22:57:34', 'Atlantic/Faeroe', 0),
(326, NULL, '2023-05-01 22:57:34', 'Atlantic/Faroe', 0),
(327, NULL, '2023-05-01 22:57:34', 'Atlantic/Jan_Mayen', 0),
(328, NULL, '2023-05-01 22:57:34', 'Atlantic/Madeira', 0),
(329, NULL, '2023-05-01 22:57:34', 'Atlantic/Reykjavik', 0),
(330, NULL, '2023-05-01 22:57:34', 'Atlantic/South_Georgia', 0),
(331, NULL, '2023-05-01 22:57:34', 'Atlantic/St_Helena', 0),
(332, NULL, '2023-05-01 22:57:34', 'Atlantic/Stanley', 0),
(333, NULL, '2023-05-01 22:57:34', 'Australia/ACT', 0),
(334, NULL, '2023-05-01 22:57:34', 'Australia/Adelaide', 0),
(335, NULL, '2023-05-01 22:57:34', 'Australia/Brisbane', 0),
(336, NULL, '2023-05-01 22:57:34', 'Australia/Broken_Hill', 0),
(337, NULL, '2023-05-01 22:57:34', 'Australia/Canberra', 0),
(338, NULL, '2023-05-01 22:57:34', 'Australia/Currie', 0),
(339, NULL, '2023-05-01 22:57:34', 'Australia/Darwin', 0),
(340, NULL, '2023-05-01 22:57:34', 'Australia/Eucla', 0),
(341, NULL, '2023-05-01 22:57:34', 'Australia/Hobart', 0),
(342, NULL, '2023-05-01 22:57:34', 'Australia/LHI', 0),
(343, NULL, '2023-05-01 22:57:34', 'Australia/Lindeman', 0),
(344, NULL, '2023-05-01 22:57:34', 'Australia/Lord_Howe', 0),
(345, NULL, '2023-05-01 22:57:34', 'Australia/Melbourne', 0),
(346, NULL, '2023-05-01 22:57:34', 'Australia/North', 0),
(347, NULL, '2023-05-01 22:57:34', 'Australia/NSW', 0),
(348, NULL, '2023-05-01 22:57:34', 'Australia/Perth', 0),
(349, NULL, '2023-05-01 22:57:34', 'Australia/Queensland', 0),
(350, NULL, '2023-05-01 22:57:34', 'Australia/South', 0),
(351, NULL, '2023-05-01 22:57:34', 'Australia/Sydney', 0),
(352, NULL, '2023-05-01 22:57:34', 'Australia/Tasmania', 0),
(353, NULL, '2023-05-01 22:57:34', 'Australia/Victoria', 0),
(354, NULL, '2023-05-01 22:57:34', 'Australia/West', 0),
(355, NULL, '2023-05-01 22:57:34', 'Australia/Yancowinna', 0),
(356, NULL, '2023-05-01 22:57:34', 'Europe/Amsterdam', 0),
(357, NULL, '2023-05-01 22:57:34', 'Europe/Andorra', 0),
(358, NULL, '2023-05-01 22:57:34', 'Europe/Athens', 0),
(359, NULL, '2023-05-01 22:57:34', 'Europe/Belfast', 0),
(360, NULL, '2023-05-01 22:57:34', 'Europe/Belgrade', 0),
(361, NULL, '2023-05-01 22:57:34', 'Europe/Berlin', 0),
(362, NULL, '2023-05-01 22:57:34', 'Europe/Bratislava', 0),
(363, NULL, '2023-05-01 22:57:34', 'Europe/Brussels', 0),
(364, NULL, '2023-05-01 22:57:34', 'Europe/Bucharest', 0),
(365, NULL, '2023-05-01 22:57:34', 'Europe/Budapest', 0),
(366, NULL, '2023-05-01 22:57:34', 'Europe/Busingen', 0),
(367, NULL, '2023-05-01 22:57:34', 'Europe/Chisinau', 0),
(368, NULL, '2023-05-01 22:57:34', 'Europe/Copenhagen', 0),
(369, NULL, '2023-05-01 22:57:34', 'Europe/Dublin', 0),
(370, NULL, '2023-05-01 22:57:34', 'Europe/Gibraltar', 0),
(371, NULL, '2023-05-01 22:57:34', 'Europe/Guernsey', 0),
(372, NULL, '2023-05-01 22:57:34', 'Europe/Helsinki', 0),
(373, NULL, '2023-05-01 22:57:34', 'Europe/Isle_of_Man', 0),
(374, NULL, '2023-05-01 22:57:34', 'Europe/Istanbul', 0),
(375, NULL, '2023-05-01 22:57:34', 'Europe/Jersey', 0),
(376, NULL, '2023-05-01 22:57:34', 'Europe/Kaliningrad', 0),
(377, NULL, '2023-05-01 22:57:34', 'Europe/Kiev', 0),
(378, NULL, '2023-05-01 22:57:34', 'Europe/Lisbon', 0),
(379, NULL, '2023-05-01 22:57:34', 'Europe/Ljubljana', 0),
(380, NULL, '2023-05-01 22:57:34', 'Europe/London', 0),
(381, NULL, '2023-05-01 22:57:34', 'Europe/Luxembourg', 0),
(382, NULL, '2023-05-01 22:57:34', 'Europe/Madrid', 0),
(383, NULL, '2023-05-01 22:57:34', 'Europe/Malta', 0),
(384, NULL, '2023-05-01 22:57:34', 'Europe/Mariehamn', 0),
(385, NULL, '2023-05-01 22:57:34', 'Europe/Minsk', 0),
(386, NULL, '2023-05-01 22:57:34', 'Europe/Monaco', 0),
(387, NULL, '2023-05-01 22:57:34', 'Europe/Moscow', 0),
(388, NULL, '2023-05-01 22:57:34', 'Europe/Nicosia', 0),
(389, NULL, '2023-05-01 22:57:34', 'Europe/Oslo', 0),
(390, NULL, '2023-05-01 22:57:34', 'Europe/Paris', 0),
(391, NULL, '2023-05-01 22:57:34', 'Europe/Podgorica', 0),
(392, NULL, '2023-05-01 22:57:34', 'Europe/Prague', 0),
(393, NULL, '2023-05-01 22:57:34', 'Europe/Riga', 0),
(394, NULL, '2023-05-01 22:57:34', 'Europe/Rome', 0),
(395, NULL, '2023-05-01 22:57:34', 'Europe/Samara', 0),
(396, NULL, '2023-05-01 22:57:34', 'Europe/San_Marino', 0),
(397, NULL, '2023-05-01 22:57:34', 'Europe/Sarajevo', 0),
(398, NULL, '2023-05-01 22:57:34', 'Europe/Simferopol', 0),
(399, NULL, '2023-05-01 22:57:34', 'Europe/Skopje', 0),
(400, NULL, '2023-05-01 22:57:34', 'Europe/Sofia', 0),
(401, NULL, '2023-05-01 22:57:34', 'Europe/Stockholm', 0),
(402, NULL, '2023-05-01 22:57:34', 'Europe/Tallinn', 0),
(403, NULL, '2023-05-01 22:57:34', 'Europe/Tirane', 0),
(404, NULL, '2023-05-01 22:57:34', 'Europe/Tiraspol', 0),
(405, NULL, '2023-05-01 22:57:34', 'Europe/Uzhgorod', 0),
(406, NULL, '2023-05-01 22:57:34', 'Europe/Vaduz', 0),
(407, NULL, '2023-05-01 22:57:34', 'Europe/Vatican', 0),
(408, NULL, '2023-05-01 22:57:34', 'Europe/Vienna', 0),
(409, NULL, '2023-05-01 22:57:34', 'Europe/Vilnius', 0),
(410, NULL, '2023-05-01 22:57:34', 'Europe/Volgograd', 0),
(411, NULL, '2023-05-01 22:57:34', 'Europe/Warsaw', 0),
(412, NULL, '2023-05-01 22:57:34', 'Europe/Zagreb', 0),
(413, NULL, '2023-05-01 22:57:34', 'Europe/Zaporozhye', 0),
(414, NULL, '2023-05-01 22:57:34', 'Europe/Zurich', 0),
(415, NULL, '2023-05-01 22:57:34', 'Indian/Antananarivo', 0),
(416, NULL, '2023-05-01 22:57:34', 'Indian/Chagos', 0),
(417, NULL, '2023-05-01 22:57:34', 'Indian/Christmas', 0),
(418, NULL, '2023-05-01 22:57:34', 'Indian/Cocos', 0),
(419, NULL, '2023-05-01 22:57:34', 'Indian/Comoro', 0),
(420, NULL, '2023-05-01 22:57:34', 'Indian/Kerguelen', 0),
(421, NULL, '2023-05-01 22:57:34', 'Indian/Mahe', 0),
(422, NULL, '2023-05-01 22:57:34', 'Indian/Maldives', 0),
(423, NULL, '2023-05-01 22:57:34', 'Indian/Mauritius', 0),
(424, NULL, '2023-05-01 22:57:34', 'Indian/Mayotte', 0),
(425, NULL, '2023-05-01 22:57:34', 'Indian/Reunion', 0),
(426, NULL, '2023-05-01 22:57:34', 'Pacific/Apia', 0),
(427, NULL, '2023-05-01 22:57:34', 'Pacific/Auckland', 0),
(428, NULL, '2023-05-01 22:57:34', 'Pacific/Chatham', 0),
(429, NULL, '2023-05-01 22:57:34', 'Pacific/Chuuk', 0),
(430, NULL, '2023-05-01 22:57:34', 'Pacific/Easter', 0),
(431, NULL, '2023-05-01 22:57:34', 'Pacific/Efate', 0),
(432, NULL, '2023-05-01 22:57:34', 'Pacific/Enderbury', 0),
(433, NULL, '2023-05-01 22:57:34', 'Pacific/Fakaofo', 0),
(434, NULL, '2023-05-01 22:57:34', 'Pacific/Fiji', 0),
(435, NULL, '2023-05-01 22:57:34', 'Pacific/Funafuti', 0),
(436, NULL, '2023-05-01 22:57:34', 'Pacific/Galapagos', 0),
(437, NULL, '2023-05-01 22:57:34', 'Pacific/Gambier', 0),
(438, NULL, '2023-05-01 22:57:34', 'Pacific/Guadalcanal', 0),
(439, NULL, '2023-05-01 22:57:34', 'Pacific/Guam', 0),
(440, NULL, '2023-05-01 22:57:34', 'Pacific/Honolulu', 0),
(441, NULL, '2023-05-01 22:57:34', 'Pacific/Johnston', 0),
(442, NULL, '2023-05-01 22:57:34', 'Pacific/Kiritimati', 0),
(443, NULL, '2023-05-01 22:57:34', 'Pacific/Kosrae', 0),
(444, NULL, '2023-05-01 22:57:34', 'Pacific/Kwajalein', 0),
(445, NULL, '2023-05-01 22:57:34', 'Pacific/Majuro', 0),
(446, NULL, '2023-05-01 22:57:34', 'Pacific/Marquesas', 0),
(447, NULL, '2023-05-01 22:57:34', 'Pacific/Midway', 0),
(448, NULL, '2023-05-01 22:57:34', 'Pacific/Nauru', 0),
(449, NULL, '2023-05-01 22:57:34', 'Pacific/Niue', 0),
(450, NULL, '2023-05-01 22:57:34', 'Pacific/Norfolk', 0),
(451, NULL, '2023-05-01 22:57:34', 'Pacific/Noumea', 0),
(452, NULL, '2023-05-01 22:57:34', 'Pacific/Pago_Pago', 0),
(453, NULL, '2023-05-01 22:57:34', 'Pacific/Palau', 0),
(454, NULL, '2023-05-01 22:57:34', 'Pacific/Pitcairn', 0),
(455, NULL, '2023-05-01 22:57:34', 'Pacific/Pohnpei', 0),
(456, NULL, '2023-05-01 22:57:34', 'Pacific/Ponape', 0),
(457, NULL, '2023-05-01 22:57:34', 'Pacific/Port_Moresby', 0),
(458, NULL, '2023-05-01 22:57:34', 'Pacific/Rarotonga', 0),
(459, NULL, '2023-05-01 22:57:34', 'Pacific/Saipan', 0),
(460, NULL, '2023-05-01 22:57:34', 'Pacific/Samoa', 0),
(461, NULL, '2023-05-01 22:57:34', 'Pacific/Tahiti', 0),
(462, NULL, '2023-05-01 22:57:34', 'Pacific/Tarawa', 0),
(463, NULL, '2023-05-01 22:57:34', 'Pacific/Tongatapu', 0),
(464, NULL, '2023-05-01 22:57:34', 'Pacific/Truk', 0),
(465, NULL, '2023-05-01 22:57:34', 'Pacific/Wake', 0),
(466, NULL, '2023-05-01 22:57:34', 'Pacific/Wallis', 0),
(467, NULL, '2023-05-01 22:57:34', 'Pacific/Yap', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `tr_head_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `dr_amount` int(11) DEFAULT NULL,
  `cr_amount` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_heads`
--

CREATE TABLE `transaction_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `tr_head` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_id` int(10) UNSIGNED DEFAULT NULL,
  `acc_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_heads`
--

INSERT INTO `transaction_heads` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `tr_head`, `ref_id`, `acc_id`, `status`) VALUES
(1, '2021-06-30 05:36:19', '2021-06-30 05:36:19', 1, NULL, 'Cash A/C', NULL, 13, 1),
(2, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'Purchase A/C', NULL, 68, 1),
(3, '2021-06-30 05:36:20', '2021-06-30 05:36:20', 1, NULL, 'Sales A/C', NULL, 77, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_certificates`
--

CREATE TABLE `transfer_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `application_date` date NOT NULL,
  `date_of_issue` date NOT NULL,
  `date_of_leaving` date NOT NULL,
  `tc_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leaving_time_class` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualified_to_promote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_fee_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_time_class` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_place` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promoted_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_concession_detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_fail_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_studies` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_taken_exam_with_result` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cadet_detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_to_leave` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_attendance` int(11) DEFAULT NULL,
  `school_college_open_total` int(11) DEFAULT NULL,
  `extra_activity_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `any_other_remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_histories`
--

CREATE TABLE `transport_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `routes_id` int(10) UNSIGNED DEFAULT NULL,
  `vehicles_id` int(10) UNSIGNED DEFAULT NULL,
  `travellers_id` int(10) UNSIGNED NOT NULL,
  `history_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_users`
--

CREATE TABLE `transport_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `routes_id` int(10) UNSIGNED DEFAULT NULL,
  `vehicles_id` int(10) UNSIGNED DEFAULT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `hook_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `last_login_at`, `last_login_ip`, `created_at`, `updated_at`, `contact_number`, `address`, `profile_image`, `role_id`, `hook_id`, `status`) VALUES
(1, 'Nicks', 'superadmin@pronic.co.ke', '$2y$10$Ku/hus7bk.6n93b77eSg3.BxlX/O6.yMQX8rH5rN8LDF8XWMSakLO', NULL, '2023-05-02 00:35:20', '127.0.0.1', NULL, '2023-05-02 00:35:20', '+254720287104', 'Meru', NULL, NULL, NULL, 1),
(2, 'Denis', 'denis@gmail.com', '$2y$10$BiPAD7hk5Ps5PXGseHpTyu13dF70JGNdwEH.QlmhEnYApfgCTJo1i', NULL, '2023-05-02 12:15:58', '192.168.88.215', '2023-05-01 17:35:23', '2023-05-02 12:15:58', '075982212', 'Meru', '', NULL, NULL, 1),
(3, 'Solomon murithi', 'solo@gmail.com', '$2y$10$NQ.tMPjdqvLNf0EAFp4tgu.d9ZVztB5NbkAeJ.nOBkHxzgEBHeULW', NULL, '2023-05-02 00:34:36', '127.0.0.1', '2023-05-01 17:37:06', '2023-05-02 00:34:36', '0792310311', 'meru', '', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `number` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_staffs`
--

CREATE TABLE `vehicle_staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicles_id` int(10) UNSIGNED NOT NULL,
  `staffs_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_logs`
--

CREATE TABLE `visitor_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `purpose` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_doc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_num` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_time` time NOT NULL,
  `out_time` time DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_purposes`
--

CREATE TABLE `visitor_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_about_us_settings`
--

CREATE TABLE `web_about_us_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staffs_status` tinyint(1) NOT NULL DEFAULT 0,
  `staffs_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_status` tinyint(1) NOT NULL DEFAULT 0,
  `counter_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_blogs`
--

CREATE TABLE `web_blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_blog_categories`
--

CREATE TABLE `web_blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_client_awards`
--

CREATE TABLE `web_client_awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_contact_lists`
--

CREATE TABLE `web_contact_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_contact_us_settings`
--

CREATE TABLE `web_contact_us_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `contact_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webURL` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googlePlus_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsApp_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_counters`
--

CREATE TABLE `web_counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter` smallint(6) NOT NULL DEFAULT 0,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_downloads`
--

CREATE TABLE `web_downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_events`
--

CREATE TABLE `web_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `event_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_place` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_faqs`
--

CREATE TABLE `web_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_galleries`
--

CREATE TABLE `web_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_gallery_images`
--

CREATE TABLE `web_gallery_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_id` int(10) UNSIGNED NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_general_settings`
--

CREATE TABLE `web_general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `site_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_slogan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_keyword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_nav_status` tinyint(1) NOT NULL DEFAULT 0,
  `top_nav_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_nav_text_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_nav_status` tinyint(1) NOT NULL DEFAULT 0,
  `main_nav_button_status` tinyint(1) NOT NULL DEFAULT 0,
  `main_nav_button_button_text` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_nav_button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sticky_nav_status` tinyint(1) NOT NULL DEFAULT 0,
  `footer_status` tinyint(1) NOT NULL DEFAULT 0,
  `quick_nav_status` tinyint(1) NOT NULL DEFAULT 0,
  `footer_nav_status` tinyint(1) NOT NULL DEFAULT 0,
  `header_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_detail_foot` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `analytics_view_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `analytics_json_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_site_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_secret_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_widget` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_home_settings`
--

CREATE TABLE `web_home_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `slider_status` tinyint(1) NOT NULL DEFAULT 0,
  `slider_caption_status` tinyint(1) NOT NULL DEFAULT 0,
  `slider_call_to_action_status` tinyint(1) NOT NULL DEFAULT 0,
  `slider_call_to_action_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_call_to_action_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_status` tinyint(1) NOT NULL DEFAULT 0,
  `notice_title` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_status` tinyint(1) NOT NULL DEFAULT 0,
  `blog_title` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_status` tinyint(1) NOT NULL DEFAULT 0,
  `event_title` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_status` tinyint(1) NOT NULL DEFAULT 0,
  `welcome_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_button_text` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction_status` tinyint(1) NOT NULL DEFAULT 0,
  `introduction_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction_button_text` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `services_status` tinyint(1) NOT NULL DEFAULT 0,
  `services_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_status` tinyint(1) NOT NULL DEFAULT 0,
  `staff_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_status` tinyint(1) NOT NULL DEFAULT 0,
  `testimonial_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_status` tinyint(1) NOT NULL DEFAULT 0,
  `client_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_status` tinyint(1) NOT NULL DEFAULT 0,
  `email_call_to_action_status` tinyint(1) NOT NULL DEFAULT 0,
  `email_call_to_action_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_call_to_action_button_text` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_call_to_action_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_menus`
--

CREATE TABLE `web_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_menus`
--

INSERT INTO `web_menus` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `slug`, `rank`, `status`) VALUES
(1, '2021-06-30 05:36:21', '2021-06-30 05:36:21', 1, NULL, 'WELCOME PAGE', 'welcome_menu', 1, 1),
(2, '2021-06-30 05:36:21', '2021-06-30 05:36:21', 1, NULL, 'TOP NAV', 'top_menu', 10, 1),
(3, '2021-06-30 05:36:21', '2021-06-30 05:36:21', 1, NULL, 'MAIN NAVIGATION', 'main_navigation_menu', 20, 1),
(4, '2021-06-30 05:36:21', '2021-06-30 05:36:21', 1, NULL, 'STICKY NAVIGATION', 'sticky_navigation_menu', 30, 1),
(5, '2021-06-30 05:36:21', '2021-06-30 05:36:21', 1, NULL, 'USEFUL LINKS', 'useful_links', 40, 1),
(6, '2021-06-30 05:36:22', '2021-06-30 05:36:22', 1, NULL, 'FOOTER', 'footer_menu', 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_menu_web_page`
--

CREATE TABLE `web_menu_web_page` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `web_menu_id` int(10) UNSIGNED NOT NULL,
  `web_page_id` int(10) UNSIGNED NOT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_notices`
--

CREATE TABLE `web_notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_pages`
--

CREATE TABLE `web_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_pages`
--

INSERT INTO `web_pages` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `parent_id`, `title`, `slug`, `page_type`, `link`, `image`, `short_desc`, `detail_desc`, `seo_title`, `seo_keywords`, `seo_description`, `view_count`, `status`) VALUES
(1, '2021-06-30 05:36:22', '2021-06-30 05:36:22', 1, NULL, 0, 'About Us', 'about-us', 'predefine-link', 'about-us', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(2, '2021-06-30 05:36:23', '2021-06-30 05:36:23', 1, NULL, 0, 'Blog', 'blog', 'predefine-link', 'blog', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(3, '2021-06-30 05:36:24', '2021-06-30 05:36:24', 1, NULL, 0, 'Category', 'category', 'predefine-link', 'category', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(4, '2021-06-30 05:36:24', '2021-06-30 05:36:24', 1, NULL, 0, 'Contact Us', 'contact-us', 'predefine-link', 'contact-us', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5, '2021-06-30 05:36:25', '2021-06-30 05:36:25', 1, NULL, 0, 'Download', 'downloads', 'predefine-link', 'download', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(6, '2021-06-30 05:36:25', '2021-06-30 05:36:25', 1, NULL, 0, 'Events', 'events', 'predefine-link', 'events', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(7, '2021-06-30 05:36:25', '2021-06-30 05:36:25', 1, NULL, 0, 'Services', 'services', 'predefine-link', 'services', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(8, '2021-06-30 05:36:26', '2021-06-30 05:36:26', 1, NULL, 0, 'FAQ', 'faqs', 'predefine-link', 'faqs', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(9, '2021-06-30 05:36:26', '2021-06-30 05:36:26', 1, NULL, 0, 'Gallery', 'gallery', 'predefine-link', 'gallery', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(10, '2021-06-30 05:36:26', '2021-06-30 05:36:26', 1, NULL, 0, 'Home', '', 'predefine-link', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(11, '2021-06-30 05:36:27', '2021-06-30 05:36:27', 1, NULL, 0, 'Notice', 'public-notice', 'predefine-link', 'notice', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(12, '2021-06-30 05:36:27', '2021-06-30 05:36:27', 1, NULL, 0, 'Online Registration', 'online-registration', 'predefine-link', 'online-registration', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(13, '2021-06-30 05:36:27', '2021-06-30 05:36:27', 1, NULL, 0, 'Pricing', 'pricing', 'predefine-link', 'pricing', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(14, '2021-06-30 05:36:28', '2021-06-30 05:36:28', 1, NULL, 0, 'Staff', 'staffs', 'predefine-link', 'staff', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(15, '2021-06-30 05:36:28', '2021-06-30 05:36:28', 1, NULL, 0, 'Certificate Verification', 'certificate-verification', 'predefine-link', 'certificate-verification', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_pricings`
--

CREATE TABLE `web_pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_price` double(10,2) DEFAULT NULL,
  `new_price` double(10,2) DEFAULT NULL,
  `per_term` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_registrations`
--

CREATE TABLE `web_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `web_registration_programmes_id` int(10) UNSIGNED NOT NULL,
  `reg_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_date` date NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `religion` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_tongue` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disease_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_annual_income` int(11) DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_cell_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_cell_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_signature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_signature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_registration_academic_qualifications`
--

CREATE TABLE `web_registration_academic_qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `web_registrations_id` int(10) UNSIGNED NOT NULL,
  `examination` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board_university` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_of_pass` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage_grade` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_registration_programmes`
--

CREATE TABLE `web_registration_programmes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_registration_settings`
--

CREATE TABLE `web_registration_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_info_status` tinyint(1) NOT NULL DEFAULT 0,
  `guardian_detail_status` tinyint(1) NOT NULL DEFAULT 0,
  `permanent_address_status` tinyint(1) NOT NULL DEFAULT 0,
  `mailing_address_status` tinyint(1) NOT NULL DEFAULT 0,
  `photo_status` tinyint(1) NOT NULL DEFAULT 0,
  `applicant_photo_status` tinyint(1) NOT NULL DEFAULT 0,
  `applicant_signature_status` tinyint(1) NOT NULL DEFAULT 0,
  `guardian_photo_status` tinyint(1) NOT NULL DEFAULT 0,
  `qualification` tinyint(1) NOT NULL DEFAULT 0,
  `experience` tinyint(1) NOT NULL DEFAULT 0,
  `rules_status` tinyint(1) NOT NULL DEFAULT 0,
  `rules` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agreement_status` tinyint(1) NOT NULL DEFAULT 0,
  `agreement` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_registration_work_experiences`
--

CREATE TABLE `web_registration_work_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `web_registrations_id` int(10) UNSIGNED NOT NULL,
  `experience_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_services`
--

CREATE TABLE `web_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_sliders`
--

CREATE TABLE `web_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_staff`
--

CREATE TABLE `web_staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name of the staff',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_subscribers`
--

CREATE TABLE `web_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_testimonials`
--

CREATE TABLE `web_testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name of the testimonial giver',
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `active_status`, `status`) VALUES
(1, '2021-06-30 05:33:55', '2023-05-01 20:50:55', 1, NULL, '2018', 0, 0),
(2, '2021-06-30 05:33:55', '2023-05-01 20:50:55', 1, NULL, '2019', 0, 0),
(3, '2021-06-30 05:33:55', '2023-05-01 20:50:55', 1, NULL, '2020', 0, 0),
(4, '2021-06-30 05:33:55', '2023-05-01 20:50:55', 1, NULL, '2021', 0, 0),
(5, '2023-05-01 17:55:06', '2023-05-01 20:50:55', 1, NULL, '2023', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_infos`
--
ALTER TABLE `academic_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_infos_students_id_foreign` (`students_id`);

--
-- Indexes for table `account_categories`
--
ALTER TABLE `account_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_categories_ac_name_unique` (`ac_name`);

--
-- Indexes for table `addressinfos`
--
ALTER TABLE `addressinfos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addressinfos_students_id_foreign` (`students_id`);

--
-- Indexes for table `alert_settings`
--
ALTER TABLE `alert_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assets_title_unique` (`title`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_years_id_foreign` (`years_id`),
  ADD KEY `assignments_semesters_id_foreign` (`semesters_id`),
  ADD KEY `assignments_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `assignment_answers`
--
ALTER TABLE `assignment_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignment_answers_assignments_id_foreign` (`assignments_id`),
  ADD KEY `assignment_answers_students_id_foreign` (`students_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_years_id_foreign` (`years_id`),
  ADD KEY `attendances_months_id_foreign` (`months_id`);

--
-- Indexes for table `attendance_certificates`
--
ALTER TABLE `attendance_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attendance_certificates_students_id_unique` (`students_id`);

--
-- Indexes for table `attendance_masters`
--
ALTER TABLE `attendance_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_masters_year_foreign` (`year`),
  ADD KEY `attendance_masters_month_foreign` (`month`);

--
-- Indexes for table `attendance_statuses`
--
ALTER TABLE `attendance_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attendance_statuses_title_unique` (`title`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_transactions_banks_id_foreign` (`banks_id`);

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beds_hostels_id_foreign` (`hostels_id`),
  ADD KEY `beds_rooms_id_foreign` (`rooms_id`),
  ADD KEY `beds_bed_status_foreign` (`bed_status`);

--
-- Indexes for table `bed_statuses`
--
ALTER TABLE `bed_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bed_statuses_title_unique` (`title`);

--
-- Indexes for table `bonafide_certificates`
--
ALTER TABLE `bonafide_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bonafide_certificates_students_id_unique` (`students_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_book_code_unique` (`book_code`),
  ADD KEY `books_book_masters_id_foreign` (`book_masters_id`),
  ADD KEY `books_book_status_foreign` (`book_status`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_categories_title_unique` (`title`),
  ADD UNIQUE KEY `book_categories_slug_unique` (`slug`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_issues_book_id_foreign` (`book_id`);

--
-- Indexes for table `book_masters`
--
ALTER TABLE `book_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_masters_categories_foreign` (`categories`);

--
-- Indexes for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_statuses`
--
ALTER TABLE `book_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_statuses_title_unique` (`title`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`);

--
-- Indexes for table `certificate_histories`
--
ALTER TABLE `certificate_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificate_histories_students_id_foreign` (`students_id`);

--
-- Indexes for table `certificate_templates`
--
ALTER TABLE `certificate_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character_certificates`
--
ALTER TABLE `character_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `character_certificates_students_id_unique` (`students_id`),
  ADD UNIQUE KEY `character_certificates_cc_num_unique` (`cc_num`);

--
-- Indexes for table `contact_directory_details`
--
ALTER TABLE `contact_directory_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_directory_groups`
--
ALTER TABLE `contact_directory_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_mesages`
--
ALTER TABLE `contact_mesages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_completion_certificates`
--
ALTER TABLE `course_completion_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_completion_certificates_students_id_unique` (`students_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_reg_no_unique` (`reg_no`);

--
-- Indexes for table `customer_statuses`
--
ALTER TABLE `customer_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_statuses_title_unique` (`title`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `days_title_unique` (`title`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eating_times`
--
ALTER TABLE `eating_times`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eating_times_title_unique` (`title`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_title_unique` (`title`);

--
-- Indexes for table `exam_mark_ledgers`
--
ALTER TABLE `exam_mark_ledgers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_mark_ledgers_students_id_foreign` (`students_id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_schedules_years_id_foreign` (`years_id`),
  ADD KEY `exam_schedules_months_id_foreign` (`months_id`),
  ADD KEY `exam_schedules_exams_id_foreign` (`exams_id`),
  ADD KEY `exam_schedules_faculty_id_foreign` (`faculty_id`),
  ADD KEY `exam_schedules_semesters_id_foreign` (`semesters_id`),
  ADD KEY `exam_schedules_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faculties_faculty_unique` (`faculty`),
  ADD UNIQUE KEY `faculties_faculty_code_unique` (`faculty_code`);

--
-- Indexes for table `faculty_semester`
--
ALTER TABLE `faculty_semester`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faculty_semester_faculty_id_foreign` (`faculty_id`),
  ADD KEY `faculty_semester_semester_id_foreign` (`semester_id`);

--
-- Indexes for table `fee_collections`
--
ALTER TABLE `fee_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_collections_students_id_foreign` (`students_id`),
  ADD KEY `fee_collections_fee_masters_id_foreign` (`fee_masters_id`);

--
-- Indexes for table `fee_heads`
--
ALTER TABLE `fee_heads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_heads_fee_head_title_unique` (`fee_head_title`);

--
-- Indexes for table `fee_masters`
--
ALTER TABLE `fee_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_masters_students_id_foreign` (`students_id`);

--
-- Indexes for table `food_categories`
--
ALTER TABLE `food_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `food_categories_title_unique` (`title`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `food_items_title_unique` (`title`);

--
-- Indexes for table `food_item_food_schedule`
--
ALTER TABLE `food_item_food_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_schedules`
--
ALTER TABLE `food_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `general_settings_time_zones_id_foreign` (`time_zones_id`);

--
-- Indexes for table `grading_scales`
--
ALTER TABLE `grading_scales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grading_scales_gradingtype_id_foreign` (`gradingType_id`);

--
-- Indexes for table `grading_types`
--
ALTER TABLE `grading_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grading_types_title_unique` (`title`),
  ADD UNIQUE KEY `grading_types_slug_unique` (`slug`);

--
-- Indexes for table `guardian_details`
--
ALTER TABLE `guardian_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hostels_name_unique` (`name`);

--
-- Indexes for table `hostel_meals`
--
ALTER TABLE `hostel_meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `library_circulations`
--
ALTER TABLE `library_circulations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `library_circulations_user_type_unique` (`user_type`),
  ADD UNIQUE KEY `library_circulations_slug_unique` (`slug`),
  ADD UNIQUE KEY `library_circulations_code_prefix_unique` (`code_prefix`);

--
-- Indexes for table `library_members`
--
ALTER TABLE `library_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_answer_sheets`
--
ALTER TABLE `mcq_answer_sheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_exams`
--
ALTER TABLE `mcq_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_exam_participants`
--
ALTER TABLE `mcq_exam_participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_exam_questions`
--
ALTER TABLE `mcq_exam_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_instructions`
--
ALTER TABLE `mcq_instructions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mcq_instructions_title_unique` (`title`);

--
-- Indexes for table `mcq_questions`
--
ALTER TABLE `mcq_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_question_groups`
--
ALTER TABLE `mcq_question_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mcq_question_groups_title_unique` (`title`);

--
-- Indexes for table `mcq_question_levels`
--
ALTER TABLE `mcq_question_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mcq_question_levels_title_unique` (`title`);

--
-- Indexes for table `mcq_question_options`
--
ALTER TABLE `mcq_question_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meetings_semesters_id_foreign` (`semesters_id`),
  ADD KEY `meetings_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `meeting_settings`
--
ALTER TABLE `meeting_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `months`
--
ALTER TABLE `months`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `months_title_unique` (`title`);

--
-- Indexes for table `nirgam_utara_certificates`
--
ALTER TABLE `nirgam_utara_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nirgam_utara_certificates_students_id_unique` (`students_id`),
  ADD UNIQUE KEY `nirgam_utara_certificates_nu_num_unique` (`nu_num`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_payments`
--
ALTER TABLE `online_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_registration_programs`
--
ALTER TABLE `online_registration_programs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `online_registration_programs_faculties_id_unique` (`faculties_id`);

--
-- Indexes for table `online_registration_settings`
--
ALTER TABLE `online_registration_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_details`
--
ALTER TABLE `parent_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_details_students_id_foreign` (`students_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_methods_title_unique` (`title`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_heads`
--
ALTER TABLE `payroll_heads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payroll_heads_title_unique` (`title`),
  ADD UNIQUE KEY `payroll_heads_slug_unique` (`slug`);

--
-- Indexes for table `payroll_masters`
--
ALTER TABLE `payroll_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_masters_staff_id_foreign` (`staff_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `postal_exchanges`
--
ALTER TABLE `postal_exchanges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `postal_exchanges_ref_no_unique` (`ref_no`);

--
-- Indexes for table `postal_exchange_types`
--
ALTER TABLE `postal_exchange_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `postal_exchange_types_title_unique` (`title`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_prices_products_id_unique` (`products_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_vendors_id_foreign` (`vendors_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_details_products_id_foreign` (`products_id`);

--
-- Indexes for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_returns_vendors_id_foreign` (`vendors_id`),
  ADD KEY `purchase_returns_products_id_foreign` (`products_id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `residents_hostels_id_foreign` (`hostels_id`),
  ADD KEY `residents_rooms_id_foreign` (`rooms_id`),
  ADD KEY `residents_beds_id_foreign` (`beds_id`);

--
-- Indexes for table `resident_histories`
--
ALTER TABLE `resident_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_histories_years_id_foreign` (`years_id`),
  ADD KEY `resident_histories_hostels_id_foreign` (`hostels_id`),
  ADD KEY `resident_histories_rooms_id_foreign` (`rooms_id`),
  ADD KEY `resident_histories_beds_id_foreign` (`beds_id`),
  ADD KEY `resident_histories_residents_id_foreign` (`residents_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_hostels_id_foreign` (`hostels_id`),
  ADD KEY `rooms_room_type_foreign` (`room_type`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_types_title_unique` (`title`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `routes_title_unique` (`title`);

--
-- Indexes for table `route_vehicles`
--
ALTER TABLE `route_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_pays`
--
ALTER TABLE `salary_pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_pays_staff_id_foreign` (`staff_id`),
  ADD KEY `salary_pays_salary_masters_id_foreign` (`salary_masters_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_returns`
--
ALTER TABLE `sales_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `semesters_semester_unique` (`semester`),
  ADD UNIQUE KEY `semesters_slug_unique` (`slug`);

--
-- Indexes for table `semester_assets`
--
ALTER TABLE `semester_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester_subject`
--
ALTER TABLE `semester_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semester_subject_semester_id_foreign` (`semester_id`),
  ADD KEY `semester_subject_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_emails`
--
ALTER TABLE `sms_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_reg_no_unique` (`reg_no`),
  ADD KEY `staff_designation_foreign` (`designation`);

--
-- Indexes for table `staff_designations`
--
ALTER TABLE `staff_designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_designations_title_unique` (`title`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_reg_no_unique` (`reg_no`),
  ADD KEY `students_faculty_foreign` (`faculty`),
  ADD KEY `students_semester_foreign` (`semester`),
  ADD KEY `students_academic_status_foreign` (`academic_status`),
  ADD KEY `students_batch_foreign` (`batch`);

--
-- Indexes for table `student_batches`
--
ALTER TABLE `student_batches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_batches_title_unique` (`title`);

--
-- Indexes for table `student_guardians`
--
ALTER TABLE `student_guardians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_guardians_students_id_foreign` (`students_id`),
  ADD KEY `student_guardians_guardians_id_foreign` (`guardians_id`);

--
-- Indexes for table `student_statuses`
--
ALTER TABLE `student_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_statuses_title_unique` (`title`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_attendances`
--
ALTER TABLE `subject_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_attendances_years_id_foreign` (`years_id`),
  ADD KEY `subject_attendances_months_id_foreign` (`months_id`),
  ADD KEY `subject_attendances_subjects_id_foreign` (`subjects_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_zones`
--
ALTER TABLE `time_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tr_head_id_foreign` (`tr_head_id`);

--
-- Indexes for table `transaction_heads`
--
ALTER TABLE `transaction_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_certificates`
--
ALTER TABLE `transfer_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transfer_certificates_students_id_unique` (`students_id`),
  ADD UNIQUE KEY `transfer_certificates_tc_num_unique` (`tc_num`);

--
-- Indexes for table `transport_histories`
--
ALTER TABLE `transport_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_histories_travellers_id_foreign` (`travellers_id`);

--
-- Indexes for table `transport_users`
--
ALTER TABLE `transport_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_users_routes_id_foreign` (`routes_id`),
  ADD KEY `transport_users_vehicles_id_foreign` (`vehicles_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicles_number_unique` (`number`);

--
-- Indexes for table `vehicle_staffs`
--
ALTER TABLE `vehicle_staffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_staffs_staffs_id_foreign` (`staffs_id`),
  ADD KEY `vehicle_staffs_vehicles_id_foreign` (`vehicles_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_reg_no_unique` (`reg_no`);

--
-- Indexes for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_purposes`
--
ALTER TABLE `visitor_purposes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visitor_purposes_title_unique` (`title`);

--
-- Indexes for table `web_about_us_settings`
--
ALTER TABLE `web_about_us_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_blogs`
--
ALTER TABLE `web_blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_blogs_slug_unique` (`slug`);

--
-- Indexes for table `web_blog_categories`
--
ALTER TABLE `web_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_blog_categories_slug_unique` (`slug`);

--
-- Indexes for table `web_client_awards`
--
ALTER TABLE `web_client_awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_contact_lists`
--
ALTER TABLE `web_contact_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_contact_us_settings`
--
ALTER TABLE `web_contact_us_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_counters`
--
ALTER TABLE `web_counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_downloads`
--
ALTER TABLE `web_downloads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_downloads_slug_unique` (`slug`);

--
-- Indexes for table `web_events`
--
ALTER TABLE `web_events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_events_slug_unique` (`slug`);

--
-- Indexes for table `web_faqs`
--
ALTER TABLE `web_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_galleries`
--
ALTER TABLE `web_galleries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_galleries_slug_unique` (`slug`);

--
-- Indexes for table `web_gallery_images`
--
ALTER TABLE `web_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_general_settings`
--
ALTER TABLE `web_general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_home_settings`
--
ALTER TABLE `web_home_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_menus`
--
ALTER TABLE `web_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_menus_slug_unique` (`slug`);

--
-- Indexes for table `web_menu_web_page`
--
ALTER TABLE `web_menu_web_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_notices`
--
ALTER TABLE `web_notices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_notices_slug_unique` (`slug`);

--
-- Indexes for table `web_pages`
--
ALTER TABLE `web_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_pages_slug_unique` (`slug`);

--
-- Indexes for table `web_pricings`
--
ALTER TABLE `web_pricings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_pricings_title_unique` (`title`);

--
-- Indexes for table `web_registrations`
--
ALTER TABLE `web_registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_registrations_reg_no_unique` (`reg_no`);

--
-- Indexes for table `web_registration_academic_qualifications`
--
ALTER TABLE `web_registration_academic_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_registration_programmes`
--
ALTER TABLE `web_registration_programmes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_registration_settings`
--
ALTER TABLE `web_registration_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_registration_work_experiences`
--
ALTER TABLE `web_registration_work_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_services`
--
ALTER TABLE `web_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_sliders`
--
ALTER TABLE `web_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_staff`
--
ALTER TABLE `web_staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_staff_slug_unique` (`slug`);

--
-- Indexes for table `web_subscribers`
--
ALTER TABLE `web_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_testimonials`
--
ALTER TABLE `web_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `years_title_unique` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_infos`
--
ALTER TABLE `academic_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_categories`
--
ALTER TABLE `account_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `addressinfos`
--
ALTER TABLE `addressinfos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `alert_settings`
--
ALTER TABLE `alert_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment_answers`
--
ALTER TABLE `assignment_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_certificates`
--
ALTER TABLE `attendance_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_masters`
--
ALTER TABLE `attendance_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_statuses`
--
ALTER TABLE `attendance_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=655;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bed_statuses`
--
ALTER TABLE `bed_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bonafide_certificates`
--
ALTER TABLE `bonafide_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_masters`
--
ALTER TABLE `book_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_requests`
--
ALTER TABLE `book_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_statuses`
--
ALTER TABLE `book_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate_histories`
--
ALTER TABLE `certificate_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate_templates`
--
ALTER TABLE `certificate_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `character_certificates`
--
ALTER TABLE `character_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_directory_details`
--
ALTER TABLE `contact_directory_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_directory_groups`
--
ALTER TABLE `contact_directory_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_mesages`
--
ALTER TABLE `contact_mesages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_completion_certificates`
--
ALTER TABLE `course_completion_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_statuses`
--
ALTER TABLE `customer_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eating_times`
--
ALTER TABLE `eating_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_mark_ledgers`
--
ALTER TABLE `exam_mark_ledgers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faculty_semester`
--
ALTER TABLE `faculty_semester`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fee_collections`
--
ALTER TABLE `fee_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `fee_heads`
--
ALTER TABLE `fee_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fee_masters`
--
ALTER TABLE `fee_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `food_categories`
--
ALTER TABLE `food_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_item_food_schedule`
--
ALTER TABLE `food_item_food_schedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_schedules`
--
ALTER TABLE `food_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grading_scales`
--
ALTER TABLE `grading_scales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `grading_types`
--
ALTER TABLE `grading_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guardian_details`
--
ALTER TABLE `guardian_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostel_meals`
--
ALTER TABLE `hostel_meals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institutions`
--
ALTER TABLE `institutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `library_circulations`
--
ALTER TABLE `library_circulations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `library_members`
--
ALTER TABLE `library_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_answer_sheets`
--
ALTER TABLE `mcq_answer_sheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_exams`
--
ALTER TABLE `mcq_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_exam_participants`
--
ALTER TABLE `mcq_exam_participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_exam_questions`
--
ALTER TABLE `mcq_exam_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_instructions`
--
ALTER TABLE `mcq_instructions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_questions`
--
ALTER TABLE `mcq_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_question_groups`
--
ALTER TABLE `mcq_question_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_question_levels`
--
ALTER TABLE `mcq_question_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcq_question_options`
--
ALTER TABLE `mcq_question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_settings`
--
ALTER TABLE `meeting_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `months`
--
ALTER TABLE `months`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nirgam_utara_certificates`
--
ALTER TABLE `nirgam_utara_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_payments`
--
ALTER TABLE `online_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_registration_programs`
--
ALTER TABLE `online_registration_programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_registration_settings`
--
ALTER TABLE `online_registration_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent_details`
--
ALTER TABLE `parent_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payroll_heads`
--
ALTER TABLE `payroll_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_masters`
--
ALTER TABLE `payroll_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=939;

--
-- AUTO_INCREMENT for table `postal_exchanges`
--
ALTER TABLE `postal_exchanges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postal_exchange_types`
--
ALTER TABLE `postal_exchange_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resident_histories`
--
ALTER TABLE `resident_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route_vehicles`
--
ALTER TABLE `route_vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_pays`
--
ALTER TABLE `salary_pays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_returns`
--
ALTER TABLE `sales_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `semester_assets`
--
ALTER TABLE `semester_assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semester_subject`
--
ALTER TABLE `semester_subject`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_emails`
--
ALTER TABLE `sms_emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_designations`
--
ALTER TABLE `staff_designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `student_batches`
--
ALTER TABLE `student_batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_guardians`
--
ALTER TABLE `student_guardians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `student_statuses`
--
ALTER TABLE `student_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subject_attendances`
--
ALTER TABLE `subject_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_zones`
--
ALTER TABLE `time_zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_heads`
--
ALTER TABLE `transaction_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transfer_certificates`
--
ALTER TABLE `transfer_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_histories`
--
ALTER TABLE `transport_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_users`
--
ALTER TABLE `transport_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_staffs`
--
ALTER TABLE `vehicle_staffs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_purposes`
--
ALTER TABLE `visitor_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_about_us_settings`
--
ALTER TABLE `web_about_us_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_blogs`
--
ALTER TABLE `web_blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_blog_categories`
--
ALTER TABLE `web_blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_client_awards`
--
ALTER TABLE `web_client_awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_contact_lists`
--
ALTER TABLE `web_contact_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_contact_us_settings`
--
ALTER TABLE `web_contact_us_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_counters`
--
ALTER TABLE `web_counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_downloads`
--
ALTER TABLE `web_downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_events`
--
ALTER TABLE `web_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_faqs`
--
ALTER TABLE `web_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_galleries`
--
ALTER TABLE `web_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_gallery_images`
--
ALTER TABLE `web_gallery_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_general_settings`
--
ALTER TABLE `web_general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_home_settings`
--
ALTER TABLE `web_home_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_menus`
--
ALTER TABLE `web_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `web_menu_web_page`
--
ALTER TABLE `web_menu_web_page`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_notices`
--
ALTER TABLE `web_notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_pages`
--
ALTER TABLE `web_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `web_pricings`
--
ALTER TABLE `web_pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_registrations`
--
ALTER TABLE `web_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_registration_academic_qualifications`
--
ALTER TABLE `web_registration_academic_qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_registration_programmes`
--
ALTER TABLE `web_registration_programmes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_registration_settings`
--
ALTER TABLE `web_registration_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_registration_work_experiences`
--
ALTER TABLE `web_registration_work_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_services`
--
ALTER TABLE `web_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_sliders`
--
ALTER TABLE `web_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_staff`
--
ALTER TABLE `web_staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_subscribers`
--
ALTER TABLE `web_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_testimonials`
--
ALTER TABLE `web_testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_infos`
--
ALTER TABLE `academic_infos`
  ADD CONSTRAINT `academic_infos_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `addressinfos`
--
ALTER TABLE `addressinfos`
  ADD CONSTRAINT `addressinfos_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_semesters_id_foreign` FOREIGN KEY (`semesters_id`) REFERENCES `semesters` (`id`),
  ADD CONSTRAINT `assignments_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `assignments_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `assignment_answers`
--
ALTER TABLE `assignment_answers`
  ADD CONSTRAINT `assignment_answers_assignments_id_foreign` FOREIGN KEY (`assignments_id`) REFERENCES `assignments` (`id`),
  ADD CONSTRAINT `assignment_answers_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_months_id_foreign` FOREIGN KEY (`months_id`) REFERENCES `months` (`id`),
  ADD CONSTRAINT `attendances_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `attendance_certificates`
--
ALTER TABLE `attendance_certificates`
  ADD CONSTRAINT `attendance_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `attendance_masters`
--
ALTER TABLE `attendance_masters`
  ADD CONSTRAINT `attendance_masters_month_foreign` FOREIGN KEY (`month`) REFERENCES `months` (`id`),
  ADD CONSTRAINT `attendance_masters_year_foreign` FOREIGN KEY (`year`) REFERENCES `years` (`id`);

--
-- Constraints for table `bank_transactions`
--
ALTER TABLE `bank_transactions`
  ADD CONSTRAINT `bank_transactions_banks_id_foreign` FOREIGN KEY (`banks_id`) REFERENCES `banks` (`id`);

--
-- Constraints for table `beds`
--
ALTER TABLE `beds`
  ADD CONSTRAINT `beds_bed_status_foreign` FOREIGN KEY (`bed_status`) REFERENCES `bed_statuses` (`id`),
  ADD CONSTRAINT `beds_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`),
  ADD CONSTRAINT `beds_rooms_id_foreign` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `bonafide_certificates`
--
ALTER TABLE `bonafide_certificates`
  ADD CONSTRAINT `bonafide_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_book_masters_id_foreign` FOREIGN KEY (`book_masters_id`) REFERENCES `book_masters` (`id`),
  ADD CONSTRAINT `books_book_status_foreign` FOREIGN KEY (`book_status`) REFERENCES `book_statuses` (`id`);

--
-- Constraints for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD CONSTRAINT `book_issues_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `book_masters`
--
ALTER TABLE `book_masters`
  ADD CONSTRAINT `book_masters_categories_foreign` FOREIGN KEY (`categories`) REFERENCES `book_categories` (`id`);

--
-- Constraints for table `certificate_histories`
--
ALTER TABLE `certificate_histories`
  ADD CONSTRAINT `certificate_histories_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `character_certificates`
--
ALTER TABLE `character_certificates`
  ADD CONSTRAINT `character_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `course_completion_certificates`
--
ALTER TABLE `course_completion_certificates`
  ADD CONSTRAINT `course_completion_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `exam_mark_ledgers`
--
ALTER TABLE `exam_mark_ledgers`
  ADD CONSTRAINT `exam_mark_ledgers_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD CONSTRAINT `exam_schedules_exams_id_foreign` FOREIGN KEY (`exams_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `exam_schedules_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `exam_schedules_months_id_foreign` FOREIGN KEY (`months_id`) REFERENCES `months` (`id`),
  ADD CONSTRAINT `exam_schedules_semesters_id_foreign` FOREIGN KEY (`semesters_id`) REFERENCES `semesters` (`id`),
  ADD CONSTRAINT `exam_schedules_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `exam_schedules_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `faculty_semester`
--
ALTER TABLE `faculty_semester`
  ADD CONSTRAINT `faculty_semester_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `faculty_semester_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `fee_collections`
--
ALTER TABLE `fee_collections`
  ADD CONSTRAINT `fee_collections_fee_masters_id_foreign` FOREIGN KEY (`fee_masters_id`) REFERENCES `fee_masters` (`id`),
  ADD CONSTRAINT `fee_collections_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `fee_masters`
--
ALTER TABLE `fee_masters`
  ADD CONSTRAINT `fee_masters_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD CONSTRAINT `general_settings_time_zones_id_foreign` FOREIGN KEY (`time_zones_id`) REFERENCES `time_zones` (`id`);

--
-- Constraints for table `grading_scales`
--
ALTER TABLE `grading_scales`
  ADD CONSTRAINT `grading_scales_gradingtype_id_foreign` FOREIGN KEY (`gradingType_id`) REFERENCES `grading_types` (`id`);

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_semesters_id_foreign` FOREIGN KEY (`semesters_id`) REFERENCES `semesters` (`id`),
  ADD CONSTRAINT `meetings_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `nirgam_utara_certificates`
--
ALTER TABLE `nirgam_utara_certificates`
  ADD CONSTRAINT `nirgam_utara_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `parent_details`
--
ALTER TABLE `parent_details`
  ADD CONSTRAINT `parent_details_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `payroll_masters`
--
ALTER TABLE `payroll_masters`
  ADD CONSTRAINT `payroll_masters_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_vendors_id_foreign` FOREIGN KEY (`vendors_id`) REFERENCES `vendors` (`id`);

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD CONSTRAINT `purchase_returns_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `purchase_returns_vendors_id_foreign` FOREIGN KEY (`vendors_id`) REFERENCES `vendors` (`id`);

--
-- Constraints for table `residents`
--
ALTER TABLE `residents`
  ADD CONSTRAINT `residents_beds_id_foreign` FOREIGN KEY (`beds_id`) REFERENCES `beds` (`id`),
  ADD CONSTRAINT `residents_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`),
  ADD CONSTRAINT `residents_rooms_id_foreign` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `resident_histories`
--
ALTER TABLE `resident_histories`
  ADD CONSTRAINT `resident_histories_beds_id_foreign` FOREIGN KEY (`beds_id`) REFERENCES `beds` (`id`),
  ADD CONSTRAINT `resident_histories_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`),
  ADD CONSTRAINT `resident_histories_residents_id_foreign` FOREIGN KEY (`residents_id`) REFERENCES `residents` (`id`),
  ADD CONSTRAINT `resident_histories_rooms_id_foreign` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `resident_histories_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_hostels_id_foreign` FOREIGN KEY (`hostels_id`) REFERENCES `hostels` (`id`),
  ADD CONSTRAINT `rooms_room_type_foreign` FOREIGN KEY (`room_type`) REFERENCES `room_types` (`id`);

--
-- Constraints for table `salary_pays`
--
ALTER TABLE `salary_pays`
  ADD CONSTRAINT `salary_pays_salary_masters_id_foreign` FOREIGN KEY (`salary_masters_id`) REFERENCES `payroll_masters` (`id`),
  ADD CONSTRAINT `salary_pays_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

--
-- Constraints for table `semester_subject`
--
ALTER TABLE `semester_subject`
  ADD CONSTRAINT `semester_subject_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`),
  ADD CONSTRAINT `semester_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_designation_foreign` FOREIGN KEY (`designation`) REFERENCES `staff_designations` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_academic_status_foreign` FOREIGN KEY (`academic_status`) REFERENCES `student_statuses` (`id`),
  ADD CONSTRAINT `students_batch_foreign` FOREIGN KEY (`batch`) REFERENCES `student_batches` (`id`),
  ADD CONSTRAINT `students_faculty_foreign` FOREIGN KEY (`faculty`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `students_semester_foreign` FOREIGN KEY (`semester`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `student_guardians`
--
ALTER TABLE `student_guardians`
  ADD CONSTRAINT `student_guardians_guardians_id_foreign` FOREIGN KEY (`guardians_id`) REFERENCES `guardian_details` (`id`),
  ADD CONSTRAINT `student_guardians_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `subject_attendances`
--
ALTER TABLE `subject_attendances`
  ADD CONSTRAINT `subject_attendances_months_id_foreign` FOREIGN KEY (`months_id`) REFERENCES `months` (`id`),
  ADD CONSTRAINT `subject_attendances_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `subject_attendances_years_id_foreign` FOREIGN KEY (`years_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_tr_head_id_foreign` FOREIGN KEY (`tr_head_id`) REFERENCES `transaction_heads` (`id`);

--
-- Constraints for table `transfer_certificates`
--
ALTER TABLE `transfer_certificates`
  ADD CONSTRAINT `transfer_certificates_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `transport_histories`
--
ALTER TABLE `transport_histories`
  ADD CONSTRAINT `transport_histories_travellers_id_foreign` FOREIGN KEY (`travellers_id`) REFERENCES `transport_users` (`id`);

--
-- Constraints for table `transport_users`
--
ALTER TABLE `transport_users`
  ADD CONSTRAINT `transport_users_routes_id_foreign` FOREIGN KEY (`routes_id`) REFERENCES `routes` (`id`),
  ADD CONSTRAINT `transport_users_vehicles_id_foreign` FOREIGN KEY (`vehicles_id`) REFERENCES `vehicles` (`id`);

--
-- Constraints for table `vehicle_staffs`
--
ALTER TABLE `vehicle_staffs`
  ADD CONSTRAINT `vehicle_staffs_staffs_id_foreign` FOREIGN KEY (`staffs_id`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `vehicle_staffs_vehicles_id_foreign` FOREIGN KEY (`vehicles_id`) REFERENCES `vehicles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
