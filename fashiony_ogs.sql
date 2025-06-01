-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2025 at 10:00 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashiony_ogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Yellow'),
(5, 'Green'),
(6, 'White'),
(7, 'Orange'),
(8, 'Brown'),
(9, 'Tan'),
(10, 'Pink'),
(11, 'Mixed'),
(12, 'Lightblue'),
(13, 'Violet'),
(14, 'Light Purple'),
(15, 'Salmon'),
(16, 'Gold'),
(17, 'Gray'),
(18, 'Ash'),
(19, 'Maroon'),
(20, 'Silver');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(14, 'တနင်္သာရီတိုင်း'),
(13, 'ရန်ကုန်တိုင်း'),
(12, 'ဧရာဝတီတိုင်း'),
(11, 'ပဲခူးတိုင်း'),
(10, 'မကွေးတိုင်း'),
(9, 'စကိုင်းတိုင်း'),
(8, 'မန္တလေးတိုင်း'),
(7, 'ရှမ်းပြည်နယ်'),
(6, 'ရခိုင်ပြည်နယ်'),
(5, 'မွန်ပြည်နယ်'),
(4, 'ချင်းပြည်နယ်'),
(3, 'ကရင်ပြည်နယ်'),
(2, 'ကယားပြည်နယ်'),
(1, 'ကချင်ပြည်နယ်');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(9, 'Yo Yo', '', 'mightyndk.mm@gmail.com', '09600568522', 12, 'သုံးပင်ကွင်း၊ အလယ်လမ်း။', 'ဟင်္သာတမြို့', '', '', 'တုတ်ကြီး', '', '09600568522', 13, 'အမှတ်(၃)၊ သပြေလမ်း၊ မြသီတာရပ်ကွက်', 'ထောက်ကြန့်မြို့', '', '', 'ကိုဖိုးချို', '', '09600568333', 12, 'အမှတ်(၂)၊ တို့ချဲ့၃ ရပ်ကွက်', 'မအူပင်မြို့', '', '', '482c811da5d5b4bc6d497ffa98491e38', '', '2025-06-01 12:56:43', '1748759203', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(5, 'Shipping complete', 'Thank you', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-24 21:50:13<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1516809013<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 3<br>\r\nUnit Price: 20<br>\r\n            \r\n<br><b><u>Product Item 2</u></b><br>\r\nProduct Name: Charismatic Red Cotton T-shirt for Men<br>\r\nSize: <br>\r\nColor: Yellow<br>\r\nQuantity: 2<br>\r\nUnit Price: 10<br>\r\n            ', 1),
(4, 'Very well website man!', 'This is a great oppotunity that you made a website for us. ', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-23 09:12:03<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: 73X439878E771115E<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516677123<br>\r\n            \r\n<b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 2<br>\r\nUnit Price: 20<br>\r\n            \r\n<b><u>Product Item 2</u></b><br>\r\nProduct Name: Pant 1<br>\r\nSize: XS<br>\r\nColor: White<br>\r\nQuantity: 1<br>\r\nUnit Price: 12<br>\r\n            ', 1),
(6, 'sdfsdf', 'sdfsdfsdfsdf', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-25 21:37:50<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Pending<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894670<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(7, 'OK', 'THANK YOU', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Method: Stripe<br>\r\nPayment Date: 2018-01-25 21:36:18<br>\r\nPayment Details: <br>\r\nTransaction Id: ch_1BoCm0BoKopKik6A5H4hB6zs<br>\r\nCard number: 4242424242424242<br>\r\nCard CVV: 444<br>\r\nCard Month: 12<br>\r\nCard Year: 2020<br>\r\n        		<br>\r\nPaid Amount: 20<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894578<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(8, 'Product Shipped', 'Dear Customer,\r\n\r\nYour order has been shipped.\r\n\r\nLet us know when you have any question.\r\n\r\nBest regards,\r\nHammad Hassan', '\r\nCustomer Name: Hammad Hassan<br>\r\nCustomer Email: mc170200216@vu.edu.pk<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2018-04-25 18:28:46<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 1<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1524666526<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Black Wool Beanie & Bobble Hat For Unisex<br>\r\nSize: <br>\r\nColor: Black<br>\r\nQuantity: 1<br>\r\nUnit Price: 1<br>\r\n            ', 5),
(9, 'hello', 'lee pl', '\r\nCustomer Name: Nanda Kyaw<br>\r\nCustomer Email: mightyndk.mm@gmail.com<br>\r\nPayment Method: Bank Deposit<br>\r\nPayment Date: 2025-05-31 11:36:11<br>\r\nPayment Details: <br>\r\nTransaction Details: <br>sd<br>\r\nPaid Amount: 17000<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1748667971<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Black Wool Beanie & Bobble Hat For Unisex<br>\r\nSize: L<br>\r\nColor: Black<br>\r\nQuantity: 3<br>\r\nUnit Price: 5000<br>\r\n            ', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(5, 'Boot ဖိနပ်များ', 2),
(8, 'နာရီများ', 4),
(16, 'Pants များ', 8),
(17, 'ဂျင်းအဝတ်များ', 8),
(19, 'ဘောင်းဘီတိုများ', 8),
(20, 'T-shirt များ', 9),
(21, 'ပေါ့ပေါ့ပါးပါး အင်္ကျီများ', 9),
(22, 'Formal အင်္ကျီများ', 9),
(23, 'Polo Shirt များ', 9),
(25, 'Shoe ဖိနပ်များ', 2),
(26, 'ယောင်္ကျားလေး', 10),
(27, 'မိန်းခလေး', 10),
(28, 'ယောင်္ကျားလေး', 11),
(29, 'မိန်းခလေး', 11),
(30, 'ယောင်္ကျားလေး', 12),
(31, 'မိန်းခလေး', 12),
(32, 'ဂါဝန်များ', 7),
(34, 'T-Shirt အင်္ကျီများ', 7),
(35, 'ဘောင်းဘီများ', 7),
(39, 'ရေမွှေးများ', 3),
(40, 'Skincares', 3),
(44, 'နှုတ်ခမ်းနီများ', 3),
(47, 'ခေါင်းစည်းများ', 4),
(51, 'Sneakers', 6),
(53, 'Boot ဖိနပ်များ', 6),
(59, 'တခြားအသုံးအဆောင်များ', 1),
(60, 'အိပ်များ', 4),
(61, 'ရေမွှေးများ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'Shopnest တွင် ပစ္စည်းတစ်ခုကို ဘယ်လိုရှာမလဲ?', '<p></p><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"></h3><h2></h2><h5><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-family:&quot;Noto Sans Myanmar&quot;,sans-serif\">ကျွန်ုပ်တို့တွင်\r\nရွေးချယ်စရာ ကုန်ပစ္စည်းအမျိုးအစားများစွာရှိပါသည်။<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-family:&quot;Noto Sans Myanmar&quot;,sans-serif\"><br>\r\nအကြံပြုချက် ၁: သင်သည် တိကျသောကုန်ပစ္စည်းတစ်ခုကို ရှာဖွေနေပါက၊ ဝဘ်ဆိုဒ်၏ထိပ်တွင်ရှိသော\r\nkeyword search box ကို အသုံးပြုပါ။ သင်ရှာဖွေလိုသည့်အရာကို ရိုက်ထည့်လိုက်ရုံဖြင့်\r\nအံ့အားသင့်ဖွယ်ရာများကို တွေ့ကြုံခံစားရမည်ဖြစ်ပါသည်။<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-family:&quot;Noto Sans Myanmar&quot;,sans-serif\"><br>\r\nအကြံပြုချက် ၂: သင်သည် ကုန်ပစ္စည်းအမျိုးအစားတစ်ခုကို ကြည့်ရှုလိုပါက၊ အပေါ်မီနူးရှိ\r\nShop Categories ကို အသုံးပြုပြီး သင်အကြိုက်ဆုံးအမျိုးအစားများမှတစ်ဆင့် သွားလာနိုင်ပါသည်။\r\nထိုနေရာတွင် အမျိုးအစားတစ်ခုချင်းစီအတွက် အကောင်းဆုံးကုန်ပစ္စည်းများကို ဖော်ပြပေးထားပါသည်။<o:p></o:p></span></p><p class=\"MsoNormal\">\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-family:&quot;Noto Sans Myanmar&quot;,sans-serif\">&nbsp;</span></p></h5>\r\n<p></p>'),
(2, 'သင်တို့၏ ပစ္စည်းပြန်ပို့ခြင်းဆိုင်ရာ မူဝါဒကဘာလဲ?', '<p class=\"MsoNormal\"><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><br></span></p><p class=\"MsoNormal\"><span style=\"font-family:&quot;Noto Sans Myanmar&quot;,sans-serif\">သင့်မှာယူမှုကို\r\nလက်ခံရရှိပြီးနောက် ၁၅ ရက်အတွင်း ပြန်အမ်းငွေတောင်းခံနိုင်ပါသည်။</span><o:p></o:p></p>\r\n'),
(3, 'ကျွန်ုပ် ချို့ယွင်းချက်ရှိသော/ပျက်စီးနေသော ပစ္စည်းတစ်ခု လက်ခံရရှိပါက၊ ပြန်အမ်းငွေ ရနိုင်ပါသလား?', '<p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-family:&quot;Noto Sans Myanmar&quot;,sans-serif\"><br></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-family:&quot;Noto Sans Myanmar&quot;,sans-serif\">သင်လက်ခံရရှိသောပစ္စည်းသည်\r\nပျက်စီးချို့ယွင်းချက်ရှိပါက၊ သင်လက်ခံရရှိသည့်အတိုင်း မူလပုံးနှင့်/သို့မဟုတ် ထုပ်ပိုးမှုအတိုင်း\r\nပြန်လည်ပေးပို့နိုင်ပါသည်။ ပြန်လည်ပေးပို့သောပစ္စည်းကို ကျွန်ုပ်တို့လက်ခံရရှိသည်နှင့်\r\nစစ်ဆေးမည်ဖြစ်ပြီး ပစ္စည်းသည် ချို့ယွင်းချက်ရှိသည် သို့မဟုတ် ပျက်စီးနေသည်ကိုတွေ့ရှိပါက၊\r\nပို့ဆောင်ခများအပါအဝင် ပြန်အမ်းငွေကို ဆောင်ရွက်ပေးမည်ဖြစ်ပါသည်။<o:p></o:p></span></p>\r\n'),
(4, '‘ပစ္စည်းပြန်ပို့ခြင်း’ များ ဘယ်အချိန်မှာ မဖြစ်နိုင်ဘူးလဲ?', '<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:.75in;mso-add-space:auto;\r\ntext-indent:-.25in;line-height:150%;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family:&quot;Noto Sans Myanmar&quot;,sans-serif\">ပစ္စည်းပြန်ပို့ရန်\r\nတောင်းဆိုမှုသည် ပစ္စည်းလက်ခံရရှိပြီး ၁၅ ရက်ကျော်လွန်သွားသောအခါ။ <o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.75in;mso-add-space:\r\nauto;text-indent:-.25in;line-height:150%;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family:&quot;Noto Sans Myanmar&quot;,sans-serif\">ကုန်ပစ္စည်းသည်\r\nအသုံးပြုပြီးဖြစ်ခြင်း၊ ပျက်စီးနေခြင်း၊ သို့မဟုတ် သင်လက်ခံရရှိသည့်အခြေအနေအတိုင်း\r\nမဟုတ်ခြင်း။ <o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.75in;mso-add-space:\r\nauto;text-indent:-.25in;line-height:150%;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family:&quot;Noto Sans Myanmar&quot;,sans-serif\">အတွင်းခံ၊\r\nအမျိုးသမီးအတွင်းခံ၊ ခြေအိတ်များနှင့် အဝတ်အစားအခမဲ့လက်ဆောင်များကဲ့သို့သော သီးခြားအမျိုးအစားများ။\r\n<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.75in;mso-add-space:\r\nauto;text-indent:-.25in;line-height:150%;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family:&quot;Noto Sans Myanmar&quot;,sans-serif\">ထုတ်လုပ်သူ၏အာမခံအောက်တွင်ရှိသော\r\nချို့ယွင်းချက်ရှိသည့်ကုန်ပစ္စည်းများ။ <o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.75in;mso-add-space:\r\nauto;text-indent:-.25in;line-height:150%;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family:&quot;Noto Sans Myanmar&quot;,sans-serif\">အသုံးပြုပြီးသော\r\nသို့မဟုတ် တပ်ဆင်ပြီးသော စားသုံးကုန်ပစ္စည်းများ။ <o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.75in;mso-add-space:\r\nauto;text-indent:-.25in;line-height:150%;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family:&quot;Noto Sans Myanmar&quot;,sans-serif\">နံပါတ်စဉ်များ\r\nပျက်စီးနေသော သို့မဟုတ် ပျောက်ဆုံးနေသော ကုန်ပစ္စည်းများ။ <o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.75in;mso-add-space:\r\nauto;text-indent:-.25in;line-height:150%;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family:&quot;Noto Sans Myanmar&quot;,sans-serif\">ဈေးနှုန်းတံဆိပ်များ၊\r\nအညွှန်းများ၊ မူလထုပ်ပိုးမှု၊ အခမဲ့လက်ဆောင်များနှင့် ဆက်စပ်ပစ္စည်းများအပါအဝင် သင်လက်ခံရရှိသော\r\nပါကင်မှ တစ်စုံတစ်ရာ ပျောက်ဆုံးနေခြင်း။ <o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent:-.25in;line-height:150%;\r\nmso-list:l0 level1 lfo1\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:.75in;mso-add-space:auto;\r\ntext-indent:-.25in;line-height:150%;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family:&quot;Noto Sans Myanmar&quot;,sans-serif\">ကွဲအက်လွယ်သောပစ္စည်းများ၊\r\nတစ်ကိုယ်ရေသန့်ရှင်းရေးဆိုင်ရာပစ္စည်းများ။</span><o:p></o:p></p>\r\n'),
(5, 'ပြန်ပို့၍မရသော ပစ္စည်းများမှာ ဘယ်ဟာတွေလဲ?', '<p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ပြန်ပို့၍မရသော\r\nပစ္စည်းများမှာ-<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:.75in;text-indent:-.25in;line-height:\r\n150%;mso-list:l0 level1 lfo1;tab-stops:list .5in .75in\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;line-height:150%;font-family:\r\nSymbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">No-Return\r\nPolicy ဟု ရှင်းလင်းစွာ အမှတ်အသားပြုထားသော Clearance ပစ္စည်းများ။<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:.75in;text-indent:-.25in;line-height:\r\n150%;mso-list:l0 level1 lfo1;tab-stops:list .5in .75in\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;line-height:150%;font-family:\r\nSymbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ကမ်းလှမ်းချက်တွင်\r\nပြန်ပို့၍မရဟု အတိအလင်းဖော်ပြထားသော ပစ္စည်းများ။<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:.75in;text-indent:-.25in;line-height:\r\n150%;mso-list:l0 level1 lfo1;tab-stops:list .5in .75in\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;line-height:150%;font-family:\r\nSymbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">အောက်ဖော်ပြပါ\r\nကုန်ပစ္စည်းအမျိုးအစားများတွင် ပါဝင်သောပစ္စည်းများ- <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:1.25in;text-indent:-.25in;line-height:\r\n150%;mso-list:l0 level2 lfo1;tab-stops:list 1.0in 1.25in\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;line-height:150%;font-family:\r\n\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\"\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">အတွင်းခံဘောင်းဘီ<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:1.25in;text-indent:-.25in;line-height:\r\n150%;mso-list:l0 level2 lfo1;tab-stops:list 1.0in 1.25in\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;line-height:150%;font-family:\r\n\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\"\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">အမျိုးသမီးအတွင်းခံ<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:1.25in;text-indent:-.25in;line-height:\r\n150%;mso-list:l0 level2 lfo1;tab-stops:list 1.0in 1.25in\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;line-height:150%;font-family:\r\n\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\"\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ခြေအိတ်များ<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:1.25in;text-indent:-.25in;line-height:\r\n150%;mso-list:l0 level2 lfo1;tab-stops:list 1.0in 1.25in\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;line-height:150%;font-family:\r\n\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\"\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ဆော့ဖ်ဝဲလ်<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:1.25in;text-indent:-.25in;line-height:\r\n150%;mso-list:l0 level2 lfo1;tab-stops:list 1.0in 1.25in\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;line-height:150%;font-family:\r\n\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\"\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">တေးဂီတအယ်လ်ဘမ်များ<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:1.25in;text-indent:-.25in;line-height:\r\n150%;mso-list:l0 level2 lfo1;tab-stops:list 1.0in 1.25in\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;line-height:150%;font-family:\r\n\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\"\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">စာအုပ်များ<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:1.25in;text-indent:-.25in;line-height:\r\n150%;mso-list:l0 level2 lfo1;tab-stops:list 1.0in 1.25in\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;line-height:150%;font-family:\r\n\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\"\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ရေကူးဝတ်စုံ<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:1.25in;text-indent:-.25in;line-height:\r\n150%;mso-list:l0 level2 lfo1;tab-stops:list 1.0in 1.25in\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;line-height:150%;font-family:\r\n\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\"\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">အလှကုန်နှင့် ရေမွှေးများ<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-left:1.25in;text-indent:-.25in;line-height:\r\n150%;mso-list:l0 level2 lfo1;tab-stops:list 1.0in 1.25in\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;line-height:150%;font-family:\r\n\" courier=\"\" new\";mso-fareast-font-family:\"courier=\"\" new\"\"=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ခြေအိတ်အမျိုးမျိုး<o:p></o:p></span></p><p data-sourcepos=\"32:1-32:30\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-left:.75in;text-indent:-.25in;line-height:\r\n150%;mso-list:l0 level1 lfo1;tab-stops:list .75in\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;line-height:150%;font-family:\r\nSymbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ထို့အပြင်၊\r\nအသုံးပြုပြီးသော သို့မဟုတ် တပ်ဆင်ပြီးသော စားသုံးကုန်ပစ္စည်းများကို ပြန်ပို့၍မရပါ။\r\nစားသုံးသူကာကွယ်ရေးအခွင့်အရေးများနှင့် ပြန်ပို့၍မရသောပစ္စည်းများဆိုင်ရာကဏ္ဍတွင် ဖော်ပြထားသည့်အတိုင်းဖြစ်သည်။<o:p></o:p></span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', 'MMK '),
(2, 'Search Product', 'ကုန်ပစ္စည်းရှာရန်'),
(3, 'Search', 'ရှာမည်'),
(4, 'Submit', 'လုပ်ဆောင်မည်'),
(5, 'Update', 'ပြင်ဆင်မည်'),
(6, 'Read More', 'ဆက်ဖတ်ရန်'),
(7, 'Serial', 'စဉ်'),
(8, 'Photo', 'ဓာတ်ပုံ'),
(9, 'Login', 'လော့ဂ်အင်'),
(10, 'Customer Login', 'ဝယ်သူ လော့ဂ်အင်'),
(11, 'Click here to login', 'လော့ဂ်အင်ဝင်ရန် ဤနေရာကိုနှိပ်ပါ'),
(12, 'Back to Login Page', 'လော့ဂ်အင်စာမျက်နှာသို့ ပြန်သွားရန်'),
(13, 'Logged in as', ''),
(14, 'Logout', 'အကောင့်ထွက်မည်'),
(15, 'Register', 'အကောင့်ဖွင့်မည်'),
(16, 'Customer Registration', 'ဝယ်သူ အကောင့်ဖွင့်ခြင်း'),
(17, 'Registration Successful', 'အကောင့်ဖွင့်ခြင်း အောင်မြင်ပါသည်'),
(18, 'Cart', 'ဈေးဝယ်ခြင်းတောင်း'),
(19, 'View Cart', 'ဈေးဝယ်ခြင်း'),
(20, 'Update Cart', 'ဈေးဝယ်ခြင်းကို ပြင်ဆင်မည်'),
(21, 'Back to Cart', 'ဈေးဝယ်ခြင်းသို့ ပြန်သွားရန်'),
(22, 'Checkout', 'ငွေရှင်းရန်'),
(23, 'Proceed to Checkout', 'ငွေရှင်းရန် ရှေ့ဆက်ပါ'),
(24, 'Orders', 'အော်ဒါများ'),
(25, 'Order History', 'အော်ဒါ မှတ်တမ်း'),
(26, 'Order Details', 'အော်ဒါ အသေးစိတ်'),
(27, 'Payment Date and Time', 'ငွေပေးချေသည့် နေ့စွဲနှင့် အချိန်'),
(28, 'Transaction ID', 'ငွေလွှဲ ID'),
(29, 'Paid Amount', 'ပေးချေပြီး ပမာဏ'),
(30, 'Payment Status', 'ငွေပေးချေမှု အခြေအနေ'),
(31, 'Payment Method', 'ငွေပေးချေမှု နည်းလမ်း'),
(32, 'Payment ID', 'ငွေပေးချေမှု ID'),
(33, 'Payment Section', 'ငွေပေးချေမှု ကဏ္ဍ'),
(34, 'Select Payment Method', 'ငွေပေးချေမှု နည်းလမ်းရွေးပါ'),
(35, 'Select a Method', 'နည်းလမ်းတစ်ခု ရွေးပါ'),
(36, 'PayPal', 'KPay'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'ဤအသေးစိတ်သို့ ပေးပို့ပါ'),
(44, 'Transaction Information', 'ငွေလွှဲ အချက်အလက်'),
(45, 'Include transaction id and other information correctly', 'ငွေလွှဲ ID နှင့် အခြားအချက်အလက်များကို မှန်ကန်စွာ ထည့်သွင်းပါ'),
(46, 'Pay Now', 'ယခု ငွေပေးချေမည်'),
(47, 'Product Name', 'ကုန်ပစ္စည်းအမည်'),
(48, 'Product Details', 'ကုန်ပစ္စည်း အသေးစိတ်'),
(49, 'Categories', 'အမျိုးအစားများ'),
(50, 'Category:', 'အမျိုးအစား:'),
(51, 'All Products Under', 'အောက်ရှိ ကုန်ပစ္စည်းအားလုံး'),
(52, 'Select Size', 'အရွယ်အစား ရွေးချယ်ပါ'),
(53, 'Select Color', 'အရောင် ရွေးချယ်ပါ'),
(54, 'Product Price', 'ကုန်ပစ္စည်း ဈေးနှုန်း'),
(55, 'Quantity', 'အရေအတွက်'),
(56, 'Out of Stock', 'ကုန်ပစ္စည်း လက်ကျန်မရှိပါ'),
(57, 'Share This', 'ဤအရာကို မျှဝေပါ'),
(58, 'Share This Product', 'ဤကုန်ပစ္စည်းကို မျှဝေပါ'),
(59, 'Product Description', 'ကုန်ပစ္စည်း ဖော်ပြချက်'),
(60, 'Features', 'အင်္ဂါရပ်များ'),
(61, 'Conditions', 'အခြေအနေများ'),
(62, 'Return Policy', 'ပြန်ပို့ခြင်း ဆိုင်ရာမူဝါဒ'),
(63, 'Reviews', 'သုံးသပ်ချက်များ'),
(64, 'Review', 'သုံးသပ်ချက်'),
(65, 'Give a Review', 'သုံးသပ်ချက် ပေးပါ'),
(66, 'Write your comment (Optional)', 'သင့်မှတ်ချက်ကို ရေးပါ (ရွေးချယ်နိုင်သည်)'),
(67, 'Submit Review', 'သုံးသပ်ချက် တင်သွင်းမည်'),
(68, 'You already have given a rating!', 'သင်သည် အဆင့်သတ်မှတ်ချက် ပေးပြီးသားဖြစ်သည်!'),
(69, 'You must have to login to give a review', 'သုံးသပ်ချက်ပေးရန် လော့ဂ်အင်ဝင်ရပါမည်'),
(70, 'No description found', 'ဖော်ပြချက် မတွေ့ရှိပါ'),
(71, 'No feature found', 'အင်္ဂါရပ် မတွေ့ရှိပါ'),
(72, 'No condition found', 'အခြေအနေ မတွေ့ရှိပါ'),
(73, 'No return policy found', 'ပြန်ပို့ခြင်း ဆိုင်ရာမူဝါဒ မတွေ့ရှိပါ'),
(74, 'No Review is Found', 'သုံးသပ်ချက် မတွေ့ရှိပါ'),
(75, 'Customer Name', 'ဝယ်သူအမည်'),
(76, 'Comment', 'မှတ်ချက်'),
(77, 'Comments', 'မှတ်ချက်များ'),
(78, 'Rating', 'အဆင့်သတ်မှတ်ချက်'),
(79, 'Previous', 'ရှေ့သို့'),
(80, 'Next', 'နောက်သို့'),
(81, 'Sub Total', 'အသေးစိတ် စုစုပေါင်း'),
(82, 'Total', 'စုစုပေါင်း'),
(83, 'Action', 'လုပ်ဆောင်ချက်'),
(84, 'Shipping Cost', 'ပို့ဆောင်ခ'),
(85, 'Continue Shipping', 'ပို့ဆောင်ခြင်း ဆက်လုပ်မည်'),
(86, 'Update Billing Address', 'ငွေတောင်းခံလွှာ လိပ်စာကို ပြင်ဆင်ရန်'),
(87, 'Update Shipping Address', 'ပို့ဆောင်ရန် လိပ်စာကို ပြင်ဆင်ရန်'),
(88, 'Update Billing and Shipping Info', 'ငွေတောင်းခံလွှာနှင့် ပို့ဆောင်ရန် အချက်အလက်များကို ပြင်ဆင်ရန်'),
(89, 'Dashboard', 'ဒက်ရှ်ဘုတ်'),
(90, 'Welcome to the Dashboard', 'ဒက်ရှ်ဘုတ်မှ ကြိုဆိုပါသည်'),
(91, 'Back to Dashboard', 'ဒက်ရှ်ဘုတ်သို့ ပြန်သွားရန်'),
(92, 'Subscribe', 'စာရင်းသွင်းမည်'),
(93, 'Subscribe To Our Newsletter', 'ကျွန်ုပ်တို့၏ သတင်းလွှာကို စာရင်းသွင်းရန်'),
(94, 'Email Address', 'အီးမေးလ် လိပ်စာ'),
(95, 'Enter Your Email Address', 'သင်၏ အီးမေးလ် လိပ်စာကို ထည့်ပါ'),
(96, 'Password', 'စကားဝှက်'),
(97, 'Forget Password', 'စကားဝှက်မေ့နေပါသလား'),
(98, 'Retype Password', 'စကားဝှက်ကို ထပ်ရိုက်ပါ'),
(99, 'Update Password', 'စကားဝှက်ကို ပြင်ဆင်ရန်'),
(100, 'New Password', 'စကားဝှက်အသစ်'),
(101, 'Retype New Password', 'စကားဝှက်အသစ်ကို ထပ်ရိုက်ပါ'),
(102, 'Full Name', 'အမည်အပြည့်အစုံ'),
(103, 'Company Name', 'ကုမ္ပဏီအမည်'),
(104, 'Phone Number', 'ဖုန်းနံပါတ်'),
(105, 'Address', 'လိပ်စာ'),
(106, 'Country', 'ပြည်နယ်နှင့်တိုင်း'),
(107, 'City', 'မြို့'),
(108, 'State', 'ပြည်နယ်'),
(109, 'Zip Code', 'ဇစ်ကုတ်'),
(110, 'About Us', 'ကျွန်ုပ်တို့အကြောင်း'),
(111, 'Featured Posts', 'အထူးဖော်ပြထားသော ပို့စ်များ'),
(112, 'Popular Posts', 'လူကြိုက်များသော ပို့စ်များ'),
(113, 'Recent Posts', 'မကြာသေးမီက ပို့စ်များ'),
(114, 'Contact Information', 'ဆက်သွယ်ရန် အချက်အလက်'),
(115, 'Contact Form', 'ဆက်သွယ်ရန် ပုံစံ'),
(116, 'Our Office', 'ကျွန်ုပ်တို့၏ ရုံး'),
(117, 'Update Profile', 'ကိုယ်ရေးအချက်အလက်ကို ပြင်ဆင်မည်'),
(118, 'Send Message', 'စာတိုပို့မည်'),
(119, 'Message', 'စာတို'),
(120, 'Find Us On Map', 'မြေပုံပေါ်တွင် ကျွန်ုပ်တို့ကို ရှာပါ'),
(121, 'Congratulation! Payment is successful.', 'ဂုဏ်ယူပါတယ်! ငွေပေးချေခြင်း အောင်မြင်ပါသည်။'),
(122, 'Billing and Shipping Information is updated successfully.', 'ငွေတောင်းခံလွှာနှင့် ပို့ဆောင်ရန် အချက်အလက်များကို အောင်မြင်စွာ ပြင်ဆင်ပြီးပါပြီ။'),
(123, 'Customer Name can not be empty.', 'ဝယ်သူအမည်ကို အလွတ်ထား၍မရပါ။'),
(124, 'Phone Number can not be empty.', 'ဖုန်းနံပါတ်ကို အလွတ်ထား၍မရပါ။'),
(125, 'Address can not be empty.', 'လိပ်စာကို အလွတ်ထား၍မရပါ။'),
(126, 'You must have to select a country.', 'ပြည်နယ်နှင့်တိုင်းကို အလွတ်ထား၍မရပါ။'),
(127, 'City can not be empty.', 'မြို့အမည်ကို အလွတ်ထား၍မရပါ။'),
(128, 'State can not be empty.', 'ပြည်နယ်ကို အလွတ်ထား၍မရပါ။'),
(129, 'Zip Code can not be empty.', 'ဇစ်ကုဒ်ကို အလွတ်ထား၍မရပါ။\''),
(130, 'Profile Information is updated successfully.', 'ကိုယ်ရေးအချက်အလက်များကို အောင်မြင်စွာ ပြင်ဆင်ပြီးပါပြီ။'),
(131, 'Email Address can not be empty', 'အီးမေးလ် လိပ်စာကို အလွတ်ထား၍မရပါ'),
(132, 'Email and/or Password can not be empty.', 'အီးမေးလ် နှင့်/သို့မဟုတ် စကားဝှက်ကို အလွတ်ထား၍မရပါ။'),
(133, 'Email Address does not match.', 'အီးမေးလ် လိပ်စာ မကိုက်ညီပါ။'),
(134, 'Email address must be valid.', 'အီးမေးလ် လိပ်စာသည် မှန်ကန်ရပါမည်။'),
(135, 'You email address is not found in our system.', 'သင်၏ အီးမေးလ် လိပ်စာကို ကျွန်ုပ်တို့၏ စနစ်တွင် ရှာမတွေ့ပါ။'),
(136, 'Please check your email and confirm your subscription.', 'သင်၏ အီးမေးလ်ကို စစ်ဆေးပြီး စာရင်းသွင်းခြင်းကို အတည်ပြုပါ။'),
(137, 'Your email is verified successfully. You can now login to our website.', 'သင်၏ အီးမေးလ်ကို အောင်မြင်စွာ အတည်ပြုပြီးပါပြီ။ ယခု ကျွန်ုပ်တို့၏ ဝဘ်ဆိုဒ်သို့ လော့ဂ်အင်ဝင်နိုင်ပါပြီ။'),
(138, 'Password can not be empty.', 'စကားဝှက်ကို အလွတ်ထား၍မရပါ။'),
(139, 'Passwords do not match.', 'စကားဝှက်များ မကိုက်ညီပါ။'),
(140, 'Please enter new and retype passwords.', 'စကားဝှက်အသစ်ကို ထည့်သွင်းပြီး ထပ်မံရိုက်ထည့်ပါ။'),
(141, 'Password is updated successfully.', 'စကားဝှက်ကို အောင်မြင်စွာ ပြင်ဆင်ပြီးပါပြီ။'),
(142, 'To reset your password, please click on the link below.', 'သင်၏ စကားဝှက်ကို ပြန်လည်သတ်မှတ်ရန် အောက်ပါလင့်ခ်ကို နှိပ်ပါ။'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'စကားဝှက် ပြန်လည်သတ်မှတ်ရန် တောင်းဆိုချက် - သင့်ဝဘ်ဆိုဒ်. ShopNest'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'စကားဝှက် ပြန်လည်သတ်မှတ်ရန် အီးမေးလ် သက်တမ်း (၂၄ နာရီ) ကုန်ဆုံးသွားပါပြီ။ ကျေးဇူးပြု၍ သင်၏ စကားဝှက်ကို ပြန်လည်သတ်မှတ်ရန် ထပ်မံကြိုးစားပါ။'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'အတည်ပြုလင့်ခ်တစ်ခုကို သင်၏ အီးမေးလ် လိပ်စာသို့ ပေးပို့ထားပါသည်။ ထိုနေရာတွင် စကားဝှက် ပြန်လည်သတ်မှတ်ရန် အချက်အလက်များကို သင်ရရှိပါလိမ့်မည်။'),
(146, 'Password is reset successfully. You can now login.', 'စကားဝှက်ကို အောင်မြင်စွာ ပြန်လည်သတ်မှတ်ပြီးပါပြီ။ ယခု လော့ဂ်အင်ဝင်နိုင်ပါပြီ။'),
(147, 'Email Address Already Exists', 'အီးမေးလ် လိပ်စာ ရှိနှင့်ပြီးသားဖြစ်သည်'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'စိတ်မကောင်းပါဘူး! သင့်အကောင့်သည် active မဖြစ်ပါ။ ကျေးဇူးပြု၍ စီမံခန့်ခွဲသူထံ ဆက်သွယ်ပါ။'),
(149, 'Change Password', 'စကားဝှက်ပြောင်းမည်'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'သင်၏ဝဘ်ဆိုဒ်အတွက် မှတ်ပုံတင်ခြင်း အီးမေးလ် အတည်ပြုချက်'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'မှတ်ပုံတင်သည့်အတွက် ကျေးဇူးတင်ပါသည်! သင့်အကောင့်ကို ဖန်တီးပြီးပါပြီ။ သင့်အကောင့်ကို အသက်သွင်းရန် အောက်ပါလင့်ခ်ကို နှိပ်ပါ:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'သင်၏ မှတ်ပုံတင်ခြင်း ပြီးဆုံးပါပြီ။ သင်၏ မှတ်ပုံတင်ခြင်းကို အတည်ပြုရန် လုပ်ငန်းစဉ်ကို လိုက်နာရန် သင်၏ အီးမေးလ် လိပ်စာကို စစ်ဆေးပါ။'),
(153, 'No Product Found', 'ကုန်ပစ္စည်း မတွေ့ရှိပါ'),
(154, 'Add to Cart', 'ဈေးဝယ်ခြင်းသို့ ထည့်မည်'),
(155, 'Related Products', 'ဆက်စပ် ကုန်ပစ္စည်းများ'),
(156, 'See all related products from below', 'အောက်ဖော်ပြပါ ဆက်စပ်ကုန်ပစ္စည်းများအားလုံးကို ကြည့်ရှုပါ'),
(157, 'Size', 'အရွယ်အစား'),
(158, 'Color', 'အရောင်'),
(159, 'Price', 'ဈေးနှုန်း'),
(160, 'Please login as customer to checkout', 'ငွေရှင်းရန် ကျေးဇူးပြုပြီး ဝယ်သူအဖြစ်လော့ဂ်အင်ဝင်ပါ'),
(161, 'Billing Address', 'ငွေတောင်းခံလွှာ လိပ်စာ'),
(162, 'Shipping Address', 'ပို့ဆောင်ရန် လိပ်စာ'),
(163, 'Rating is Submitted Successfully!', 'အဆင့်သတ်မှတ်ချက်ကို အောင်မြင်စွာ တင်သွင်းပြီးပါပြီ!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'အသုံးအဆောင်ပစ္စည်းများ', 1),
(2, 'ယောင်္ကျားလေးစီးဖိနပ်များ', 1),
(3, 'အလှကုန်ပစ္စည်းများ', 2),
(4, 'အသုံးအဆောင်ပစ္စည်းများ', 2),
(6, 'ဖိနပ်များ', 2),
(7, 'အဝတ်အစားများ', 2),
(8, 'ဘောင်းဘီများ', 1),
(9, 'ရှပ် အင်္ကျီများ', 1),
(10, 'အဝတ်အစားများ', 3),
(11, 'ဖိနပ်များ', 3),
(12, 'အသုံးအဆောင်ပစ္စည်းများ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`) VALUES
(57, 80, 'အမျိုးသမီးဝတ် ဂျင်းဘောင်းဘီ - ဒင်နင်မ် (Jeans for Women - Denim)', 'Free Size', 'Blue', '1', '25000', '1748759667'),
(58, 79, 'အမျိုးသမီးဝတ် စွဲမက်ဖွယ်ရာ ရှပ်ဂါဝန် (Glamorous Shirt Dress For Women)', 'XS', 'Gray', '1', '70000', '1748759667');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'ကျွန်ုပ်တို့ အကြောင်း', '<h1></h1><h4><p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><b>ShopNest</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ShopNest သည် လှပသော\r\nအမျိုးသမီးများအတွက် အထူးသဖြင့် သင်၏ အထူးနေ့ရက်များတွင် ထွန်းလင်းတောက်ပစေရန် ဖန်တီးထားပါသည်။\r\nကျွန်ုပ်တို့၏ ရည်မှန်းချက်မှာ အမြဲတမ်း သင့်ကို ဂုဏ်ပြုရန်ဖြစ်သည်! သင့်အတွက် အကောင်းဆုံးအရာများကို\r\nရရှိစေရန် ပါတီပွဲများ၊ မင်္ဂလာဆောင်ပွဲများနှင့် WOW ဟုဆိုရလောက်သည့် ဝတ်စုံများ လိုအပ်သော\r\nပွဲလမ်းသဘင်များအားလုံးအတွက် ကြီးမားသောစုစည်းမှုတစ်ခုကို ယူဆောင်လာပါသည်။<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"> </span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><b><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ကျွန်ုပ်တို့အကြောင်း</span></b><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ShopNest သည် ခေတ်မှီသော\r\nဖက်ရှင်ထုတ်ကုန်များကို စွဲဆောင်မှုရှိသောစျေးနှုန်းများဖြင့် ရောင်းချပေးနေသည့် ဖက်ရှင်စျေးဝယ်\r\nဝဘ်ဆိုဒ်အသစ်တစ်ခု ဖြစ်ပါသည်။ ကျွန်ုပ်တို့သည် ဖက်ရှင်ဆိုသည်မှာ သင်ဝတ်ဆင်သောအရာမဟုတ်ဘဲ\r\nသင်ခံစားရပုံဖြစ်သည်ဟု ခံယူထားပါသည်။ ထို့ကြောင့် ဤအချက်ကို စိတ်ထဲတွင်ထားရှိကာ သင်၏\r\nစိတ်ခံစားချက်၊ လိုအင်ဆန္ဒများနှင့် စိတ်ကူးစိတ်သန်းတိုင်းနှင့် ကိုက်ညီစေရန် ဒီဇိုင်း၊\r\nစတိုင်နှင့် ပုံနှိပ်များစွာပါဝင်သော ဒီဇိုင်နာဝတ်စုံများကို သင့်ထံ ယူဆောင်လာပါသည်။<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><b><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ကျွန်ုပ်တို့၏ မျှော်မှန်းချက်</span></b><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ကျွန်ုပ်တို့၏ မျှော်မှန်းချက်မှာ\r\nအကောင်းဆုံးအွန်လိုင်းစျေးဝယ် အတွေ့အကြုံဖြင့် သင်၏အတွင်းစိတ်အလှကို ကမ္ဘာသို့ မိတ်ဆက်ပေးရန်\r\nဖြစ်ပါသည်။ ကျွန်ုပ်တို့တွင် အမျိုးသမီးများအတွက် သူတို့၏ ခန္ဓာကိုယ်အမျိုးအစား၊ အသားအရေအရောင်၊\r\nဘတ်ဂျက်နှင့် စတိုင်နှစ်သက်မှုများအပေါ် အခြေခံ၍ ကိုက်ညီမည့် အဝတ်အစားများကို လက်ရွေးစင်\r\nစုစည်းထားပါသည်။ ကျွန်ုပ်တို့သည် ကျွန်ုပ်တို့၏ ဖောက်သည်များအား စစ်မှန်သော ခေတ်မှီစျေးဝယ်\r\nအတွေ့အကြုံကို ပေးအပ်ရန် ရည်ရွယ်ပြီး၊ အရွယ်အစားဇယားများမှတစ်ဆင့် ကျွန်ုပ်တို့၏ စုစည်းမှုများရှိ\r\nထုတ်ကုန်တစ်ခုချင်းစီအတွက် ကိုက်ညီမှု၊ သက်သောင့္သက်သာရှိမှု၊ အထည်အမျိုးအစားနှင့်\r\nသူတို့စိတ်ထဲရှိ အခြားအရာအားလုံးနှင့် သက်ဆိုင်သော အချက်အလက်အားလုံးကို ပံ့ပိုးပေးသွားမည်\r\nဖြစ်ပါသည်။ ထို့အပြင် ဖက်ရှင်လောကတွင် ဖြစ်ပျက်နေသော အရာအားလုံးနှင့်အတူ ဒီဇိုင်း၊\r\nစတိုင်နှင့် အမျိုးအစားအသစ်များကို မိတ်ဆက်ခြင်းလည်း ပါဝင်ပါသည်။<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><b><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ShopNest ကို ဘာကြောင့်ရွေးချယ်ရမလဲ?</span></b><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ShopNest  တွင်\r\nဆာရီ၊ ကာတင်ကာတီ၊ ဝတ်စုံအထည်၊ ဂါဝန်၊ အပေါ်ပိုင်းအင်္ကျီ၊ လက်ဂင်းနှင့် အခြားအရာများစွာကို\r\nစုစည်းထားပါသည်။ ကျွန်ုပ်တို့၏ ဝဘ်ဆိုဒ်ရှိ စုစည်းမှုအားလုံးသည် ဈေးကွက်တွင် ခေတ်ရေစီးကြောင်းအသစ်များနှင့်\r\nရုပ်သွင်သစ်များဖြင့် အဆင့်မြှင့်ထားသော ဒီဇိုင်နာဝတ်စုံများဖြစ်ပြီး အမျိုးသမီးဖက်ရှင်အတွက်\r\nအကြီးမားဆုံး ကတ်တလောက်ဖြစ်ပါသည်။ အမျိုးသမီးတိုင်း အပျော်ရွှင်ဆုံး စျေးဝယ်အတွေ့အကြုံကို\r\nရရှိစေရန် ကျွန်ုပ်တို့၏ နည်းပညာနှင့် ထုတ်ကုန်အမျိုးအစားများကို ဆက်လက်မြှင့်တင်နေပါသည်။\r\nသင်သည် အကောင်းဆုံးအရည်အသွေးရှိသော ဝတ်စုံများကို ပြဿနာမရှိ ပြန်လဲလှယ်နိုင်သော မူဝါဒဖြင့်\r\nရရှိစေရန် ကျွန်ုပ်တို့ အာမခံပါသည်။ သင်မြင်ရသောအရာသည် သင်ရရှိမည့်အရာနှင့် ထပ်တူကျကြောင်း\r\nကျွန်ုပ်တို့ အာမခံပါသည်။<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"> </span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><b><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">စျေးနှုန်းအနိမ့်ဆုံး\r\nအာမခံချက်</span></b><span style=\"font-size:14.0pt;line-height:115%;font-family:\r\n\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ကျွန်ုပ်တို့၏အွန်လိုင်းတွင်\r\nရောင်းချသော မည်သည့်ဂါဝန်ကိုမဆို ပို၍စျေးသက်သာစွာ တွေ့ရှိပါက၊ ထိုစျေးနှုန်းအတိုင်း\r\nကျွန်ုပ်တို့ ညှိနှိုင်းပေးပါမည်!<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><b><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">၂၄/၇ ဖောက်သည် ဝန်ဆောင်မှု</span></b><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">အီးမေးလ် </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" segoe=\"\" ui=\"\" symbol\",sans-serif;=\"\" mso-bidi-font-family:\"segoe=\"\" symbol\"\"=\"\">♥</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"> စာတို </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" segoe=\"\" ui=\"\" symbol\",sans-serif;=\"\" mso-bidi-font-family:\"segoe=\"\" symbol\"\"=\"\">♥</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"> ဖုန်းခေါ်ဆိုမှု<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ကျွန်ုပ်တို့သည် သင့်အတွက်\r\n၂၄/၇ အွန်လိုင်းနှင့် ဖုန်းမှတစ်ဆင့် အသင့်ရှိနေပါသည်။<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"> </span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><b><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">အရွယ်အစား နှင့် အရောင်</span></b><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ကျွန်ုပ်တို့တွင် အရောင်အသွေးနှင့်\r\nအရွယ်အစားမျိုးစုံကို ရောင်းချပေးပါသည်။<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><b><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ကမ္ဘာအနှံ့ ပို့ဆောင်ခြင်း</span></b><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ကံမကောင်းစွာဖြင့်၊\r\nမဟုတ်ပါ။ ကျွန်ုပ်တို့သည် ကျွန်ုပ်တို့၏ဝန်ဆောင်မှုကို မြန်မာနိုင်ငံတစ်ဝှမ်းလုံးတွင်သာ\r\nပံ့ပိုးပေးနေပါသည်။ ကျွန်ုပ်တို့၏ စီးပွားရေးကို မကြာမီ နိုင်ငံတကာသို့ တိုးချဲ့လိုပါသည်။<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><b><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">လွယ်ကူစွာ ပြန်ပို့နိုင်ခြင်း</span></b><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ဝတ်စုံတစ်ထည် ဝယ်ယူပြီး\r\nပြန်ပို့လိုပါသလား? ကျွန်ုပ်တို့တွင် (၃) ရက်အတွင်း လွယ်ကူစွာ ပြန်ပို့နိုင်သော မူဝါဒရှိပါသည်။\r\nအသေးစိတ်အချက်အလက်များအတွက် support@shopnest.com သို့ အီးမေးလ်ပို့၍ ဆက်သွယ်နိုင်ပါသည်။<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><b><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">အခါသမယတိုင်းအတွက် အိပ်မက်ဆန်သော\r\nဂါဝန်များ</span></b><span style=\"font-size:14.0pt;line-height:115%;font-family:\r\n\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ShopNest  တွင်\r\nကျွန်ုပ်တို့၏ စတိုင်လ်ကျွမ်းကျင်သူများမှ ဂရုတစိုက် လက်ရွေးစင်ထားသော ဂါဝန်များအားလုံးကို\r\nရရှိနိုင်ပါသည်။ အကယ်၍ သင်သည် သီးခြားမော်ဒယ်တစ်ခုကို စိတ်ဝင်စားပါက ကျွန်ုပ်တို့ထံ\r\nအီးမေးလ်ပို့၍ ဆက်သွယ်နိုင်ပြီး သင်နှစ်သက်သော ဂါဝန်ကို ပေးအပ်နိုင်ရန် ကျွန်ုပ်တို့\r\nအကောင်းဆုံး ကြိုးစားပေးပါမည်။<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><b><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">အတည်ပြုထားသော လုံခြုံရေး</span></b><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">ကျွန်ုပ်တို့၏ ငွေပေးချေမှုများအားလုံးကို\r\nNorton မှ အတည်ပြုထားပြီး အမြင့်မားဆုံး လုံခြုံရေးစံနှုန်းများဖြင့် လုပ်ဆောင်ပါသည်။\r\nထို့အပြင် ပုံမှန်စိတ်လှုပ်ရှားဖွယ်ရာ ကမ်းလှမ်းမှုများနှင့် လက်ဆောင်များမှတစ်ဆင့်\r\nပျော်ရွှင်စရာများစွာလည်း ရှိပါသေးသည်။ ထို့ကြောင့် ဤသတင်းကို ဖြန့်ဝေပြီး သင့်မိသားစု၊\r\nသူငယ်ချင်းများနှင့် လုပ်ဖော်ကိုင်ဖက်များအားလုံးကို ကျွန်ုပ်တို့ထံ ညွှန်းဆိုပေးကာ\r\nဆုလက်ဆောင်များ ရယူလိုက်ပါ။ ထိပ်ဆုံးအနေဖြင့်၊ သင်၏အသုံးပြုသူအတွေ့အကြုံကို ပြန်လည်သုံးသပ်ချက်များ\r\nပို့စ်တင်ခြင်းဖြင့် မျှဝေနိုင်ပါသည်။ နောက်မကျပါနဲ့၊ ယခုပင် ကျွန်ုပ်တို့နှင့် စာရင်းသွင်းလိုက်ပါ။\r\nစတင်ရှာဖွေပါ၊ စတင်ဝယ်ယူပါ၊<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height:115%\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\"> </span></p></h4><p class=\"MsoNormal\"><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">\r\n<!--[if !supportLineBreakNewLine]-->\r\n<!--[endif]--><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">\r\n<!--[if !supportLineBreakNewLine]-->\r\n<!--[endif]--><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">\r\n<!--[if !supportLineBreakNewLine]-->\r\n<!--[endif]--><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">\r\n<!--[if !supportLineBreakNewLine]-->\r\n<!--[endif]--><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">\r\n<!--[if !supportLineBreakNewLine]-->\r\n<!--[endif]--><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">\r\n<!--[if !supportLineBreakNewLine]-->\r\n<!--[endif]--><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">\r\n<!--[if !supportLineBreakNewLine]-->\r\n<!--[endif]--><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-family:\" noto=\"\" sans=\"\" myanmar\",sans-serif\"=\"\">\r\n<!--[if !supportLineBreakNewLine]-->\r\n<!--[endif]--><o:p></o:p></span></p><p class=\"MsoNormal\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p>', 'about-banner.jpg', 'ShopNest - About Us', 'about, about us, about fashion, about company, about shopnest', 'ShopNest has made you shine on your special days specially for beautiful women. Our goal has always been to celebrate YOU! To get the best in you we brought a huge collection whether you\'re attending a party, wedding, and all those events that require a WOW dress.', 'အမေးများသော မေးခွန်းများ', 'faq-banner.jpg', 'ShopNest - FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'ဆက်သွယ်ရန်', 'contact-banner.jpg', 'ShopNest - Contact', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(52, 9, 'Yo Yo', 'mightyndk.mm@gmail.com', '2025-06-01 13:04:27', '', 100000, '', '', '', '', '2342342342342134234\r\nnote- toke gyi', 'KPay', 'Completed', 'Completed', '1748759667');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(77, 'လက်တော့ပ်ကျောပိုးအိတ် (Laptop Backpack)', '25000', '20000', 9, 'product-featured-77.jpg', '<div>ထူးခြားသောဒီဇိုင်းနှင့် အိတ်ကပ်များစွာ Skedaddle လက်တော့ပ်ကျောပိုးအိတ်၏ ဆွဲဆောင်မှုရှိပြီး ခေတ်မီသောပုံစံသည် ယုံကြည်မှုရှိမှုကိုပေါ်လွင်စေပြီး လုပ်ဆောင်ချက်များစွာပါဝင်သောအိတ်ကပ်များဖြင့် သင့်လက်တော့ပ်ကို ကာကွယ်ပေးပါသည်။<font color=\"#0a0a0a\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"></font></div>', 'ထူးခြားသောဒီဇိုင်းနှင့် အိတ်ကပ်များစွာ Skedaddle လက်တော့ပ်ကျောပိုးအိတ်၏ ဆွဲဆောင်မှုရှိပြီး ခေတ်မီသောပုံစံသည် ယုံကြည်မှုရှိမှုကိုပေါ်လွင်စေပြီး လုပ်ဆောင်ချက်များစွာပါဝင်သောအိတ်ကပ်များဖြင့် သင့်လက်တော့ပ်ကို ကာကွယ်ပေးပါသည်။', '<table>\r\n<tbody><tr>\r\n<td>Brand: </td>\r\n<td>Baggallini</td>\r\n</tr>\r\n<tr>\r\n<td>Features: </td>\r\n<td>Pockets: 3 interior slip, 3 interior zip, 4 exterior</td>\r\n</tr>\r\n<tr>\r\n<td>Target Group: </td>\r\n<td>Women</td>\r\n</tr>\r\n<tr>\r\n<td>Country of Origin: </td>\r\n<td>U.S.A</td>\r\n</tr>\r\n</tbody></table>', 'This product is directly shipped from U.S.A. and it includes import duty in the price.', '<p>Standard Return Policy</p>', 7, 1, 1, 60),
(79, 'အမျိုးသမီးဝတ် စွဲမက်ဖွယ်ရာ ရှပ်ဂါဝန် (Glamorous Shirt Dress For Women)', '80000', '70000', 8, 'product-featured-79.jpg', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\">Glamorous မှ အမျိုးသမီးဝတ် ရှပ်ဂါဝန်ဖြင့် သင့်ရဲ့စတိုင်လ်ကို ထုတ်ဖော်လိုက်ပါ။ နူးညံ့ပြီး အရည်အသွေးမြင့် ပေါ်လီအက်စတာ (Polyester)သားဖြင့် ချုပ်လုပ်ထားသောကြောင့် ဤဂါဝန်သည် သင့်ကို သက်သောင့်သက်သာရှိမှုနှင့် ခေတ်မီလှပသောဟန်ပန်ကို ပေးစွမ်းပါလိမ့်မည်။ သင်သွားလေရာနေရာတိုင်းတွင် ထူးခြားသောစတိုင်လ်ဖြင့် ကိုယ်ပိုင်ဟန်ပန်ကိုဖော်ကျူးပြီး နေ့စဉ်ဝတ်စားဆင်ယင်မှုအတွက် ဆန်းသစ်သောခံစားမှုကိုရရှိစေရန် လိုက်ဖက်သောဖိနပ်ဖြင့်တွဲဖက်၍ သင်၏စွဲမက်ဖွယ်အလှကို ဂုဏ်ယူစွာပြသလိုက်ပါ။</span><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-family: opensans, \"Helvetica Neue\", Helvetica, Helvetica, Arial, sans-serif; font-size: 14px;\">Glamorous မှ အမျိုးသမီးဝတ် ရှပ်ဂါဝန်ဖြင့် သင့်ရဲ့စတိုင်လ်ကို ထုတ်ဖော်လိုက်ပါ။ နူးညံ့ပြီး အရည်အသွေးမြင့် ပေါ်လီအက်စတာ (Polyester)သားဖြင့် ချုပ်လုပ်ထားသောကြောင့် ဤဂါဝန်သည် သင့်ကို သက်သောင့်သက်သာရှိမှုနှင့် ခေတ်မီလှပသောဟန်ပန်ကို ပေးစွမ်းပါလိမ့်မည်။ သင်သွားလေရာနေရာတိုင်းတွင် ထူးခြားသောစတိုင်လ်ဖြင့် ကိုယ်ပိုင်ဟန်ပန်ကိုဖော်ကျူးပြီး နေ့စဉ်ဝတ်စားဆင်ယင်မှုအတွက် ဆန်းသစ်သောခံစားမှုကိုရရှိစေရန် လိုက်ဖက်သောဖိနပ်ဖြင့်တွဲဖက်၍ သင်၏စွဲမက်ဖွယ်အလှကို ဂုဏ်ယူစွာပြသလိုက်ပါ။</span><br></p>', '<p>N/A</p>', '<p>N/A</p>', '<p>N/A</p>', 14, 1, 1, 32),
(80, 'အမျိုးသမီးဝတ် ဂျင်းဘောင်းဘီ - ဒင်နင်မ် (Jeans for Women - Denim)', '', '25000', 9, 'product-featured-80.jpg', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\">သင့်ရဲ့နေ့စဉ်ဝတ်စားဆင်ယင်မှုကို ကွဲပြားခြားနားတဲ့ပုံစံလေးနဲ့ ပြောင်းလဲဖို့ နည်းလမ်းရှာနေတယ်ဆိုရင် Guess အမှတ်တံဆိပ်ကထုတ်လုပ်ထားတဲ့ ဒီဂျင်းဘောင်းဘီလေးကိုသာ ရွေးချယ်ဝတ်ဆင်လိုက်ပါ။ ချည်သားစစ်စစ်နဲ့ ပြုလုပ်ထားတာကြောင့် လေဝင်လေထွက်ကောင်းပြီး တစ်နေ့တာလုံး သက်သောင့်သက်သာရှိစေမှာပါ။ ဒီဂျင်းဘောင်းဘီလေးကို အဖြူရောင်အပေါ်ပိုင်းအင်္ကျီလေးနဲ့တွဲဖက်ပြီး သင့်ရဲ့ပေါ့ပေါ့ပါးပါးနေ့စဉ်ဖက်ရှင်ကို ပြီးပြည့်စုံစေလိုက်ပါ။</span><br></p>', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, \"Helvetica Neue\", Helvetica, Helvetica, Arial, sans-serif;\">သင့်ရဲ့နေ့စဉ်ဝတ်စားဆင်ယင်မှုကို ကွဲပြားခြားနားတဲ့ပုံစံလေးနဲ့ ပြောင်းလဲဖို့ နည်းလမ်းရှာနေတယ်ဆိုရင် Guess အမှတ်တံဆိပ်ကထုတ်လုပ်ထားတဲ့ ဒီဂျင်းဘောင်းဘီလေးကိုသာ ရွေးချယ်ဝတ်ဆင်လိုက်ပါ။ ချည်သားစစ်စစ်နဲ့ ပြုလုပ်ထားတာကြောင့် လေဝင်လေထွက်ကောင်းပြီး တစ်နေ့တာလုံး သက်သောင့်သက်သာရှိစေမှာပါ။ ဒီဂျင်းဘောင်းဘီလေးကို အဖြူရောင်အပေါ်ပိုင်းအင်္ကျီလေးနဲ့တွဲဖက်ပြီး သင့်ရဲ့ပေါ့ပေါ့ပါးပါးနေ့စဉ်ဖက်ရှင်ကို ပြီးပြည့်စုံစေလိုက်ပါ။</span><br></p>', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\">သင့်ရဲ့နေ့စဉ်ဝတ်စားဆင်ယင်မှုကို ကွဲပြားခြားနားတဲ့ပုံစံလေးနဲ့ ပြောင်းလဲဖို့ နည်းလမ်းရှာနေတယ်ဆိုရင် Guess အမှတ်တံဆိပ်ကထုတ်လုပ်ထားတဲ့ ဒီဂျင်းဘောင်းဘီလေးကိုသာ ရွေးချယ်ဝတ်ဆင်လိုက်ပါ။ ချည်သားစစ်စစ်နဲ့ ပြုလုပ်ထားတာကြောင့် လေဝင်လေထွက်ကောင်းပြီး တစ်နေ့တာလုံး သက်သောင့်သက်သာရှိစေမှာပါ။ ဒီဂျင်းဘောင်းဘီလေးကို အဖြူရောင်အပေါ်ပိုင်းအင်္ကျီလေးနဲ့တွဲဖက်ပြီး သင့်ရဲ့ပေါ့ပေါ့ပါးပါးနေ့စဉ်ဖက်ရှင်ကို ပြီးပြည့်စုံစေလိုက်ပါ။</span><br></p>', '<p>Standard Terms & Conditions    </p>', '<p>Standard Return Policy</p>', 28, 1, 1, 35),
(82, 'BB ပေါ့ပေါ့ပါးပါး အမြန်ခြောက် ဘောင်းဘီတို mk227', '10000', '5000', 50, 'product-featured-82.png', '<p data-sourcepos=\"5:1-5:100\"><strong>BB ဘောင်းဘီတို ပေါ့ပေါ့ပါးပါး အမြန်ခြောက် အကြောထည်ခါးဘောင်းဘီတို mk227 ၏ ကုန်ပစ္စည်းအသေးစိတ်များ</strong></p><ul data-sourcepos=\"7:1-34:3\">\r\n<li data-sourcepos=\"18:1-18:3\">/</li><li data-sourcepos=\"19:1-19:24\">/အရွယ်အစားအသေးစိတ်များ</li><li data-sourcepos=\"20:1-20:3\">/</li><li data-sourcepos=\"21:1-21:53\">/M ခါး ၂၆-၂၈ လက်မ တင် ၃၆ လက်မ ဘောင်းဘီအရှည် ၂၁ လက်မ</li><li data-sourcepos=\"22:1-22:3\">/</li><li data-sourcepos=\"23:1-23:53\">/L ခါး ၂၈-၃၀ လက်မ တင် ၃၆ လက်မ ဘောင်းဘီအရှည် ၂၁ လက်မ</li><li data-sourcepos=\"24:1-24:3\">/</li><li data-sourcepos=\"25:1-25:54\">/XL ခါး ၃၀-၃၂ လက်မ တင် ၃၈ လက်မ ဘောင်းဘီအရှည် ၂၁ လက်မ</li><li data-sourcepos=\"26:1-26:3\">/</li><li data-sourcepos=\"27:1-27:55\">/2XL ခါး ၃၂-၃၄ လက်မ တင် ၄၀ လက်မ ဘောင်းဘီအရှည် ၂၁ လက်မ</li><li data-sourcepos=\"28:1-28:3\">/</li><li data-sourcepos=\"29:1-29:55\">/3XL ခါး ၃၄-၃၆ လက်မ တင် ၄၂ လက်မ ဘောင်းဘီအရှည် ၂၁ လက်မ</li><li data-sourcepos=\"30:1-30:3\">/</li><li data-sourcepos=\"31:1-31:55\">/4XL ခါး ၃၆-၃၈ လက်မ တင် ၄၄ လက်မ ဘောင်းဘီအရှည် ၂၁ လက်မ</li><li data-sourcepos=\"32:1-32:3\">/</li><li data-sourcepos=\"33:1-33:55\">/5XL ခါး ၃၈-၄၀ လက်မ တင် ၄၆ လက်မ ဘောင်းဘီအရှည် ၂၁ လက်မ</li><li data-sourcepos=\"34:1-34:3\">/</li></ul>', 'BB ဘောင်းဘီတို ပေါ့ပေါ့ပါးပါး အမြန်ခြောက် အကြောထည်ခါးဘောင်းဘီတို mk227 ၏ ကုန်ပစ္စည်းအသေးစိတ်များ\r\n\r\nအခြေအနေ- အသစ်စက်စက်\r\nရိုးရှင်းသောဖက်ရှင်စတိုင်- ပေါ့ပေါ့ပါးပါး\r\nရာသီ- နွေရာသီ\r\nဘောင်းဘီအမျိုးအစား- ဘောင်းဘီတို\r\nအမှတ်တံဆိပ်- အမှတ်တံဆိပ်မရှိ\r\nမော်ဒယ်များ- Mk227\r\nပုံစံ- ရိုးရိုး\r\nအဝတ်အထည်ပစ္စည်း- ဘောင်းဘီတို\r\nခါးအမျိုးအစား- အကြောထည်ခါး\r\nဘောင်းဘီတို ပေါ့ပေါ့ပါးပါး ဘောင်းဘီတို အမြန်ခြောက် အကြောထည်ခါး ဘောင်းဘီတို', '<p data-sourcepos=\"5:1-5:100\"><strong>BB ဘောင်းဘီတို ပေါ့ပေါ့ပါးပါး အမြန်ခြောက် အကြောထည်ခါးဘောင်းဘီတို mk227 ၏ ကုန်ပစ္စည်းအသေးစိတ်များ</strong></p><ul data-sourcepos=\"7:1-34:3\"><li data-sourcepos=\"7:1-7:21\">အခြေအနေ- အသစ်စက်စက်</li><li data-sourcepos=\"8:1-8:43\">ရိုးရှင်းသောဖက်ရှင်စတိုင်- ပေါ့ပေါ့ပါးပါး</li><li data-sourcepos=\"9:1-9:15\">ရာသီ- နွေရာသီ</li><li data-sourcepos=\"10:1-10:33\">ဘောင်းဘီအမျိုးအစား- ဘောင်းဘီတို</li><li data-sourcepos=\"11:1-11:30\">အမှတ်တံဆိပ်- အမှတ်တံဆိပ်မရှိ</li><li data-sourcepos=\"12:1-12:20\">မော်ဒယ်များ- Mk227</li><li data-sourcepos=\"13:1-13:17\">ပုံစံ- ရိုးရိုး</li><li data-sourcepos=\"14:1-14:30\">အဝတ်အထည်ပစ္စည်း- ဘောင်းဘီတို</li><li data-sourcepos=\"15:1-15:28\">ခါးအမျိုးအစား- အကြောထည်ခါး</li><li data-sourcepos=\"16:1-16:76\">ဘောင်းဘီတို ပေါ့ပေါ့ပါးပါး ဘောင်းဘီတို အမြန်ခြောက် အကြောထည်ခါး ဘောင်းဘီတို</li></ul><ul data-sourcepos=\"7:1-34:3\">\r\n<li data-sourcepos=\"18:1-18:3\">/</li>\r\n<li data-sourcepos=\"19:1-19:24\">/အရွယ်အစားအသေးစိတ်များ</li>\r\n<li data-sourcepos=\"20:1-20:3\">/</li>\r\n<li data-sourcepos=\"21:1-21:53\">/M ခါး ၂၆-၂၈ လက်မ တင် ၃၆ လက်မ ဘောင်းဘီအရှည် ၂၁ လက်မ</li>\r\n<li data-sourcepos=\"22:1-22:3\">/</li>\r\n<li data-sourcepos=\"23:1-23:53\">/L ခါး ၂၈-၃၀ လက်မ တင် ၃၆ လက်မ ဘောင်းဘီအရှည် ၂၁ လက်မ</li>\r\n<li data-sourcepos=\"24:1-24:3\">/</li>\r\n<li data-sourcepos=\"25:1-25:54\">/XL ခါး ၃၀-၃၂ လက်မ တင် ၃၈ လက်မ ဘောင်းဘီအရှည် ၂၁ လက်မ</li>\r\n<li data-sourcepos=\"26:1-26:3\">/</li>\r\n<li data-sourcepos=\"27:1-27:55\">/2XL ခါး ၃၂-၃၄ လက်မ တင် ၄၀ လက်မ ဘောင်းဘီအရှည် ၂၁ လက်မ</li>\r\n<li data-sourcepos=\"28:1-28:3\">/</li>\r\n<li data-sourcepos=\"29:1-29:55\">/3XL ခါး ၃၄-၃၆ လက်မ တင် ၄၂ လက်မ ဘောင်းဘီအရှည် ၂၁ လက်မ</li>\r\n<li data-sourcepos=\"30:1-30:3\">/</li>\r\n<li data-sourcepos=\"31:1-31:55\">/4XL ခါး ၃၆-၃၈ လက်မ တင် ၄၄ လက်မ ဘောင်းဘီအရှည် ၂၁ လက်မ</li>\r\n<li data-sourcepos=\"32:1-32:3\">/</li>\r\n<li data-sourcepos=\"33:1-33:55\">/5XL ခါး ၃၈-၄၀ လက်မ တင် ၄၆ လက်မ ဘောင်းဘီအရှည် ၂၁ လက်မ</li>\r\n<li data-sourcepos=\"34:1-34:3\">/</li></ul>', '<p><br></p>', '', 5, 1, 1, 19),
(83, 'Maison Alhambra Kismet Moscow EDP', '300000', '250000', 10, 'product-featured-83.jpg', '<p><span style=\"color: rgb(85, 85, 85); font-family: HelveticaNeue, \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">Maison Alhambra Kismet Moscow Cologne by Maison Alhambra</span></p>', '<p><span style=\"color: rgb(85, 85, 85); font-family: HelveticaNeue, \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">Maison Alhambra Kismet Moscow Cologne by Maison Alhambra</span></p>', '<p>N/A</p>', '<p>N/A</p>', '<p>N/A</p>', 2, 1, 1, 61),
(84, 'Coty Stetson Cologne (Collectors Edition Decanter Bottle)', '', '60000', 50, 'product-featured-84.png', '<p><span style=\"color: rgb(85, 85, 85); font-family: HelveticaNeue, \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">Stetson Cologne by Coty, Launched by the design house of coty in 1981, stetson is classified as a refined, oriental, woody fragrance. This masculine scent possesses a blend of rich, woodsy, citrus spices. It is recommended for evening wear.</span></p>', '<p><span style=\"color: rgb(85, 85, 85); font-family: HelveticaNeue, \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">Stetson Cologne by Coty, Launched by the design house of coty in 1981, stetson is classified as a refined, oriental, woody fragrance. This masculine scent possesses a blend of rich, woodsy, citrus spices. It is recommended for evening wear.</span></p>', '<p><font color=\"#555555\" face=\"HelveticaNeue, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 16px;\">N/A</span></font></p>', '<p>N/A</p>', '<p>N/A</p>', 0, 1, 1, 61),
(85, 'Baldessarini Nautic Spirit EDT for Men | Maurer & Wirtz', '', '250000', 7, 'product-featured-85.png', '<p><span style=\"color: rgb(85, 85, 85); font-family: HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Baldessarini Nautic Spirit Cologne by Maurer &amp; Wirtz, Baldessarini nautic spirit by maurer &amp; wirtz has a distinctly adventurous essence, beginning with top notes of fresh, salty seawater, delicious passionfruit, and ripe mango. At its heart, this men\'s cologne features gorgeous notes of spiced ginger, curry tree, and ever-popular cardamom, while it finishes with deep base notes of sandalwood, musk, and patchouli. With warm spicy, tropical, and marine accords, this cologne is marked by a strong, sweet, and slightly fruity aromatic fragrance.</span></p>', '<p><span style=\"color: rgb(85, 85, 85); font-family: HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Baldessarini Nautic Spirit Cologne by Maurer &amp; Wirtz, Baldessarini nautic spirit by maurer &amp; wirtz has a distinctly adventurous essence, beginning with top notes of fresh, salty seawater, delicious passionfruit, and ripe mango. At its heart, this men\'s cologne features gorgeous notes of spiced ginger, curry tree, and ever-popular cardamom, while it finishes with deep base notes of sandalwood, musk, and patchouli. With warm spicy, tropical, and marine accords, this cologne is marked by a strong, sweet, and slightly fruity aromatic fragrance.</span></p>', '<p>N/A</p>', '<p>N/A</p>', '<p>N/A</p>', 3, 1, 1, 61),
(86, 'အမျိုးသားပေါ့ပါးဘောင်းဘီတို', '12000', '8000', 30, 'product-featured-86.png', '<p>ဤအမျိုးသားပေါ့ပါးဘောင်းဘီတိုသည် နွေရာသီအတွက် သင့်တော်သော ဒီဇိုင်းဖြစ်သည်။ ချည်သားနှင့်ပြုလုပ်ထားပြီး လေဝင်လေထွက်ကောင်းမွန်ကာ တစ်နေ့တာလုံး သက်သောင့်သက်သာရှိစေပါသည်။ ပေါ့ပေါ့ပါးပါးဝတ်ဆင်ရန်အတွက် အလွန်သင့်တော်ပါသည်။</p>', 'ပေါ့ပါးဘောင်းဘီတိုသည် နွေရာသီအတွက် သက်သောင့်သက်သာရှိပြီး ချည်သားဖြင့်ပြုလုပ်ထားသည်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: M, L, XL<br>ပစ္စည်း: ချည်သား</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 19),
(87, 'အမျိုးသားအားကစားဘောင်းဘီတို', '15000', '10000', 25, 'product-featured-87.png', '<p>ဤအားကစားဘောင်းဘီတိုသည် အားကစားဝတ်စုံအဖြစ် သို့မဟုတ် ပေါ့ပါးစတိုင်အဖြစ် ဝတ်ဆင်နိုင်ပါသည်။ အမြန်ခြောက်သည့်အထည်ဖြင့်ပြုလုပ်ထားပြီး လှုပ်ရှားမှုလွတ်လပ်စွာပြုလုပ်နိုင်ရန် ဒီဇိုင်းထုတ်ထားသည်။</p>', 'အားကစားနှင့်ပေါ့ပါးစတိုင်အတွက် သင့်တော်သော ဘောင်းဘီတို။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: S, M, L<br>ပစ္စည်း: ပေါ်လီအက်စတာ</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 19),
(88, 'အမျိုးသားကတ္တီပါဘောင်းဘီတို', '18000', '12000', 20, 'product-featured-88.png', '<p>ဤကတ္တီပါဘောင်းဘီတိုသည် ပေါ့ပါးပြီး စတိုင်ကျသောဒီဇိုင်းဖြစ်သည်။ နေ့စဉ်အသုံးပြုရန်အတွက် သင့်တော်ပြီး အိတ်ကပ်များပါရှိသည်။</p>', 'ပေါ့ပါးပြီး စတိုင်ကျသော ကတ္တီပါဘောင်းဘီတို။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: M, L, XL<br>ပစ္စည်း: ကတ္တီပါ</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 19),
(89, 'အမျိုးသမီးဝတ် ပန်းရောင်ဂါဝန်', '85000', '75000', 15, 'product-featured-89.png', '<p>ဤပန်းရောင်ဂါဝန်သည် အမျိုးသမီးများအတွက် စွဲမက်ဖွယ်ဒီဇိုင်းဖြစ်သည်။ ပေါ်လီအက်စတာဖြင့်ပြုလုပ်ထားပြီး ပါတီပွဲများနှင့် အထူးအခါသမယများအတွက် သင့်တော်ပါသည်။</p>', 'စွဲမက်ဖွယ်ပန်းရောင်ဂါဝန်၊ ပါတီပွဲများအတွက် သင့်တော်သည်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: S, M, L<br>ပစ္စည်း: ပေါ်လီအက်စတာ</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 32),
(90, 'အမျိုးသမီးဝတ် အနက်ရောင်ဂါဝန်', '90000', '80000', 12, 'product-featured-90.png', '<p>ဤအနက်ရောင်ဂါဝန်သည် ခေတ်မီပြီး ဂန္ထဝင်စတိုင်ဖြစ်သည်။ ပိတ်စဖြင့်ပြုလုပ်ထားပြီး ညစာပွဲများအတွက် အထူးသင့်တော်ပါသည်။</p>', 'ခေတ်မီပြီး ဂန္ထဝင်အနက်ရောင်ဂါဝန်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: S, M, L<br>ပစ္စည်း: ပိတ်စ</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 32),
(91, 'အမျိုးသမီးဝတ် ဖြူစင်ဂါဝန်', '95000', '85000', 10, 'product-featured-91.png', '<p>ဤဖြူစင်ဂါဝန်သည် နူးညံ့ပြီး စတိုင်ကျသောဒီဇိုင်းဖြစ်သည်။ ပေါ့ပါးစတိုင်နှင့် အထူးအခါသမယများအတွက် သင့်တော်ပါသည်။</p>', 'နူးညံ့ပြီး စတိုင်ကျသော ဖြူစင်ဂါဝန်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: S, M, L<br>ပစ္စည်း: ပေါ်လီအက်စတာ</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 32),
(92, 'အမျိုးသမီးဝတ် ကတ္တီပါဘောင်းဘီ', '30000', '25000', 20, 'product-featured-92.png', '<p>ဤကတ္တီပါဘောင်းဘီသည် နေ့စဉ်ဝတ်ဆင်ရန်အတွက် သင့်တော်ပြီး သက်သောင့်သက်သာရှိစေပါသည်။ ပေါ့ပါးစတိုင်နှင့် လိုက်ဖက်ညီသော ဒီဇိုင်းဖြစ်သည်။</p>', 'နေ့စဉ်ဝတ်ဆင်ရန် သင့်တော်သော ကတ္တီပါဘောင်းဘီ။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: S, M, L<br>ပစ္စည်း: ကတ္တီပါ</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 35),
(93, 'အမျိုးသမီးဝတ် အနက်ရောင်ဘောင်းဘီ', '35000', '30000', 18, 'product-featured-93.png', '<p>ဤအနက်ရောင်ဘောင်းဘီသည် ဂန္ထဝင်စတိုင်ဖြစ်ပြီး ရုံးဝတ်စုံအဖြစ်လည်း သင့်တော်ပါသည်။ ချည်သားနှင့်ပြုလုပ်ထားသည်။</p>', 'ဂန္ထဝင်အနက်ရောင်ဘောင်းဘီ၊ ရုံးဝတ်စုံအတွက် သင့်တော်သည်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: S, M, L<br>ပစ္စည်း: ချည်သား</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 35),
(94, 'အမျိုးသမီးဝတ် အဖြူရောင်ဘောင်းဘီ', '32000', '28000', 22, 'product-featured-94.png', '<p>ဤအဖြူရောင်ဘောင်းဘီသည် နွေရာသီအတွက် သင့်တော်ပြီး ပေါ့ပါးစတိုင်ဖြစ်သည်။ ချည်သားနှင့်ပြုလုပ်ထားသည်။</p>', 'နွေရာသီအတွက် သင့်တော်သော အဖြူရောင်ဘောင်းဘီ။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: S, M, L<br>ပစ္စည်း: ချည်သား</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 35),
(95, 'အမျိုးသမီးကျောပိုးအိတ်', '30000', '25000', 15, 'product-featured-95.png', '<p>ဤကျောပိုးအိတ်သည် အမျိုးသမီးများအတွက် စတိုင်ကျပြီး အသုံးဝင်သောဒီဇိုင်းဖြစ်သည်။ အိတ်ကပ်များစွာပါရှိပြီး နေ့စဉ်အသုံးပြုရန် သင့်တော်သည်။</p>', 'စတိုင်ကျပြီး အသုံးဝင်သော အမျိုးသမီးကျောပိုးအိတ်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>ပစ္စည်း: သားရေ<br>အရွယ်အစား: စံအရွယ်</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 1, 1, 1, 60),
(96, 'အမျိုးသမီးလက်ကိုင်အိတ်', '35000', '30000', 12, 'product-featured-96.png', '<p>ဤလက်ကိုင်အိတ်သည် ခေတ်မီပြီး အမျိုးသမီးများအတွက် အထူးသင့်တော်သည်။ သားရေဖြင့်ပြုလုပ်ထားပြီး တာရှည်ခံပါသည်။</p>', 'ခေတ်မီပြီး တာရှည်ခံသော အမျိုးသမီးလက်ကိုင်အိတ်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>ပစ္စည်း: သားရေ<br>အရွယ်အစား: စံအရွယ်</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 60),
(97, 'အမျိုးသမီးပခုံးလွယ်အိတ်', '32000', '28000', 18, 'product-featured-97.png', '<p>ဤပခုံးလွယ်အိတ်သည် ပေါ့ပါးပြီး နေ့စဉ်အသုံးပြုရန်အတွက် သင့်တော်သည်။ ပေါ်လီအက်စတာဖြင့်ပြုလုပ်ထားသည်။</p>', 'ပေါ့ပါးပြီး နေ့စဉ်အသုံးပြုရန် သင့်တော်သော ပခုံးလွယ်အိတ်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>ပစ္စည်း: ပေါ်လီအက်စတာ<br>အရွယ်အစား: စံအရွယ်</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 60),
(98, 'အမျိုးသားရေမွှေး Creed Aventus', '350000', '300000', 10, 'product-featured-98.png', '<p>Creed Aventus ရေမွှေးသည် အမျိုးသားများအတွက် ခေတ်မီပြီး စွဲမက်ဖွယ်ရနံ့ဖြစ်သည်။ သစ်သီးနှင့် သစ်သားရနံ့များပါဝင်ပြီး ညစာပွဲများအတွက် သင့်တော်သည်။</p>', 'ခေတ်မီပြီး စွဲမက်ဖွယ် Creed Aventus ရေမွှေး။', '<p>အမှတ်တံဆိပ်: Creed<br>ရနံ့အမျိုးအစား: သစ်သီး-သစ်သား<br>အရွယ်အစား: 100ml</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 1, 1, 1, 61),
(99, 'အမျိုးသားရေမွှေး Dior Sauvage', '320000', '280000', 12, 'product-featured-99.png', '<p>Dior Sauvage ရေမွှေးသည် အမျိုးသားများအတွက် လတ်ဆတ်ပြီး အားကောင်းသောရနံ့ဖြစ်သည်။ နေ့စဉ်အသုံးပြုရန်အတွက် သင့်တော်သည်။</p>', 'လတ်ဆတ်ပြီး အားကောင်းသော Dior Sauvage ရေမွှေး။', '<p>အမှတ်တံဆိပ်: Dior<br>ရနံ့အမျိုးအစား: လတ်ဆတ်ရနံ့<br>အရွယ်အစား: 100ml</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 61),
(100, 'အမျိုးသားရေမွှေး Tom Ford Oud Wood', '400000', '350000', 8, 'product-featured-100.png', '<p>Tom Ford Oud Wood ရေမွှေးသည် ထူးခြားပြီး ဇိမ်ခံရနံ့ဖြစ်သည်။ သစ်သားနှင့် အမွှေးအမျှင်ရနံ့များပါဝင်သည်။</p>', 'ထူးခြားပြီး ဇိမ်ခံ Tom Ford Oud Wood ရေမွှေး။', '<p>အမှတ်တံဆိပ်: Tom Ford<br>ရနံ့အမျိုးအစား: သစ်သား-အမွှေးအမျှင်<br>အရွယ်အစား: 100ml</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 1, 1, 1, 61),
(101, 'အမျိုးသားဘွတ်ဖိနပ် - အနက်ရောင်', '45000', '40000', 20, 'product-featured-101.png', '<p>ဤအမျိုးသားဘွတ်ဖိနပ်သည် အနက်ရောင်ဖြင့်ဒီဇိုင်းထုတ်ထားပြီး ပေါ့ပါးစတိုင်နှင့် အထူးအခါသမယများအတွက် သင့်တော်သည်။ သားရေဖြင့်ပြုလုပ်ထားပြီး တာရှည်ခံပါသည်။</p>', 'အနက်ရောင်ဘွတ်ဖိနပ်၊ ပေါ့ပါးစတိုင်နှင့် အထူးအခါသမယအတွက် သင့်တော်သည်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: 40, 41, 42<br>အရောင်: အနက်ရောင်<br>ပစ္စည်း: သားရေ</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 2, 1, 1, 5),
(133, 'မိန်းကလေးဝတ်စုံ - အပြာရောင်', '24000', '20000', 22, 'product-featured-133.png', '<p>ဤအပြာရောင်မိန်းကလေးဝတ်စုံသည် ခေတ်မီဒီဇိုင်းဖြစ်ပြီး နေ့စဉ်အသုံးပြုရန် သင့်တော်သည်။ ချည်သားဖြင့်ပြုလုပ်ထားသည်�।</p>', 'ခေတ်မီအပြာရောင်ဝတ်စုံ၊ ကလေးများအတွက် သင့်တော်သည်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: 10, 12, 14<br>အရောင်: အပြာရောင်<br>ပစ္စည်း: ချည်သား</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 27),
(134, 'ယောင်္ကျားလေးဖိနပ် - အနက်ရောင်', '30000', '25000', 20, 'product-featured-134.png', '<p>ဤအနက်ရောင်ယောင်္ကျားလေးဖိနပ်သည် ပေါ့ပါးစတိုင်ဖြစ်ပြီး ကျောင်းအသုံးပြုရန် သင့်တော်သည်။ သားရေဖြင့်ပြုလုပ်ထားသည်။</p>', 'ပေါ့ပါးအနက်ရောင်ဖိနပ်၊ ကျောင်းအသုံးပြုရန် သင့်တော်သည်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: 28, 30, 32<br>အရောင်: အနက်ရောင်<br>ပစ္စည်း: သားရေ</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 28),
(135, 'ယောင်္ကျားလေးဖိနပ် - အညိုရောင်', '32000', '27000', 18, 'product-featured-135.png', '<p>ဤအညိုရောင်ယောင်္ကျားလေးဖိနပ်သည် ဂန္ထဝင်စတိုင်ဖြစ်ပြီး ကျောင်းဝတ်စုံအတွက် သင့်တော်သည်။ သားရေဖြင့်ပြုလုပ်ထားသည်�।</p>', 'ဂန္ထဝင်အညိုရောင်ဖိနပ်၊ ကျောင်းဝတ်စုံအတွက် သင့်တော်သည်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: 28, 30, 32<br>အရောင်: အညိုရောင်<br>ပစ္စည်း: သားရေ</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 28),
(136, 'ယောင်္ကျားလေးဖိနပ် - မီးခိုးရောင်', '31000', '26000', 22, 'product-featured-136.jpg', '<p>ဤမီးခိုးရောင်ယောင်္ကျားလေးဖိနပ်သည် ခေတ်မီဒီဇိုင်းဖြစ်ပြီး နေ့စဉ်အသုံးပြုရန် သင့်တော်သည်။ သားရေနှင့်အထည်ပေါင်းစပ်ထားသည်။</p>', 'ခေတ်မီမီးခိုးရောင်ဖိနပ်၊ နေ့စဉ်အသုံးပြုရန် သင့်တော်သည်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: 28, 30, 32<br>အရောင်: မီးခိုးရောင်<br>ပစ္စည်း: သားရေ+အထည်</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 28),
(137, 'မိန်းကလေးဖိနပ် - ပန်းရောင်', '28000', '24000', 20, 'product-featured-137.png', '<p>ဤပန်းရောင်မိန်းကလေးဖိနပ်သည် နူးညံ့သောဒီဇိုင်းဖြစ်ပြီး ကျောင်းအသုံးပြုရန် သင့်တော်သည်။ သားရေဖြင့်ပြုလုပ်ထားသည်။</p>', 'နူးညံ့ပန်းရောင်ဖိနပ်၊ ကျောင်းအသုံးပြုရန် သင့်တော်သည်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: 28, 30, 32<br>အရောင်: ပန်းရောင်<br>ပစ္စည်း: သားရေ</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 29),
(138, 'မိန်းကလေးဖိနပ် - အဖြူရောင်', '29000', '25000', 18, 'product-featured-138.png', '<p>ဤအဖြူရောင်မိန်းကလေးဖိနပ်သည် ဂန္ထဝင်ဒီဇိုင်းဖြစ်ပြီး ကျောင်းဝတ်စုံအတွက် သင့်တော်သည်။ သားရေဖြင့်ပြုလုပ်ထားသည်။</p>', 'ဂန္ထဝင်အဖြူရောင်ဖိနပ်၊ ကျောင်းဝတ်စုံအတွက် သင့်တော်သည်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: 28, 30, 32<br>အရောင်: အဖြူရောင်<br>ပစ္စည်း: သားရေ</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 29),
(139, 'မိန်းကလေးဖိနပ် - အပြာရောင်', '28000', '24000', 22, 'product-featured-139.png', '<p>ဤအပြာရောင်မိန်းကလေးဖိနပ်သည် ခေတ်မီဒီဇိုင်းဖြစ်ပြီး နေ့စဉ်အသုံးပြုရန် သင့်တော်သည်။ သားရေနှင့်အထည်ပေါင်းစပ်ထားသည်။</p>', 'ခေတ်မီအပြာရောင်ဖိနပ်၊ နေ့စဉ်အသုံးပြုရန် သင့်တော်သည်�।', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: 28, 30, 32<br>အရောင်: အပြာရောင်<br>ပစ္စည်း: သားရေ+အထည်</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 29),
(140, 'ယောင်္ကျားလေးအသုံးအဆောင် - ဦးထုပ်', '15000', '12000', 25, 'product-featured-140.png', '<p>ဤယောင်္ကျားလေးဦးထုပ်သည် ပေါ့ပါးစတိုင်ဖြစ်ပြီး နေ့စဉ်အသုံးပြုရန် သင့်တော်သည်။ ချည်သားဖြင့်ပြုလုပ်ထားသည်။</p>', 'ပေါ့ပါးဦးထုပ်၊ ကလေးများအတွက် သင့်တော်သည်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: စံအရွယ်<br>အရောင်: အပြာရောင်<br>ပစ္စည်း: ချည်သား</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 30),
(141, 'ယောင်္ကျားလေးအသုံးအဆောင် - ခါးပတ်', '12000', '10000', 20, 'product-featured-141.png', '<p>ဤယောင်္ကျားလေးခါးပတ်သည် ဂန္ထဝင်ဒီဇိုင်းဖြစ်ပြီး ကျောင်းဝတ်စုံအတွက် သင့်တော်သည်။ သားရေဖြင့်ပြုလုပ်ထားသည်။</p>', 'ဂန္ထဝင်ခါးပတ်၊ ကျောင်းဝတ်စုံအတွက် သင့်တော်သည်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: စံအရွယ်<br>အရောင်: အနက်ရောင်<br>ပစ္စည်း: သားရေ</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 0, 1, 1, 30),
(142, 'ယောင်္ကျားလေးအသုံးအဆောင် - လည်စည်း', '10000', '8000', 22, 'product-featured-142.png', '<p>ဤယောင်္ကျားလေးလည်စည်းသည် ခေတ်မီဒီဇိုင်းဖြစ်ပြီး ကျောင်းဝတ်စုံအတွက် သင့်တော်သည်။ ချည်သားဖြင့်ပြုလုပ်ထားသည်။</p>', 'ခေတ်မီလည်စည်း၊ ကျောင်းဝတ်စုံအတွက် သင့်တော်သည်။', '<p>အမှတ်တံဆိပ်: မရှိ<br>အရွယ်အစား: စံအရွယ်<br>အရောင်: အပြာရောင်<br>ပစ္စည်း: ချည်သား</p>', 'အသစ်စက်စက်', 'Standard Return Policy', 1, 1, 1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(69, 1, 4),
(70, 4, 4),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(170, 3, 80),
(171, 2, 77),
(185, 2, 82),
(186, 6, 82),
(187, 17, 82),
(188, 17, 79),
(189, 6, 91),
(190, 6, 94),
(191, 2, 93),
(192, 10, 89),
(193, 2, 88),
(194, 2, 87),
(195, 2, 86),
(197, 2, 101),
(198, 5, 141),
(199, 6, 141),
(200, 17, 141),
(201, 17, 140),
(202, 3, 139),
(203, 10, 137),
(204, 2, 134),
(205, 3, 133);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(8, '8.jpg', 4),
(13, '13.jpg', 8),
(14, '14.jpg', 8),
(15, '15.jpg', 9),
(16, '16.jpg', 16),
(17, '17.jpg', 16),
(18, '18.jpg', 16),
(19, '19.jpg', 16),
(20, '20.jpg', 17),
(21, '21.jpg', 17),
(22, '22.jpg', 17),
(23, '23.jpg', 18),
(24, '24.jpg', 18),
(25, '25.jpg', 18),
(26, '26.jpg', 18),
(27, '27.jpg', 19),
(28, '28.jpg', 19),
(29, '29.jpg', 19),
(30, '30.jpg', 20),
(31, '31.jpg', 20),
(32, '32.jpg', 21),
(33, '33.jpg', 21),
(34, '34.jpg', 22),
(35, '35.jpg', 22),
(36, '36.jpg', 23),
(37, '37.jpg', 23),
(38, '38.jpg', 24),
(39, '39.jpg', 24),
(40, '40.jpg', 25),
(41, '41.jpg', 25),
(42, '42.jpg', 26),
(43, '43.jpg', 26),
(44, '44.jpg', 27),
(45, '45.jpg', 27),
(46, '46.jpg', 28),
(47, '47.jpg', 28),
(48, '48.jpg', 29),
(49, '49.jpg', 29),
(50, '50.jpg', 31),
(51, '51.jpg', 31),
(52, '52.jpg', 32),
(53, '53.jpg', 32),
(56, '56.jpg', 34),
(57, '57.jpg', 35),
(59, '59.jpg', 38),
(60, '60.jpg', 38),
(61, '61.jpg', 42),
(62, '62.jpg', 42),
(63, '63.jpg', 42),
(103, '103.jpg', 77),
(105, '105.png', 82),
(106, '106.png', 82),
(107, '107.png', 101),
(108, '108.png', 101);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(263, 26, 80),
(287, 3, 82),
(288, 4, 82),
(289, 5, 82),
(290, 6, 82),
(291, 7, 82),
(293, 29, 83),
(295, 29, 84),
(296, 29, 85),
(297, 1, 79),
(298, 2, 79),
(299, 3, 79),
(300, 1, 91),
(301, 2, 91),
(302, 3, 91),
(303, 2, 94),
(304, 3, 94),
(305, 4, 94),
(306, 29, 100),
(307, 29, 99),
(308, 29, 98),
(309, 27, 97),
(310, 27, 96),
(311, 27, 95),
(312, 3, 93),
(313, 4, 93),
(314, 5, 92),
(315, 6, 92),
(316, 3, 90),
(317, 4, 90),
(318, 5, 90),
(319, 3, 89),
(320, 1, 88),
(321, 2, 88),
(322, 3, 88),
(323, 4, 88),
(324, 5, 88),
(325, 3, 87),
(326, 4, 87),
(327, 5, 87),
(328, 18, 86),
(329, 19, 86),
(330, 20, 86),
(334, 16, 101),
(335, 17, 101),
(336, 21, 101),
(338, 26, 141),
(339, 27, 141),
(340, 27, 142),
(341, 2, 140),
(342, 3, 140),
(343, 27, 139),
(344, 27, 138),
(345, 26, 137),
(346, 27, 136),
(347, 28, 135),
(348, 28, 134),
(349, 27, 133);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'လွယ်ကူစွာ ပြန်ပို့နိုင်ခြင်း', 'ပစ္စည်းများကို ရက်ပေါင်း (၁၅) ရက်အတွင်း မည်သည့်မေးခွန်းမှ မမေးဘဲ ပြန်လည်ပေးပို့နိုင်ပါသည်။', 'service-5.png'),
(6, 'အခမဲ့ ပို့ဆောင်ခြင်း', 'မြန်မာနိုင်ငံအတွင်း အခမဲ့ ပို့ဆောင်ပေးမည်ဖြစ်ပြီး မကြာမီ အခြားနိုင်ငံများသို့လည်း တိုးချဲ့ပို့ဆောင်ပေးသွားမည် ဖြစ်ပါသည်။', 'service-6.png'),
(7, 'လျင်မြန်စွာ ပို့ဆောင်ခြင်း', 'မှာယူထားသော ပစ္စည်းများကို (၂၄) နာရီအတွင်း ပို့ဆောင်ပေးမည် ဖြစ်ပါသည်။', 'service-7.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_phone` text NOT NULL,
  `contact_fax` text NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` text NOT NULL,
  `receive_email_subject` text NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` text NOT NULL,
  `banner_registration` text NOT NULL,
  `banner_forget_password` text NOT NULL,
  `banner_reset_password` text NOT NULL,
  `banner_search` text NOT NULL,
  `banner_cart` text NOT NULL,
  `banner_checkout` text NOT NULL,
  `banner_product_category` text NOT NULL,
  `banner_blog` text NOT NULL,
  `cta_title` text NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` text NOT NULL,
  `cta_read_more_url` text NOT NULL,
  `cta_photo` text NOT NULL,
  `featured_product_title` text NOT NULL,
  `featured_product_subtitle` text NOT NULL,
  `latest_product_title` text NOT NULL,
  `latest_product_subtitle` text NOT NULL,
  `popular_product_title` text NOT NULL,
  `popular_product_subtitle` text NOT NULL,
  `testimonial_title` text NOT NULL,
  `testimonial_subtitle` text NOT NULL,
  `testimonial_photo` text NOT NULL,
  `blog_title` text NOT NULL,
  `blog_subtitle` text NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` text NOT NULL,
  `stripe_public_key` text NOT NULL,
  `stripe_secret_key` text NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.png', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Copyright © 2025. All Rights Reserved.', 'Ayar Street Hinthada\r\nAyarwaddy, Myanmar', 'opygui@gmail.com', '+959 677 303 556', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30416.45671704819!2d95.43436973675273!3d17.64745492662784!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c0c176ba50ebc3%3A0x9b275360dfae2fcd!2sHinthada%2C%20Myanmar%20(Burma)!5e0!3m2!1sen!2ssg!4v1748080993050!5m2!1sen!2ssg\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'opygui@gmail.com', 'Visitor Email Message from ShopNest', 'Thank you for sending email. We will contact you shortly.', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 4, 4, 4, 'ShopNest | Online Fashion Shop', 'shopnest, fashion shop, online shop, myanmar online shop', 'ShopNest is an online Fashion shop.', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.png', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'အထူးထုတ်ကုန်များ (Featured Products) ', 'ကျွန်ုပ်တို့၏ အထူးထုတ်ကုန်အားလုံးကို ဤနေရာမှ ကြည့်ရှုပါ။', 'နောက်ဆုံးထုတ်ကုန်များ (Latest Products) ', 'ကျွန်ုပ်တို့၏ နောက်ဆုံးထုတ်ကုန်အားလုံးကို ဤနေရာမှ ကြည့်ရှုပါ။', 'လူကြိုက်များသော ထုတ်ကုန်များ (Popular Products)', 'ကျွန်ုပ်တို့၏ လူကြိုက်များသော ထုတ်ကုန်အားလုံးကို ဤနေရာမှ ကြည့်ရှုပါ။', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'နောက်ဆုံးရ ပရိုမိုးရှင်းများနှင့် လျှော့ဈေးများရရှိရန် ကျွန်ုပ်တို့၏ သတင်းလွှာကို စာရင်းသွင်းပါ။', 'Kpay Name: ShopNest\r\nKpay Number: 09665898789', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: ABC Bank\r\nAccount Number: 1222320234444\r\nBranch Name: Yangon Branch\r\nCountry: Myanmar', '', '', '', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '0'),
(2, 167, '10'),
(3, 13, '2000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '5000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10'),
(29, '100ml');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpg', 'ShopNest မှ ကြိုဆိုပါတယ်။', 'နောက်ဆုံးပေါ် အမျိုးသမီးအသုံးအဆောင်ပစ္စည်းများကို အွန်လိုင်းမှ ဝယ်ယူလိုက်ပါ။', 'အမျိုးသမီး အသုံးအဆောင်များ ဝယ်ယူပါ။', 'http://localhost/shopnest/product-category.php?id=2&type=top-category', 'Center'),
(2, 'slider-2.jpg', 'ကုန်ပစ္စည်းအားလုံးကို ၅၀% လျှော့စျေး', 'ဤအထူးအခွင့်အရေးကို လက်လွတ်မခံလိုက်ပါနဲ့။ အချိန်အကန့်အသတ်ဖြင့်သာ။', 'ပိုမိုဖတ်ရှုမည်', 'http://localhost/shopnest/product-category.php?id=8&type=end-category', 'Left'),
(3, 'slider-3.jpg', '၂၄ နာရီ သုံးစွဲသူဝန်ဆောင်မှု', 'သင့်အတွက် အချိန်မရွေး ကူညီဖြေကြားပေးရန် အသင့်ရှိပါသည်။ မေးမြန်းလိုသည်များရှိပါက ဆက်သွယ်နိုင်ပါသည်။', 'ပိုမိုဖတ်ရှုမည်', 'http://localhost/shopnest/contact.php', 'Right');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/shopnest', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/shopnest', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', '', 'fa fa-youtube'),
(7, 'Instagram', '', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', '', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(30, 'mightyndk.mm@gmail.com', '2025-05-28', '2025-05-28 11:24:04', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'အမျိုးသား', 1),
(2, 'အမျိုးသမီး', 1),
(3, 'ကလေးများ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Admin', 'admin@gmail.com', '09600568522', '482c811da5d5b4bc6d497ffa98491e38', 'user-1.jpg', 'Super Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
