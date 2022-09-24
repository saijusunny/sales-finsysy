-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2022 at 07:44 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newfinsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `app1_accounts`
--

CREATE TABLE `app1_accounts` (
  `accountsid` int(11) NOT NULL,
  `acctype` varchar(100) NOT NULL,
  `detype` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `gst` varchar(100) DEFAULT NULL,
  `deftaxcode` varchar(100) NOT NULL,
  `balance` double DEFAULT NULL,
  `asof` date NOT NULL,
  `balfordisp` double DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `productid_id` int(11) NOT NULL,
  `proid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_accounts1`
--

CREATE TABLE `app1_accounts1` (
  `accounts1id` int(11) NOT NULL,
  `acctype` varchar(100) NOT NULL,
  `detype` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `gst` varchar(100) DEFAULT NULL,
  `deftaxcode` varchar(100) NOT NULL,
  `balance` double DEFAULT NULL,
  `asof` date DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_accounts1`
--

INSERT INTO `app1_accounts1` (`accounts1id`, `acctype`, `detype`, `name`, `description`, `gst`, `deftaxcode`, `balance`, `asof`, `cid_id`) VALUES
(9, 'sas', 'Income', 'sdas', '', NULL, '', 6000, NULL, 6),
(10, 'sdfds', 'Income', 'lkl', '', NULL, '', 5000, NULL, 6),
(11, 'zzvxcvv', 'Expenses', 'ZzxzZx', '', NULL, '', 150, NULL, 6),
(12, 'gfh', 'Expenses', 'sdfd', '', NULL, '', 158, NULL, 6),
(13, 'fdgfg', 'Income', 'cxvc', '', NULL, '', 1478, NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `app1_accountype`
--

CREATE TABLE `app1_accountype` (
  `accountypeid` int(11) NOT NULL,
  `accountname` varchar(100) NOT NULL,
  `accountbal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_addac`
--

CREATE TABLE `app1_addac` (
  `id` bigint(20) NOT NULL,
  `acname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `dateadded` date NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_addtax1`
--

CREATE TABLE `app1_addtax1` (
  `addtax1id` int(11) NOT NULL,
  `taxname` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_advancepayment`
--

CREATE TABLE `app1_advancepayment` (
  `advancepaymentid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `paymentdate` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `memo` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_bankstatement`
--

CREATE TABLE `app1_bankstatement` (
  `bankstatementid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `debit` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_bankstatement`
--

INSERT INTO `app1_bankstatement` (`bankstatementid`, `name`, `date`, `description`, `debit`, `credit`, `cid_id`) VALUES
(2, '', '', '', 200, 3000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `app1_bills`
--

CREATE TABLE `app1_bills` (
  `billid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `paymacnt` varchar(100) NOT NULL,
  `paymdate` varchar(100) NOT NULL,
  `paymmethod` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `totamt` varchar(100) NOT NULL,
  `category1` varchar(100) NOT NULL,
  `descrptin1` varchar(100) NOT NULL,
  `catqty1` varchar(100) NOT NULL,
  `catprice1` varchar(100) NOT NULL,
  `cattotal1` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `category3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `category4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `payornot` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_bundle`
--

CREATE TABLE `app1_bundle` (
  `bundleid` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `product1` varchar(100) DEFAULT NULL,
  `product2` varchar(100) DEFAULT NULL,
  `product3` varchar(100) DEFAULT NULL,
  `product4` varchar(100) DEFAULT NULL,
  `hsn1` varchar(100) DEFAULT NULL,
  `hsn2` varchar(100) DEFAULT NULL,
  `hsn3` varchar(100) DEFAULT NULL,
  `hsn4` varchar(100) DEFAULT NULL,
  `description1` varchar(255) DEFAULT NULL,
  `description2` varchar(255) DEFAULT NULL,
  `description3` varchar(255) DEFAULT NULL,
  `description4` varchar(255) DEFAULT NULL,
  `qty1` int(11) DEFAULT NULL,
  `qty2` int(11) DEFAULT NULL,
  `qty3` int(11) DEFAULT NULL,
  `qty4` int(11) DEFAULT NULL,
  `price1` double DEFAULT NULL,
  `price2` double DEFAULT NULL,
  `price3` double DEFAULT NULL,
  `price4` double DEFAULT NULL,
  `total1` double DEFAULT NULL,
  `total2` double DEFAULT NULL,
  `total3` double DEFAULT NULL,
  `total4` double DEFAULT NULL,
  `tax1` double DEFAULT NULL,
  `tax2` double DEFAULT NULL,
  `tax3` double DEFAULT NULL,
  `tax4` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_cheqs`
--

CREATE TABLE `app1_cheqs` (
  `chequeid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `bankacc` varchar(100) NOT NULL,
  `mailaddr` varchar(100) NOT NULL,
  `paydate` varchar(100) NOT NULL,
  `chequeno` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `category1` varchar(100) NOT NULL,
  `descrptin1` varchar(100) NOT NULL,
  `catqty1` varchar(100) NOT NULL,
  `catprice1` varchar(100) NOT NULL,
  `cattotal1` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `category3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `category4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_company`
--

CREATE TABLE `app1_company` (
  `cid` int(11) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `caddress` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `cimg` varchar(100) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `industry` varchar(100) NOT NULL,
  `ctype` varchar(100) NOT NULL,
  `abt` varchar(100) NOT NULL,
  `paid` varchar(100) NOT NULL,
  `id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_company`
--

INSERT INTO `app1_company` (`cid`, `cname`, `caddress`, `city`, `state`, `pincode`, `cemail`, `phone`, `cimg`, `bname`, `industry`, `ctype`, `abt`, `paid`, `id_id`) VALUES
(6, 'Clowns', 'Clown Chottanikkara', 'Chottanikkara', 'Kerala', '682312', 'clow@gmail.com', '8848937577', '386infox.png', 'Clowns', 'Cash', 'sdfgfg', 'Yes', 'dfgfdgfd', 26),
(12, 'sadsad', 'sad', 'sad', 'asdd', '2154', 'Saiju@gmail.com', '7854212365', '386infox.png', 'sdfdf', 'Cash', 'sdfds', 'Yes', 'sdffd', 38),
(14, 'sad', 'sadsa', 'sada', 'Defaultsadas', 'Pincodesadsa', 'sadsad@gmail.com', '8848937577', '386infox.png', '', '', '', '', '', 42),
(16, 'Saibu', 'Sai cho', 'cho', 'asdsads', '2154', 'ssas@gmail.com', '2154873256', 'avatar-7.png', 'dsfdsf', 'Accounting Services', 'Public Limited Company', 'Yes', 'Cheque', 44),
(17, 'sadsa', 'sads', 'sdsa', 'Black', '15424', 'sadsa@gmail.com', '7854213265', 'avatar-5.png', '', '', '', '', '', 45),
(20, 'sdf', 'sdf', 'sddf', 'Algeria', '215487', 'sdf@gmail.com', '1254872365', 'avatar-8.png', 'fghgf', 'Consultants, doctors, Lawyers and similar', 'Public Limited Company', 'Yes', 'Credit card/Debit card', 52),
(21, 'sad', 'sads', 'sadsa', 'Algeria', '125487', 'sad@gmail.com', '2145872652', 'avatar-12.png', '', '', '', '', '', 53),
(22, 'sadsad', 'sasad', 'sad', 'Afghanistansadsad', '0215487', 'sadsad@gmail.com', '1254878965', 'avatar-11.png', 'Legal Business Name', 'Information Tecnology', 'Joint-Venture Company', 'Yes', 'Cheque', 54);

-- --------------------------------------------------------

--
-- Table structure for table `app1_credit`
--

CREATE TABLE `app1_credit` (
  `creditnoteid` int(11) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `biladdr` varchar(100) NOT NULL,
  `creditdate` varchar(100) NOT NULL,
  `creditno` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `invnum` varchar(100) NOT NULL,
  `invperiod` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `descrip` varchar(100) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `subtot` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `grndtot` int(11) DEFAULT NULL,
  `taxamnt` int(11) DEFAULT NULL,
  `product1` varchar(100) NOT NULL,
  `descrip1` varchar(100) NOT NULL,
  `qty1` int(11) DEFAULT NULL,
  `price1` varchar(100) NOT NULL,
  `tax1` varchar(100) NOT NULL,
  `total1` int(11) DEFAULT NULL,
  `product2` varchar(100) NOT NULL,
  `descrip2` varchar(100) NOT NULL,
  `qty2` int(11) DEFAULT NULL,
  `price2` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `total2` int(11) DEFAULT NULL,
  `product3` varchar(100) NOT NULL,
  `descrip3` varchar(100) NOT NULL,
  `qty3` int(11) DEFAULT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` int(11) DEFAULT NULL,
  `tax3` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_customer`
--

CREATE TABLE `app1_customer` (
  `customerid` int(11) NOT NULL,
  `title` varchar(10) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `gsttype` varchar(100) DEFAULT NULL,
  `gstin` varchar(100) NOT NULL,
  `panno` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `shipstreet` varchar(100) DEFAULT NULL,
  `shipcity` varchar(100) DEFAULT NULL,
  `shipstate` varchar(100) DEFAULT NULL,
  `shippincode` varchar(100) DEFAULT NULL,
  `shipcountry` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_customize`
--

CREATE TABLE `app1_customize` (
  `customizeid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `pcolour` varchar(255) NOT NULL,
  `scolour` varchar(255) NOT NULL,
  `fonts` varchar(255) NOT NULL,
  `lastedited` varchar(255) NOT NULL,
  `selected` varchar(255) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_delayedcharge`
--

CREATE TABLE `app1_delayedcharge` (
  `delayedchargeid` int(11) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `delayedchargedate` varchar(100) NOT NULL,
  `delayedchargeno` varchar(100) NOT NULL,
  `prodorser` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `prodorser1` varchar(100) NOT NULL,
  `description1` varchar(100) NOT NULL,
  `qty1` varchar(100) NOT NULL,
  `rate1` varchar(100) NOT NULL,
  `total1` varchar(100) NOT NULL,
  `tax1` varchar(100) NOT NULL,
  `prodorser2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `rate2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `prodorser3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `rate3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_employee`
--

CREATE TABLE `app1_employee` (
  `employeeid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `joiningdate` varchar(100) NOT NULL,
  `employeenumber` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `gmail` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `providebankdetails` varchar(20) NOT NULL,
  `bankaccountnumber` varchar(100) NOT NULL,
  `ifsccode` varchar(100) NOT NULL,
  `hrareceived` varchar(20) NOT NULL,
  `totalrentpaid` varchar(100) NOT NULL,
  `livein` varchar(100) NOT NULL,
  `applicabletaxregime` varchar(100) NOT NULL,
  `pannumber` varchar(100) NOT NULL,
  `aadhaarnumber` varchar(100) NOT NULL,
  `universalaccountnumber` varchar(100) NOT NULL,
  `pfaccountnumber` varchar(100) NOT NULL,
  `epsaccountnumber` varchar(100) NOT NULL,
  `praccountnumber` varchar(100) NOT NULL,
  `esinumber` varchar(100) NOT NULL,
  `esidispensaryname` varchar(100) NOT NULL,
  `basic` varchar(100) NOT NULL,
  `da` varchar(100) NOT NULL,
  `othincome1` varchar(100) NOT NULL,
  `othincome2` varchar(100) NOT NULL,
  `othincome3` varchar(100) NOT NULL,
  `othincome4` varchar(100) NOT NULL,
  `othincome5` varchar(100) NOT NULL,
  `othamount1` varchar(100) NOT NULL,
  `othamount2` varchar(100) NOT NULL,
  `othamount3` varchar(100) NOT NULL,
  `othamount4` varchar(100) NOT NULL,
  `othamount5` varchar(100) NOT NULL,
  `provifund` varchar(100) NOT NULL,
  `proftax` varchar(100) NOT NULL,
  `esi` varchar(100) NOT NULL,
  `deduc1` varchar(100) NOT NULL,
  `deduc2` varchar(100) NOT NULL,
  `deduc3` varchar(100) NOT NULL,
  `deduc4` varchar(100) NOT NULL,
  `deducamt1` varchar(100) NOT NULL,
  `deducamt2` varchar(100) NOT NULL,
  `deducamt3` varchar(100) NOT NULL,
  `deducamt4` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_estimate`
--

CREATE TABLE `app1_estimate` (
  `estimateid` int(11) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `billingaddress` varchar(100) NOT NULL,
  `estimatedate` varchar(100) NOT NULL,
  `expirationdate` varchar(100) NOT NULL,
  `estimateno` varchar(100) NOT NULL,
  `placeofsupply` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `estimatetotal` varchar(100) NOT NULL,
  `product1` varchar(100) NOT NULL,
  `hsn1` varchar(100) NOT NULL,
  `description1` varchar(100) NOT NULL,
  `qty1` varchar(100) NOT NULL,
  `rate1` varchar(100) NOT NULL,
  `total1` varchar(100) NOT NULL,
  `tax1` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `rate2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `rate3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_expences`
--

CREATE TABLE `app1_expences` (
  `expencesid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `paymdate` varchar(100) NOT NULL,
  `paymmethod` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `totamt` varchar(100) NOT NULL,
  `category1` varchar(100) NOT NULL,
  `descrptin1` varchar(100) NOT NULL,
  `catqty1` varchar(100) NOT NULL,
  `catprice1` varchar(100) NOT NULL,
  `cattotal1` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `category3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `category4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_expences`
--

INSERT INTO `app1_expences` (`expencesid`, `payee`, `paymdate`, `paymmethod`, `refno`, `totamt`, `category1`, `descrptin1`, `catqty1`, `catprice1`, `cattotal1`, `category2`, `descrptin2`, `catqty2`, `catprice2`, `cattotal2`, `category3`, `descrptin3`, `catqty3`, `catprice3`, `cattotal3`, `category4`, `descrptin4`, `catqty4`, `catprice4`, `cattotal4`, `product`, `hsn`, `description`, `qty`, `price`, `total`, `product2`, `hsn2`, `description2`, `qty2`, `price2`, `total2`, `product3`, `hsn3`, `description3`, `qty3`, `price3`, `total3`, `product4`, `hsn4`, `description4`, `qty4`, `price4`, `total4`, `subtotal`, `tax`, `tax2`, `tax3`, `tax4`, `taxamount`, `grandtotal`, `cid_id`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '40000', 6),
(2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '15000', 6);

-- --------------------------------------------------------

--
-- Table structure for table `app1_expenseaccount`
--

CREATE TABLE `app1_expenseaccount` (
  `expenseid` int(11) NOT NULL,
  `account` varchar(100) NOT NULL,
  `begbal` varchar(100) NOT NULL,
  `endbal` varchar(100) NOT NULL,
  `enddate` varchar(100) DEFAULT NULL,
  `dat` varchar(100) DEFAULT NULL,
  `serchar` varchar(100) NOT NULL,
  `expacc` varchar(100) DEFAULT NULL,
  `type1` varchar(100) DEFAULT NULL,
  `memo1` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `expaccountypid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_incomeaccount`
--

CREATE TABLE `app1_incomeaccount` (
  `incomeid` int(11) NOT NULL,
  `dat1` varchar(100) DEFAULT NULL,
  `intear` varchar(100) NOT NULL,
  `incacc` varchar(100) DEFAULT NULL,
  `type2` varchar(100) DEFAULT NULL,
  `memo2` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `expenceincomeid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_inventory`
--

CREATE TABLE `app1_inventory` (
  `inventoryid` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `initialqty` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `stockalrt` varchar(100) NOT NULL,
  `invacnt` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `salesprice` varchar(10) NOT NULL,
  `incomeacnt` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `purchaseinfo` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `expacnt` varchar(100) NOT NULL,
  `purtax` varchar(100) NOT NULL,
  `revcharge` varchar(100) NOT NULL,
  `presupplier` varchar(100) NOT NULL,
  `cxq` double DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_invoice`
--

CREATE TABLE `app1_invoice` (
  `invoiceid` int(11) NOT NULL,
  `customername` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `invoiceno` int(11) NOT NULL,
  `terms` varchar(100) NOT NULL,
  `invoicedate` varchar(100) NOT NULL,
  `duedate` varchar(100) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `placosupply` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `tax` varchar(100) NOT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `grandtotal` int(11) DEFAULT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` int(11) DEFAULT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` int(11) DEFAULT NULL,
  `tax2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` int(11) DEFAULT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` int(11) DEFAULT NULL,
  `tax3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` int(11) DEFAULT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` int(11) DEFAULT NULL,
  `tax4` varchar(100) NOT NULL,
  `amtrecvd` int(11) DEFAULT NULL,
  `taxamount` int(11) DEFAULT NULL,
  `baldue` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_invoice`
--

INSERT INTO `app1_invoice` (`invoiceid`, `customername`, `email`, `invoiceno`, `terms`, `invoicedate`, `duedate`, `bname`, `placosupply`, `product`, `hsn`, `description`, `qty`, `price`, `total`, `tax`, `subtotal`, `grandtotal`, `product2`, `hsn2`, `description2`, `qty2`, `price2`, `total2`, `tax2`, `product3`, `hsn3`, `description3`, `qty3`, `price3`, `total3`, `tax3`, `product4`, `hsn4`, `description4`, `qty4`, `price4`, `total4`, `tax4`, `amtrecvd`, `taxamount`, `baldue`, `cid_id`) VALUES
(1, 'dsfdf', '', 0, '', '2022-08-07', '', '', '', '', '', '', NULL, '', NULL, '', NULL, 100, '', '', '', NULL, '', NULL, '', '', '', '', NULL, '', NULL, '', '', '', '', NULL, '', NULL, '', NULL, NULL, '', 6),
(2, 'fdgfdg', '', 0, '', '2022-08-08', '', '', '', '', '', '', NULL, '', NULL, '', NULL, 500, '', '', '', NULL, '', NULL, '', '', '', '', NULL, '', NULL, '', '', '', '', NULL, '', NULL, '', NULL, NULL, '', 6),
(3, 'dsfdsf', '', 0, '', '2022-08-09', '', '', '', '', '', '', NULL, '', NULL, '', NULL, 200, '', '', '', NULL, '', NULL, '', '', '', '', NULL, '', NULL, '', '', '', '', NULL, '', NULL, '', NULL, NULL, '', 6);

-- --------------------------------------------------------

--
-- Table structure for table `app1_noninventory`
--

CREATE TABLE `app1_noninventory` (
  `noninventoryid` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sku` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `descr` varchar(100) NOT NULL,
  `saleprice` varchar(100) NOT NULL,
  `income` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `purchasedescr` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `expenseaccount` varchar(100) NOT NULL,
  `purchasetax` varchar(100) NOT NULL,
  `revcharge` varchar(100) NOT NULL,
  `presupplier` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_paydowncreditcard`
--

CREATE TABLE `app1_paydowncreditcard` (
  `paycreditcardid` int(11) NOT NULL,
  `ccno` varchar(100) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `dateofpayment` varchar(100) NOT NULL,
  `discription` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_payment`
--

CREATE TABLE `app1_payment` (
  `paymentid` int(11) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `findinvoice` varchar(100) DEFAULT NULL,
  `paymdate` varchar(100) NOT NULL,
  `pmethod` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `depto` varchar(100) NOT NULL,
  `amtreceived` varchar(100) NOT NULL,
  `descrip` varchar(100) NOT NULL,
  `duedate` varchar(10) NOT NULL,
  `orgamt` varchar(100) NOT NULL,
  `openbal` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `amtapply` varchar(100) NOT NULL,
  `amtcredit` varchar(100) NOT NULL,
  `descrip1` varchar(100) NOT NULL,
  `duedate1` varchar(10) NOT NULL,
  `orgamt1` varchar(100) NOT NULL,
  `openbal1` varchar(100) NOT NULL,
  `payment1` varchar(100) NOT NULL,
  `descrip2` varchar(100) NOT NULL,
  `duedate2` varchar(10) NOT NULL,
  `orgamt2` varchar(100) NOT NULL,
  `openbal2` varchar(100) NOT NULL,
  `payment2` varchar(100) NOT NULL,
  `descrip3` varchar(100) NOT NULL,
  `duedate3` varchar(10) NOT NULL,
  `orgamt3` varchar(100) NOT NULL,
  `openbal3` varchar(100) NOT NULL,
  `payment3` varchar(100) NOT NULL,
  `descrip4` varchar(100) NOT NULL,
  `duedate4` varchar(10) NOT NULL,
  `orgamt4` varchar(100) NOT NULL,
  `openbal4` varchar(100) NOT NULL,
  `payment4` varchar(100) NOT NULL,
  `descrip5` varchar(100) NOT NULL,
  `duedate5` varchar(10) NOT NULL,
  `orgamt5` varchar(100) NOT NULL,
  `openbal5` varchar(100) NOT NULL,
  `payment5` varchar(100) NOT NULL,
  `descrip6` varchar(100) NOT NULL,
  `duedate6` varchar(10) NOT NULL,
  `orgamt6` varchar(100) NOT NULL,
  `openbal6` varchar(100) NOT NULL,
  `payment6` varchar(100) NOT NULL,
  `descrip7` varchar(100) NOT NULL,
  `duedate7` varchar(10) NOT NULL,
  `orgamt7` varchar(100) NOT NULL,
  `openbal7` varchar(100) NOT NULL,
  `payment7` varchar(100) NOT NULL,
  `descrip8` varchar(100) NOT NULL,
  `duedate8` varchar(10) NOT NULL,
  `orgamt8` varchar(100) NOT NULL,
  `openbal8` varchar(100) NOT NULL,
  `payment8` varchar(100) NOT NULL,
  `descrip9` varchar(100) NOT NULL,
  `duedate9` varchar(10) NOT NULL,
  `orgamt9` varchar(100) NOT NULL,
  `openbal9` varchar(100) NOT NULL,
  `payment9` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_payslip`
--

CREATE TABLE `app1_payslip` (
  `payslipid` int(11) NOT NULL,
  `empname` varchar(100) NOT NULL,
  `employeenumber` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `fper` varchar(100) NOT NULL,
  `tper` varchar(100) NOT NULL,
  `paydate` varchar(100) NOT NULL,
  `basic` varchar(100) NOT NULL,
  `da` varchar(100) NOT NULL,
  `ear1` varchar(100) NOT NULL,
  `earr1` varchar(100) NOT NULL,
  `ear2` varchar(100) NOT NULL,
  `earr2` varchar(100) NOT NULL,
  `ear3` varchar(100) NOT NULL,
  `earr3` varchar(100) NOT NULL,
  `ear4` varchar(100) NOT NULL,
  `earr4` varchar(100) NOT NULL,
  `ear5` varchar(100) NOT NULL,
  `earr5` varchar(100) NOT NULL,
  `ear6` varchar(100) NOT NULL,
  `earr6` varchar(100) NOT NULL,
  `ear7` varchar(100) NOT NULL,
  `earr7` varchar(100) NOT NULL,
  `provi` varchar(100) NOT NULL,
  `prof` varchar(100) NOT NULL,
  `esi` varchar(100) NOT NULL,
  `ded1` varchar(100) NOT NULL,
  `dedu1` varchar(100) NOT NULL,
  `ded2` varchar(100) NOT NULL,
  `dedu2` varchar(100) NOT NULL,
  `ded3` varchar(100) NOT NULL,
  `dedu3` varchar(100) NOT NULL,
  `ded4` varchar(100) NOT NULL,
  `dedu4` varchar(100) NOT NULL,
  `ded5` varchar(100) NOT NULL,
  `dedu5` varchar(100) NOT NULL,
  `ded6` varchar(100) NOT NULL,
  `dedu6` varchar(100) NOT NULL,
  `gros` varchar(100) NOT NULL,
  `tded` varchar(100) NOT NULL,
  `netsal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_production`
--

CREATE TABLE `app1_production` (
  `id` bigint(20) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `hsn` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `manufacturing_date` varchar(255) NOT NULL,
  `expiry_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_recon1`
--

CREATE TABLE `app1_recon1` (
  `recon1id` int(11) NOT NULL,
  `accounttype` varchar(100) NOT NULL,
  `beginningbalance` varchar(100) NOT NULL,
  `endingbalance` varchar(100) NOT NULL,
  `endingdate` varchar(100) NOT NULL,
  `edat` varchar(100) DEFAULT NULL,
  `serchar` varchar(100) NOT NULL,
  `expacc` varchar(100) NOT NULL,
  `idat1` varchar(100) DEFAULT NULL,
  `intear` varchar(100) NOT NULL,
  `incacc` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_recordpay`
--

CREATE TABLE `app1_recordpay` (
  `recordpayid` int(11) NOT NULL,
  `textname` varchar(100) NOT NULL,
  `paymentdate` varchar(100) NOT NULL,
  `recordamount` varchar(100) NOT NULL,
  `recordmemo` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_salesrecpts`
--

CREATE TABLE `app1_salesrecpts` (
  `salesrecptsid` int(11) NOT NULL,
  `salename` varchar(100) NOT NULL,
  `saleemail` varchar(254) NOT NULL,
  `saleaddress` varchar(150) NOT NULL,
  `saledate` varchar(10) NOT NULL,
  `saleno` varchar(20) NOT NULL,
  `salesplace` varchar(100) NOT NULL,
  `salepay` varchar(10) NOT NULL,
  `salerefno` varchar(10) NOT NULL,
  `saledeposit` varchar(150) NOT NULL,
  `salepro` varchar(100) NOT NULL,
  `salehsn` varchar(100) NOT NULL,
  `saledescription` varchar(100) NOT NULL,
  `saleqty` varchar(100) NOT NULL,
  `saleprice` varchar(100) NOT NULL,
  `saaletotal` varchar(100) NOT NULL,
  `salesubtotal` varchar(100) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `saletaxamount` varchar(100) NOT NULL,
  `salegrandtotal` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `categoryhsn2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `tax1` int(11) DEFAULT NULL,
  `category3` varchar(100) NOT NULL,
  `categoryhsn3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `tax2` int(11) DEFAULT NULL,
  `category4` varchar(100) NOT NULL,
  `categoryhsn4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `tax3` int(11) DEFAULT NULL,
  `offline` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_service`
--

CREATE TABLE `app1_service` (
  `serviceid` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `sac` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `categ` varchar(100) NOT NULL,
  `descr` varchar(100) NOT NULL,
  `saleprice` varchar(100) NOT NULL,
  `income` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `abatement` varchar(100) NOT NULL,
  `sertype` varchar(100) NOT NULL,
  `purchasedescr` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `expenseaccount` varchar(100) NOT NULL,
  `purchasetax` varchar(100) NOT NULL,
  `revcharge` varchar(100) NOT NULL,
  `presupplier` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_sign`
--

CREATE TABLE `app1_sign` (
  `sid` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `conformpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_suplrcredit`
--

CREATE TABLE `app1_suplrcredit` (
  `suppliercreditid` int(11) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `mailaddr` varchar(100) NOT NULL,
  `paymdate` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `ccatego` varchar(100) NOT NULL,
  `cdescrip` varchar(100) NOT NULL,
  `cqty` varchar(100) NOT NULL,
  `cprice` varchar(100) NOT NULL,
  `ctotal` varchar(100) NOT NULL,
  `ccatego2` varchar(100) NOT NULL,
  `cdescrip2` varchar(100) NOT NULL,
  `cqty2` varchar(100) NOT NULL,
  `cprice2` varchar(100) NOT NULL,
  `ctotal2` varchar(100) NOT NULL,
  `ccatego3` varchar(100) NOT NULL,
  `cdescrip3` varchar(100) NOT NULL,
  `cqty3` varchar(100) NOT NULL,
  `cprice3` varchar(100) NOT NULL,
  `ctotal3` varchar(100) NOT NULL,
  `ccatego4` varchar(100) NOT NULL,
  `cdescrip4` varchar(100) NOT NULL,
  `cqty4` varchar(100) NOT NULL,
  `cprice4` varchar(100) NOT NULL,
  `ctotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `creditamount` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_supplier`
--

CREATE TABLE `app1_supplier` (
  `supplierid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `billingrate` varchar(100) NOT NULL,
  `terms` varchar(100) NOT NULL,
  `addterms` varchar(100) NOT NULL,
  `openingbalance` varchar(100) NOT NULL,
  `accountno` varchar(100) NOT NULL,
  `gsttype` varchar(100) NOT NULL,
  `gstin` varchar(100) NOT NULL,
  `taxregistrationno` varchar(100) NOT NULL,
  `effectivedate` varchar(100) NOT NULL,
  `defaultexpenceaccount` varchar(100) NOT NULL,
  `tds` varchar(200) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_timeact`
--

CREATE TABLE `app1_timeact` (
  `timeactid` int(11) NOT NULL,
  `timdate` varchar(10) NOT NULL,
  `timename` varchar(20) NOT NULL,
  `timecust` varchar(20) NOT NULL,
  `timecheck` varchar(10) NOT NULL,
  `timebill` varchar(20) NOT NULL,
  `timecheckk` varchar(10) NOT NULL,
  `timestart` varchar(6) NOT NULL,
  `timeend` varchar(6) NOT NULL,
  `tyme` varchar(6) NOT NULL,
  `timedes` varchar(50) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_timeactsale`
--

CREATE TABLE `app1_timeactsale` (
  `timeactsaleid` int(11) NOT NULL,
  `timdatesale` varchar(10) NOT NULL,
  `timenamesale` varchar(20) NOT NULL,
  `timecustsale` varchar(20) NOT NULL,
  `timechecksale` varchar(10) NOT NULL,
  `timebillsale` varchar(20) NOT NULL,
  `timecheckksale` varchar(10) NOT NULL,
  `timestartsale` varchar(6) NOT NULL,
  `timeendsale` varchar(6) NOT NULL,
  `tymesale` varchar(6) NOT NULL,
  `timedessale` varchar(50) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add accountype', 7, 'add_accountype'),
(26, 'Can change accountype', 7, 'change_accountype'),
(27, 'Can delete accountype', 7, 'delete_accountype'),
(28, 'Can view accountype', 7, 'view_accountype'),
(29, 'Can add addac', 8, 'add_addac'),
(30, 'Can change addac', 8, 'change_addac'),
(31, 'Can delete addac', 8, 'delete_addac'),
(32, 'Can view addac', 8, 'view_addac'),
(33, 'Can add company', 9, 'add_company'),
(34, 'Can change company', 9, 'change_company'),
(35, 'Can delete company', 9, 'delete_company'),
(36, 'Can view company', 9, 'view_company'),
(37, 'Can add expenseaccount', 10, 'add_expenseaccount'),
(38, 'Can change expenseaccount', 10, 'change_expenseaccount'),
(39, 'Can delete expenseaccount', 10, 'delete_expenseaccount'),
(40, 'Can view expenseaccount', 10, 'view_expenseaccount'),
(41, 'Can add item model', 11, 'add_itemmodel'),
(42, 'Can change item model', 11, 'change_itemmodel'),
(43, 'Can delete item model', 11, 'delete_itemmodel'),
(44, 'Can view item model', 11, 'view_itemmodel'),
(45, 'Can add product model', 12, 'add_productmodel'),
(46, 'Can change product model', 12, 'change_productmodel'),
(47, 'Can delete product model', 12, 'delete_productmodel'),
(48, 'Can view product model', 12, 'view_productmodel'),
(49, 'Can add sign', 13, 'add_sign'),
(50, 'Can change sign', 13, 'change_sign'),
(51, 'Can delete sign', 13, 'delete_sign'),
(52, 'Can view sign', 13, 'view_sign'),
(53, 'Can add timeactsale', 14, 'add_timeactsale'),
(54, 'Can change timeactsale', 14, 'change_timeactsale'),
(55, 'Can delete timeactsale', 14, 'delete_timeactsale'),
(56, 'Can view timeactsale', 14, 'view_timeactsale'),
(57, 'Can add timeact', 15, 'add_timeact'),
(58, 'Can change timeact', 15, 'change_timeact'),
(59, 'Can delete timeact', 15, 'delete_timeact'),
(60, 'Can view timeact', 15, 'view_timeact'),
(61, 'Can add supplier', 16, 'add_supplier'),
(62, 'Can change supplier', 16, 'change_supplier'),
(63, 'Can delete supplier', 16, 'delete_supplier'),
(64, 'Can view supplier', 16, 'view_supplier'),
(65, 'Can add suplrcredit', 17, 'add_suplrcredit'),
(66, 'Can change suplrcredit', 17, 'change_suplrcredit'),
(67, 'Can delete suplrcredit', 17, 'delete_suplrcredit'),
(68, 'Can view suplrcredit', 17, 'view_suplrcredit'),
(69, 'Can add service', 18, 'add_service'),
(70, 'Can change service', 18, 'change_service'),
(71, 'Can delete service', 18, 'delete_service'),
(72, 'Can view service', 18, 'view_service'),
(73, 'Can add salesrecpts', 19, 'add_salesrecpts'),
(74, 'Can change salesrecpts', 19, 'change_salesrecpts'),
(75, 'Can delete salesrecpts', 19, 'delete_salesrecpts'),
(76, 'Can view salesrecpts', 19, 'view_salesrecpts'),
(77, 'Can add recordpay', 20, 'add_recordpay'),
(78, 'Can change recordpay', 20, 'change_recordpay'),
(79, 'Can delete recordpay', 20, 'delete_recordpay'),
(80, 'Can view recordpay', 20, 'view_recordpay'),
(81, 'Can add recon1', 21, 'add_recon1'),
(82, 'Can change recon1', 21, 'change_recon1'),
(83, 'Can delete recon1', 21, 'delete_recon1'),
(84, 'Can view recon1', 21, 'view_recon1'),
(85, 'Can add payslip', 22, 'add_payslip'),
(86, 'Can change payslip', 22, 'change_payslip'),
(87, 'Can delete payslip', 22, 'delete_payslip'),
(88, 'Can view payslip', 22, 'view_payslip'),
(89, 'Can add payment', 23, 'add_payment'),
(90, 'Can change payment', 23, 'change_payment'),
(91, 'Can delete payment', 23, 'delete_payment'),
(92, 'Can view payment', 23, 'view_payment'),
(93, 'Can add paydowncreditcard', 24, 'add_paydowncreditcard'),
(94, 'Can change paydowncreditcard', 24, 'change_paydowncreditcard'),
(95, 'Can delete paydowncreditcard', 24, 'delete_paydowncreditcard'),
(96, 'Can view paydowncreditcard', 24, 'view_paydowncreditcard'),
(97, 'Can add noninventory', 25, 'add_noninventory'),
(98, 'Can change noninventory', 25, 'change_noninventory'),
(99, 'Can delete noninventory', 25, 'delete_noninventory'),
(100, 'Can view noninventory', 25, 'view_noninventory'),
(101, 'Can add invoice', 26, 'add_invoice'),
(102, 'Can change invoice', 26, 'change_invoice'),
(103, 'Can delete invoice', 26, 'delete_invoice'),
(104, 'Can view invoice', 26, 'view_invoice'),
(105, 'Can add inventory', 27, 'add_inventory'),
(106, 'Can change inventory', 27, 'change_inventory'),
(107, 'Can delete inventory', 27, 'delete_inventory'),
(108, 'Can view inventory', 27, 'view_inventory'),
(109, 'Can add incomeaccount', 28, 'add_incomeaccount'),
(110, 'Can change incomeaccount', 28, 'change_incomeaccount'),
(111, 'Can delete incomeaccount', 28, 'delete_incomeaccount'),
(112, 'Can view incomeaccount', 28, 'view_incomeaccount'),
(113, 'Can add expences', 29, 'add_expences'),
(114, 'Can change expences', 29, 'change_expences'),
(115, 'Can delete expences', 29, 'delete_expences'),
(116, 'Can view expences', 29, 'view_expences'),
(117, 'Can add estimate', 30, 'add_estimate'),
(118, 'Can change estimate', 30, 'change_estimate'),
(119, 'Can delete estimate', 30, 'delete_estimate'),
(120, 'Can view estimate', 30, 'view_estimate'),
(121, 'Can add employee', 31, 'add_employee'),
(122, 'Can change employee', 31, 'change_employee'),
(123, 'Can delete employee', 31, 'delete_employee'),
(124, 'Can view employee', 31, 'view_employee'),
(125, 'Can add delayedcharge', 32, 'add_delayedcharge'),
(126, 'Can change delayedcharge', 32, 'change_delayedcharge'),
(127, 'Can delete delayedcharge', 32, 'delete_delayedcharge'),
(128, 'Can view delayedcharge', 32, 'view_delayedcharge'),
(129, 'Can add customize', 33, 'add_customize'),
(130, 'Can change customize', 33, 'change_customize'),
(131, 'Can delete customize', 33, 'delete_customize'),
(132, 'Can view customize', 33, 'view_customize'),
(133, 'Can add customer', 34, 'add_customer'),
(134, 'Can change customer', 34, 'change_customer'),
(135, 'Can delete customer', 34, 'delete_customer'),
(136, 'Can view customer', 34, 'view_customer'),
(137, 'Can add credit', 35, 'add_credit'),
(138, 'Can change credit', 35, 'change_credit'),
(139, 'Can delete credit', 35, 'delete_credit'),
(140, 'Can view credit', 35, 'view_credit'),
(141, 'Can add cheqs', 36, 'add_cheqs'),
(142, 'Can change cheqs', 36, 'change_cheqs'),
(143, 'Can delete cheqs', 36, 'delete_cheqs'),
(144, 'Can view cheqs', 36, 'view_cheqs'),
(145, 'Can add bundle', 37, 'add_bundle'),
(146, 'Can change bundle', 37, 'change_bundle'),
(147, 'Can delete bundle', 37, 'delete_bundle'),
(148, 'Can view bundle', 37, 'view_bundle'),
(149, 'Can add bills', 38, 'add_bills'),
(150, 'Can change bills', 38, 'change_bills'),
(151, 'Can delete bills', 38, 'delete_bills'),
(152, 'Can view bills', 38, 'view_bills'),
(153, 'Can add bankstatement', 39, 'add_bankstatement'),
(154, 'Can change bankstatement', 39, 'change_bankstatement'),
(155, 'Can delete bankstatement', 39, 'delete_bankstatement'),
(156, 'Can view bankstatement', 39, 'view_bankstatement'),
(157, 'Can add advancepayment', 40, 'add_advancepayment'),
(158, 'Can change advancepayment', 40, 'change_advancepayment'),
(159, 'Can delete advancepayment', 40, 'delete_advancepayment'),
(160, 'Can view advancepayment', 40, 'view_advancepayment'),
(161, 'Can add addtax1', 41, 'add_addtax1'),
(162, 'Can change addtax1', 41, 'change_addtax1'),
(163, 'Can delete addtax1', 41, 'delete_addtax1'),
(164, 'Can view addtax1', 41, 'view_addtax1'),
(165, 'Can add accounts1', 42, 'add_accounts1'),
(166, 'Can change accounts1', 42, 'change_accounts1'),
(167, 'Can delete accounts1', 42, 'delete_accounts1'),
(168, 'Can view accounts1', 42, 'view_accounts1'),
(169, 'Can add accounts', 43, 'add_accounts'),
(170, 'Can change accounts', 43, 'change_accounts'),
(171, 'Can delete accounts', 43, 'delete_accounts'),
(172, 'Can view accounts', 43, 'view_accounts'),
(173, 'Can add production', 44, 'add_production'),
(174, 'Can change production', 44, 'change_production'),
(175, 'Can delete production', 44, 'delete_production'),
(176, 'Can view production', 44, 'view_production');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(26, 'Saiju@147', NULL, 0, 'saiju2000', 'Saiju', 'Sunny', 'saiju@gmail.com', 0, 0, '2022-08-02 17:55:25.793236'),
(38, 'Saijus@123', NULL, 0, 'Saijus2000', 'sinu', 'zxc', 'zxcxz@gmail.com', 0, 0, '2022-08-03 16:26:03.508345'),
(41, 'Ammu@123', NULL, 0, 'ammu', 'Ammuis', 'sag', 'sadsa@gmail.com', 0, 0, '2022-08-04 14:06:58.637537'),
(42, 'ASD@12345', NULL, 0, 'asdassadsa', 'retre', 'retr', 'reter@gmail.com', 0, 0, '2022-08-04 14:20:06.470062'),
(44, 'Saibu@147', NULL, 0, 'saibu20002', 'Saibuss', 'Sunny', 'saibu@gmail.com', 0, 0, '2022-08-04 13:09:37.571853'),
(45, 'Lissy@123', NULL, 0, 'lissy2000', 'Lissy', 'Sunny', 'lissy@gmail.com', 0, 0, '2022-08-08 15:35:02.542016'),
(49, 'Sunny@123', NULL, 0, 'sunny2000', 'Sunny', 'Tc', 'sunny@gmail.Com', 0, 0, '2022-08-08 15:44:12.913222'),
(52, 'Sunny@123', NULL, 0, 'sunny22', 'Sunny', 'Tc', 'sunny@gmail.com', 0, 0, '2022-08-08 15:47:05.076095'),
(53, 'Vincu@123', NULL, 0, 'vincu2000', 'vincy', 'jiby', 'vin@gmail.com', 0, 0, '2022-08-08 15:51:29.537948'),
(54, 'Sdfd@123', NULL, 0, 'sdfd2000', 'sd', 'sdfd', 'sdfd@gmail.com', 0, 0, '2022-08-08 15:53:16.653727');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(43, 'app1', 'accounts'),
(42, 'app1', 'accounts1'),
(7, 'app1', 'accountype'),
(8, 'app1', 'addac'),
(41, 'app1', 'addtax1'),
(40, 'app1', 'advancepayment'),
(39, 'app1', 'bankstatement'),
(38, 'app1', 'bills'),
(37, 'app1', 'bundle'),
(36, 'app1', 'cheqs'),
(9, 'app1', 'company'),
(35, 'app1', 'credit'),
(34, 'app1', 'customer'),
(33, 'app1', 'customize'),
(32, 'app1', 'delayedcharge'),
(31, 'app1', 'employee'),
(30, 'app1', 'estimate'),
(29, 'app1', 'expences'),
(10, 'app1', 'expenseaccount'),
(28, 'app1', 'incomeaccount'),
(27, 'app1', 'inventory'),
(26, 'app1', 'invoice'),
(11, 'app1', 'itemmodel'),
(25, 'app1', 'noninventory'),
(24, 'app1', 'paydowncreditcard'),
(23, 'app1', 'payment'),
(22, 'app1', 'payslip'),
(44, 'app1', 'production'),
(12, 'app1', 'productmodel'),
(21, 'app1', 'recon1'),
(20, 'app1', 'recordpay'),
(19, 'app1', 'salesrecpts'),
(18, 'app1', 'service'),
(13, 'app1', 'sign'),
(17, 'app1', 'suplrcredit'),
(16, 'app1', 'supplier'),
(15, 'app1', 'timeact'),
(14, 'app1', 'timeactsale'),
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
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-08-02 07:53:08.750165'),
(2, 'auth', '0001_initial', '2022-08-02 07:53:22.456555'),
(3, 'admin', '0001_initial', '2022-08-02 07:53:25.243189'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-02 07:53:25.340940'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-02 07:53:25.400907'),
(6, 'app1', '0001_initial', '2022-08-02 07:54:15.722084'),
(7, 'app1', '0002_production', '2022-08-02 07:54:16.271469'),
(8, 'contenttypes', '0002_remove_content_type_name', '2022-08-02 07:54:17.416420'),
(9, 'auth', '0002_alter_permission_name_max_length', '2022-08-02 07:54:18.643758'),
(10, 'auth', '0003_alter_user_email_max_length', '2022-08-02 07:54:18.790300'),
(11, 'auth', '0004_alter_user_username_opts', '2022-08-02 07:54:18.863182'),
(12, 'auth', '0005_alter_user_last_login_null', '2022-08-02 07:54:20.112349'),
(13, 'auth', '0006_require_contenttypes_0002', '2022-08-02 07:54:20.186782'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2022-08-02 07:54:20.254743'),
(15, 'auth', '0008_alter_user_username_max_length', '2022-08-02 07:54:20.440635'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2022-08-02 07:54:20.550572'),
(17, 'auth', '0010_alter_group_name_max_length', '2022-08-02 07:54:20.803123'),
(18, 'auth', '0011_update_proxy_permissions', '2022-08-02 07:54:20.976790'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2022-08-02 07:54:21.111978'),
(20, 'sessions', '0001_initial', '2022-08-02 07:54:21.506066');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itemstable`
--

CREATE TABLE `itemstable` (
  `Itemid` int(11) NOT NULL,
  `Itemname` varchar(100) NOT NULL,
  `Pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `producttable`
--

CREATE TABLE `producttable` (
  `Pid` int(11) NOT NULL,
  `Pname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app1_accounts`
--
ALTER TABLE `app1_accounts`
  ADD PRIMARY KEY (`accountsid`),
  ADD KEY `app1_accounts_cid_id_ca072561_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_accounts_productid_id_ff25de48_fk_producttable_Pid` (`productid_id`),
  ADD KEY `app1_accounts_proid_id_d0d77a6d_fk_app1_accountype_accountypeid` (`proid_id`);

--
-- Indexes for table `app1_accounts1`
--
ALTER TABLE `app1_accounts1`
  ADD PRIMARY KEY (`accounts1id`),
  ADD KEY `app1_accounts1_cid_id_073c043d_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_accountype`
--
ALTER TABLE `app1_accountype`
  ADD PRIMARY KEY (`accountypeid`),
  ADD KEY `app1_accountype_cid_id_b591dd7d_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_addac`
--
ALTER TABLE `app1_addac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app1_addtax1`
--
ALTER TABLE `app1_addtax1`
  ADD PRIMARY KEY (`addtax1id`),
  ADD KEY `app1_addtax1_cid_id_90eebb52_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_advancepayment`
--
ALTER TABLE `app1_advancepayment`
  ADD PRIMARY KEY (`advancepaymentid`),
  ADD KEY `app1_advancepayment_cid_id_796af5b3_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_bankstatement`
--
ALTER TABLE `app1_bankstatement`
  ADD PRIMARY KEY (`bankstatementid`),
  ADD KEY `app1_bankstatement_cid_id_00a3fc3b_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_bills`
--
ALTER TABLE `app1_bills`
  ADD PRIMARY KEY (`billid`),
  ADD KEY `app1_bills_cid_id_d648c3f6_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_bundle`
--
ALTER TABLE `app1_bundle`
  ADD PRIMARY KEY (`bundleid`),
  ADD KEY `app1_bundle_cid_id_82c2ec98_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_cheqs`
--
ALTER TABLE `app1_cheqs`
  ADD PRIMARY KEY (`chequeid`),
  ADD KEY `app1_cheqs_cid_id_ff8a2ca6_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_company`
--
ALTER TABLE `app1_company`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `app1_company_id_id_84084c19_fk_auth_user_id` (`id_id`);

--
-- Indexes for table `app1_credit`
--
ALTER TABLE `app1_credit`
  ADD PRIMARY KEY (`creditnoteid`),
  ADD KEY `app1_credit_cid_id_40b75237_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_customer`
--
ALTER TABLE `app1_customer`
  ADD PRIMARY KEY (`customerid`),
  ADD KEY `app1_customer_cid_id_607bad1d_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_customize`
--
ALTER TABLE `app1_customize`
  ADD PRIMARY KEY (`customizeid`),
  ADD KEY `app1_customize_cid_id_059fe662_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_delayedcharge`
--
ALTER TABLE `app1_delayedcharge`
  ADD PRIMARY KEY (`delayedchargeid`),
  ADD KEY `app1_delayedcharge_cid_id_b9dff420_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_employee`
--
ALTER TABLE `app1_employee`
  ADD PRIMARY KEY (`employeeid`),
  ADD KEY `app1_employee_cid_id_62659cb7_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_estimate`
--
ALTER TABLE `app1_estimate`
  ADD PRIMARY KEY (`estimateid`),
  ADD KEY `app1_estimate_cid_id_983a0fc3_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_expences`
--
ALTER TABLE `app1_expences`
  ADD PRIMARY KEY (`expencesid`),
  ADD KEY `app1_expences_cid_id_2cd98c8f_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_expenseaccount`
--
ALTER TABLE `app1_expenseaccount`
  ADD PRIMARY KEY (`expenseid`),
  ADD KEY `app1_expenseaccount_cid_id_df816740_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_expenseaccount_expaccountypid_id_67312bdf_fk_app1_acco` (`expaccountypid_id`);

--
-- Indexes for table `app1_incomeaccount`
--
ALTER TABLE `app1_incomeaccount`
  ADD PRIMARY KEY (`incomeid`),
  ADD KEY `app1_incomeaccount_cid_id_094b46f8_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_incomeaccount_expenceincomeid_id_f4304840_fk_app1_expe` (`expenceincomeid_id`);

--
-- Indexes for table `app1_inventory`
--
ALTER TABLE `app1_inventory`
  ADD PRIMARY KEY (`inventoryid`),
  ADD KEY `app1_inventory_cid_id_f2e81863_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_invoice`
--
ALTER TABLE `app1_invoice`
  ADD PRIMARY KEY (`invoiceid`),
  ADD KEY `app1_invoice_cid_id_a9c8e9b5_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_noninventory`
--
ALTER TABLE `app1_noninventory`
  ADD PRIMARY KEY (`noninventoryid`),
  ADD KEY `app1_noninventory_cid_id_d0447e15_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_paydowncreditcard`
--
ALTER TABLE `app1_paydowncreditcard`
  ADD PRIMARY KEY (`paycreditcardid`),
  ADD KEY `app1_paydowncreditcard_cid_id_148fd035_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_payment`
--
ALTER TABLE `app1_payment`
  ADD PRIMARY KEY (`paymentid`),
  ADD KEY `app1_payment_cid_id_a954b426_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_payslip`
--
ALTER TABLE `app1_payslip`
  ADD PRIMARY KEY (`payslipid`),
  ADD KEY `app1_payslip_cid_id_3f97b6d6_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_production`
--
ALTER TABLE `app1_production`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app1_recon1`
--
ALTER TABLE `app1_recon1`
  ADD PRIMARY KEY (`recon1id`),
  ADD KEY `app1_recon1_cid_id_958c7d0e_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_recordpay`
--
ALTER TABLE `app1_recordpay`
  ADD PRIMARY KEY (`recordpayid`),
  ADD KEY `app1_recordpay_cid_id_f3d93b71_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_salesrecpts`
--
ALTER TABLE `app1_salesrecpts`
  ADD PRIMARY KEY (`salesrecptsid`),
  ADD KEY `app1_salesrecpts_cid_id_7834f425_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_service`
--
ALTER TABLE `app1_service`
  ADD PRIMARY KEY (`serviceid`),
  ADD KEY `app1_service_cid_id_e19684ee_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_sign`
--
ALTER TABLE `app1_sign`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `app1_suplrcredit`
--
ALTER TABLE `app1_suplrcredit`
  ADD PRIMARY KEY (`suppliercreditid`),
  ADD KEY `app1_suplrcredit_cid_id_943a7180_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_supplier`
--
ALTER TABLE `app1_supplier`
  ADD PRIMARY KEY (`supplierid`),
  ADD KEY `app1_supplier_cid_id_53a00add_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_timeact`
--
ALTER TABLE `app1_timeact`
  ADD PRIMARY KEY (`timeactid`),
  ADD KEY `app1_timeact_cid_id_2709432a_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_timeactsale`
--
ALTER TABLE `app1_timeactsale`
  ADD PRIMARY KEY (`timeactsaleid`),
  ADD KEY `app1_timeactsale_cid_id_0dcbffb2_fk_app1_company_cid` (`cid_id`);

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
-- Indexes for table `itemstable`
--
ALTER TABLE `itemstable`
  ADD PRIMARY KEY (`Itemid`);

--
-- Indexes for table `producttable`
--
ALTER TABLE `producttable`
  ADD PRIMARY KEY (`Pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app1_accounts`
--
ALTER TABLE `app1_accounts`
  MODIFY `accountsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_accounts1`
--
ALTER TABLE `app1_accounts1`
  MODIFY `accounts1id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `app1_accountype`
--
ALTER TABLE `app1_accountype`
  MODIFY `accountypeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_addac`
--
ALTER TABLE `app1_addac`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_addtax1`
--
ALTER TABLE `app1_addtax1`
  MODIFY `addtax1id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_advancepayment`
--
ALTER TABLE `app1_advancepayment`
  MODIFY `advancepaymentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_bankstatement`
--
ALTER TABLE `app1_bankstatement`
  MODIFY `bankstatementid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app1_bills`
--
ALTER TABLE `app1_bills`
  MODIFY `billid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_bundle`
--
ALTER TABLE `app1_bundle`
  MODIFY `bundleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_cheqs`
--
ALTER TABLE `app1_cheqs`
  MODIFY `chequeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_company`
--
ALTER TABLE `app1_company`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `app1_credit`
--
ALTER TABLE `app1_credit`
  MODIFY `creditnoteid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_customer`
--
ALTER TABLE `app1_customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_customize`
--
ALTER TABLE `app1_customize`
  MODIFY `customizeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_delayedcharge`
--
ALTER TABLE `app1_delayedcharge`
  MODIFY `delayedchargeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_employee`
--
ALTER TABLE `app1_employee`
  MODIFY `employeeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_estimate`
--
ALTER TABLE `app1_estimate`
  MODIFY `estimateid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_expences`
--
ALTER TABLE `app1_expences`
  MODIFY `expencesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app1_expenseaccount`
--
ALTER TABLE `app1_expenseaccount`
  MODIFY `expenseid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_incomeaccount`
--
ALTER TABLE `app1_incomeaccount`
  MODIFY `incomeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_inventory`
--
ALTER TABLE `app1_inventory`
  MODIFY `inventoryid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_invoice`
--
ALTER TABLE `app1_invoice`
  MODIFY `invoiceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `app1_noninventory`
--
ALTER TABLE `app1_noninventory`
  MODIFY `noninventoryid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_paydowncreditcard`
--
ALTER TABLE `app1_paydowncreditcard`
  MODIFY `paycreditcardid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_payment`
--
ALTER TABLE `app1_payment`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_payslip`
--
ALTER TABLE `app1_payslip`
  MODIFY `payslipid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_production`
--
ALTER TABLE `app1_production`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_recon1`
--
ALTER TABLE `app1_recon1`
  MODIFY `recon1id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_recordpay`
--
ALTER TABLE `app1_recordpay`
  MODIFY `recordpayid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_salesrecpts`
--
ALTER TABLE `app1_salesrecpts`
  MODIFY `salesrecptsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_service`
--
ALTER TABLE `app1_service`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_sign`
--
ALTER TABLE `app1_sign`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_suplrcredit`
--
ALTER TABLE `app1_suplrcredit`
  MODIFY `suppliercreditid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_supplier`
--
ALTER TABLE `app1_supplier`
  MODIFY `supplierid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_timeact`
--
ALTER TABLE `app1_timeact`
  MODIFY `timeactid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_timeactsale`
--
ALTER TABLE `app1_timeactsale`
  MODIFY `timeactsaleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app1_accounts`
--
ALTER TABLE `app1_accounts`
  ADD CONSTRAINT `app1_accounts_cid_id_ca072561_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_accounts_productid_id_ff25de48_fk_producttable_Pid` FOREIGN KEY (`productid_id`) REFERENCES `producttable` (`Pid`),
  ADD CONSTRAINT `app1_accounts_proid_id_d0d77a6d_fk_app1_accountype_accountypeid` FOREIGN KEY (`proid_id`) REFERENCES `app1_accountype` (`accountypeid`);

--
-- Constraints for table `app1_accounts1`
--
ALTER TABLE `app1_accounts1`
  ADD CONSTRAINT `app1_accounts1_cid_id_073c043d_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_accountype`
--
ALTER TABLE `app1_accountype`
  ADD CONSTRAINT `app1_accountype_cid_id_b591dd7d_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_addtax1`
--
ALTER TABLE `app1_addtax1`
  ADD CONSTRAINT `app1_addtax1_cid_id_90eebb52_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_advancepayment`
--
ALTER TABLE `app1_advancepayment`
  ADD CONSTRAINT `app1_advancepayment_cid_id_796af5b3_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_bankstatement`
--
ALTER TABLE `app1_bankstatement`
  ADD CONSTRAINT `app1_bankstatement_cid_id_00a3fc3b_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_bills`
--
ALTER TABLE `app1_bills`
  ADD CONSTRAINT `app1_bills_cid_id_d648c3f6_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_bundle`
--
ALTER TABLE `app1_bundle`
  ADD CONSTRAINT `app1_bundle_cid_id_82c2ec98_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_cheqs`
--
ALTER TABLE `app1_cheqs`
  ADD CONSTRAINT `app1_cheqs_cid_id_ff8a2ca6_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_company`
--
ALTER TABLE `app1_company`
  ADD CONSTRAINT `app1_company_id_id_84084c19_fk_auth_user_id` FOREIGN KEY (`id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `app1_credit`
--
ALTER TABLE `app1_credit`
  ADD CONSTRAINT `app1_credit_cid_id_40b75237_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_customer`
--
ALTER TABLE `app1_customer`
  ADD CONSTRAINT `app1_customer_cid_id_607bad1d_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_customize`
--
ALTER TABLE `app1_customize`
  ADD CONSTRAINT `app1_customize_cid_id_059fe662_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_delayedcharge`
--
ALTER TABLE `app1_delayedcharge`
  ADD CONSTRAINT `app1_delayedcharge_cid_id_b9dff420_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_employee`
--
ALTER TABLE `app1_employee`
  ADD CONSTRAINT `app1_employee_cid_id_62659cb7_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_estimate`
--
ALTER TABLE `app1_estimate`
  ADD CONSTRAINT `app1_estimate_cid_id_983a0fc3_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_expences`
--
ALTER TABLE `app1_expences`
  ADD CONSTRAINT `app1_expences_cid_id_2cd98c8f_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_expenseaccount`
--
ALTER TABLE `app1_expenseaccount`
  ADD CONSTRAINT `app1_expenseaccount_cid_id_df816740_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_expenseaccount_expaccountypid_id_67312bdf_fk_app1_acco` FOREIGN KEY (`expaccountypid_id`) REFERENCES `app1_accountype` (`accountypeid`);

--
-- Constraints for table `app1_incomeaccount`
--
ALTER TABLE `app1_incomeaccount`
  ADD CONSTRAINT `app1_incomeaccount_cid_id_094b46f8_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_incomeaccount_expenceincomeid_id_f4304840_fk_app1_expe` FOREIGN KEY (`expenceincomeid_id`) REFERENCES `app1_expenseaccount` (`expenseid`);

--
-- Constraints for table `app1_inventory`
--
ALTER TABLE `app1_inventory`
  ADD CONSTRAINT `app1_inventory_cid_id_f2e81863_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_invoice`
--
ALTER TABLE `app1_invoice`
  ADD CONSTRAINT `app1_invoice_cid_id_a9c8e9b5_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_noninventory`
--
ALTER TABLE `app1_noninventory`
  ADD CONSTRAINT `app1_noninventory_cid_id_d0447e15_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_paydowncreditcard`
--
ALTER TABLE `app1_paydowncreditcard`
  ADD CONSTRAINT `app1_paydowncreditcard_cid_id_148fd035_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_payment`
--
ALTER TABLE `app1_payment`
  ADD CONSTRAINT `app1_payment_cid_id_a954b426_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_payslip`
--
ALTER TABLE `app1_payslip`
  ADD CONSTRAINT `app1_payslip_cid_id_3f97b6d6_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_recon1`
--
ALTER TABLE `app1_recon1`
  ADD CONSTRAINT `app1_recon1_cid_id_958c7d0e_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_recordpay`
--
ALTER TABLE `app1_recordpay`
  ADD CONSTRAINT `app1_recordpay_cid_id_f3d93b71_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_salesrecpts`
--
ALTER TABLE `app1_salesrecpts`
  ADD CONSTRAINT `app1_salesrecpts_cid_id_7834f425_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_service`
--
ALTER TABLE `app1_service`
  ADD CONSTRAINT `app1_service_cid_id_e19684ee_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_suplrcredit`
--
ALTER TABLE `app1_suplrcredit`
  ADD CONSTRAINT `app1_suplrcredit_cid_id_943a7180_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_supplier`
--
ALTER TABLE `app1_supplier`
  ADD CONSTRAINT `app1_supplier_cid_id_53a00add_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_timeact`
--
ALTER TABLE `app1_timeact`
  ADD CONSTRAINT `app1_timeact_cid_id_2709432a_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_timeactsale`
--
ALTER TABLE `app1_timeactsale`
  ADD CONSTRAINT `app1_timeactsale_cid_id_0dcbffb2_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
