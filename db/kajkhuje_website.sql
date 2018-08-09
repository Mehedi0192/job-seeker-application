-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 01, 2018 at 05:27 AM
-- Server version: 5.6.39-83.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kajkhuje_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisement`
--

CREATE TABLE `tbl_advertisement` (
  `id` int(10) NOT NULL COMMENT 'PK',
  `company_name` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `ads_position` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_advertisement`
--

INSERT INTO `tbl_advertisement` (`id`, `company_name`, `website`, `ads_position`, `file_name`, `created_at`) VALUES
(1, '', '', 'Bottom Left', '1519808993.gif', '2018-02-28 15:09:53'),
(2, '', '', 'Bottom Middle', '1519808998.jpg', '2018-02-28 15:09:58'),
(3, '', '', 'Bottom Right', '1519809007.gif', '2018-02-28 15:10:07'),
(4, '', '', 'Right Sidebar', '1519809047.gif', '2018-02-28 15:10:47'),
(5, '', '', 'Right Sidebar', '1519809060.gif', '2018-02-28 15:11:00'),
(6, '', '', 'Right Sidebar', '1519809086.gif', '2018-02-28 15:11:26'),
(7, '', '', 'Right Sidebar', '1519809093.gif', '2018-02-28 15:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_article`
--

CREATE TABLE `tbl_article` (
  `id` int(10) NOT NULL COMMENT 'PK',
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_details` text NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_article`
--

INSERT INTO `tbl_article` (`id`, `slug`, `title`, `details`, `bn_title`, `bn_details`, `file_name`) VALUES
(1, 'about-us', 'About Us', 'Kajkhujee.com is an easy to use communication method for both job/work seekers and givers. kajkhujee.com has been created with the intention of creating a huge market of job/work seekers. Here, a job/work seeker can easily provide his or her data which will be available for anyone to see. As a result, employers can easily find the people they need. Here a job seeker or any other experienced or inexperienced worker can easily get involved. So both time and money can be saved while looking for work or a job. On the other hand, employers won\'t need to invest huge amounts of money to collect potential employees.', 'আমাদের সম্পর্কে', 'চাকুরী/কাজ গ্রহিতা এবং দাতার সহজ যোগাযোগের মাধ্যম হচ্ছে kajkhujee.com । চাকুরী/কাজ গ্রহিতার এক বৃহৎ বাজার সৃষ্টির লক্ষ্যে তৈরি করা হয়েছে kajkhujee.com । এখানে চাকুরী/কাজ গ্রহিতা তার Biodata সহজেই জমা দিতে পারবেন, যাহা সকলের জন্য উন্মুক্ত থাকবে। ফলে চাকুরী/কাজ দাতা সহজেই তার প্রয়োজনীয় ব্যক্তিকে খুজে নিতে পারবেন। এখানে চাকুরীজীবি অথবা যেকোন পেশার অভিজ্ঞ ও অনভিজ্ঞ সকলেই অংশগ্রহন করতে পারবেন। ফলে, চাকুরী/কাজ খোঁজার জন্য তাদের সময় ও অর্থ দুটোই বেঁচে যাবে। পক্ষান্তরে চাকুরী/কাজ দাতাগনের এখন আর টাকা খরচ করে বিভিন্ন মাধ্যমে বিজ্ঞাপন দেয়ার প্রয়োজন হবে না।', '1519016418.png'),
(2, 'about-job-seekers', 'About Job Seekers', 'In most cases we see that, job/work seekers struggle to understand where they need to go, where they need to provide their CV and how much money they need to spend. For these people, kajkhujee.com is bringing a great opportunity. It is very easy to enter your CV here. From which, employers can easily find the right person for their job. So, hurry and provide your CV today. Your dream job may be just around the corner.', 'চাকুরী প্রত্যাশীদের সম্পর্কে', 'অধিকাংশ ক্ষেত্রেই দেখা যায় যে, চাকুরী/ কাজ প্রত্যাশীরা কোথায় যাবেন, কোথায় সিভি জমা দিবেন অথবা টাকা খরচ করে বিভিন্ন স্থানে ছোটাছুটি করতে হয়। তাদের জন্য আমাদের এই সাইট তৈরি করা হয়েছে। এখানে খুব সহজেই আপনার জীবন বৃত্তান্ত জমা দিতে পারেন। যেখান থেকে চাকুরী কাজ দাতাগন তার প্রয়োজন মত ব্যাক্তিকে খুঁজে নিতে পারবেন। তাই দেরী না করে আজই আপনার সিভি জমা দিন। চাকুরী / কাজ আপনার কড়া নাড়ছে।', ''),
(3, 'about-employers', 'About Employers', 'Employers Usually collect their staff through various advertisement methods. And oftentimes, owners of small businesses have to collect workers in person. In either case, a lot of time and money is wasted. But now employers can save both their money and time by finding the employee that\'s right for them from the vast list of job/work seekers from kajkhujee.com.', 'চাকুরীদাতার সম্পর্কে', 'চাকুরী / কাজ দাতাগন সাধারনত তাদের প্রয়োজনীয় ব্যক্তিকে সংগ্রহ করার জন্য যেকোন প্রচার মাধ্যমে বিজ্ঞাপন দিয়ে থাকেন। আবার, ক্ষুদ্র ব্যবসায়ীগণ অনেক সময় ব্যক্তিগতভাবে সংগ্রহ করে থাকেন। উভয় ক্ষেত্রেই টাকা এবং সময়ের অপচয় হয়। এখন আমাদের সাইটের মাধ্যমে বিশাল চাকুরী/ কাজ প্রত্যাশীদের ভাণ্ডার থেকে তাদের প্রয়োজনীয় ব্যক্তিকে খুজে নিতে পারবেন। তাদের সময় এবং টাকা দুটোরই সাশ্রয় হবে।', ''),
(4, 'faq', 'FAQ', '<b> 1. What is kajkhujee.com ? </b> \r\nAnswer: kajkhujee.com is a place where people of any occupation can post their data easily. Any employer (person or business) can enter the site and easily find the person they need.\r\n\r\n<b> 2. How can I provide my data ? </b> \r\nAnswer: Posting data on kajkhujee.com is quick and easy. Just click the DATA POST button, fill up the form that comes up and then click the POST button below.(Your post will go live after being analyzed, it usually takes around an hour.)\r\n\r\n<b> 3. How can I delete my data ? </b> \r\nAnswer: If you wish to delete any data click CONTACT US and send us a message using your E-mail address. Other than that, your data gets deleted automatically after a month. If you want to keep your data live, you must resubmit it.\r\n\r\n<b> 4. For how long is my data going to be available ? </b> \r\nAnswer: For 30 days, if you don\'t want to remove it before that time.\r\n\r\n<b> 5. I entered some data but I can\'t find it. What\'s the problem ? </b> \r\nAnswer: Each and Every data is properly analyzed so as to make sure that nobody is cheated on in any way. So you have to wait one hour before you can see your data live. If you don\'t see your data within an hour, you\'ll be sent a message explaining why it didn\'t go live. This message will also provide you with information as to how to change your provided data.\r\n\r\n<b> 6. Where can I see the data that I provided ? </b> \r\nAnswer: You can see your data by clicking ALL JOB SEEKERS from kajkhujee.com\'s HOME PAGE.\r\n\r\n<b> 7. Who can see the data that I provided ? </b> \r\nAnswer: Any employer can check the data that you provided by clicking ALL JOB SEEKERS from our website and can call you if they\'re interested in hiring you.\r\n\r\n<b> 8. Can I provide multiple data entries ? </b> \r\nAnswer: No, you cannot provide multiple data entries. Until a person\'s first data entry is removed, that person cannot provide another one.\r\n\r\n<b> 9. Nobody is contacting me after I provided my data. What do I do ? </b> \r\nAnswer: Perhaps nobody has seen or liked the data you provided up to this point. Do not lose hope, any employer may find your data to their liking at any moment.\r\n\r\n<b> 10. Do I need to spend money to provide my data ? </b> \r\nAnswer: Currently, for a few days you will not need to spend any money to post your data. In the future, you will need to provide a small fee via bKash in order to post your data.', 'প্রশ্নোত্তর', '<b> ১। Kajkhujee.com কী? </b>\r\nউত্তরঃ Kajkhujee.com এমন একটি place যেখানে যে কোন পেশার লোক অতি সহজে তার ডাটা পোষ্ট করতে পারবেন। যে কোন কাজ দাতা ব্যক্তি/প্রতিষ্ঠান এই ওয়েব সাইটে ঢুকে সহজেই তার প্রয়োজনীয় ব্যক্তিকে বেছে নিতে পারবেন।\r\n\r\n<b> ২। আমি কিভাবে ডাটা জমা দিতে পারি? </b> \r\nউত্তরঃ Kajkhujee.com এ ডাটা পোষ্ট করা খুবই সহজ এবং দ্রুত।এজন্য DATA POST বাটনে ক্লীক করুন।নির্দেশিত ফর্মটি ফিলাপ করুন এবং নিচের POST বাটনটি ক্লীক করুন। (আপনার পোষ্টটি যাচাইয়ের পর এক ঘণ্টার মধ্যে লাইভ করা হবে।\r\n\r\n<b> ৩। কিভাবে আমার ডাটা মুছে ফেলতে পারি? </b> \r\nউত্তরঃ কোন ডাটা মুছে ফেলতে হলে CONTACT US এ গিয়ে আপনার ব্যবহৃত ইমেইল এড্রেসের মাধ্যমে আমাদের অবহিত করুন। তাছাড়া আপনার ডাটা এক মাস পর automatically মুছে যাবে। আপনি লাইভে থাকতে চাইলে পুনরায় ডাটা এণ্ট্রি করতে হবে।\r\n\r\n<b> ৪। Kajkhujee.com এ আমার ডাটা কত দিন থাকবে? </b> \r\nউত্তরঃ ৩০দিন থাকবে। যদি আপনি ডাটাটি মুছে না ফেলেন।\r\n\r\n<b> ৫। আমি একটা ডাটা দিয়েছি তা খুজে পাচ্ছিনা।কি সমস্যা? </b> \r\nউত্তরঃ সকল ডাটাই যাচাই বাছাই করা হয় যাতে Kajkhujee গ্রহিতা/দাতা কোন প্রকার প্রতারিত না হন।তবে ডাটাটি লাইভে দেখার জন্য এক ঘন্টা অপেক্ষা করতে হবে।যদি এক ঘন্টার মধ্যে আপনার ডাটা দেখতে না পান তবে কেন পাননি তার ব্যাখ্যা সহকারে মেইল পাবেন।যাহাতে কি কি সংশোধন করতে হবে তাহা লিপিবদ্দ থাকবে।\r\n\r\n<b> ৬। আমি কোথায় আমার জমাকৃত ডাটা দেখতে পাবো? </b> \r\nউত্তরঃ Kajkhujee.com এর HOME PAGE এ প্রদত্ত উপরের ALL JOB SEEKER বাটন ক্লীক করলে আপনার জমাকৃত ডাটা দেখতে পাবেন।\r\n\r\n<b> ৭। কারা আমার জমাকৃত ডাটা দেখতে পাবে? </b> \r\nউত্তরঃ যেকোন নিয়োগ কর্তাই আমাদের ওয়েব সাইট ওপেন করে ALL JOB SEEKER বাটন ক্লীক করলেই আপনার জমাকৃত ডাটা দেখতে পাবে এবং পছন্দ হলে আপনাকে কল করবেন।\r\n\r\n<b> ৮। আমি কি একাধিক ডাটা জমা দিতে পারবো? </b> \r\nউত্তরঃ না,একাধিক ডাটা জমা করতে পারবেন না। জমাকৃত ডাটা মুছে না যাওয়া পর্যন্ত একই ব্যক্তি ২য়টি জমা করতে পারবেন না।\r\n\r\n<b> ৯। আমি আমার ডাটা জমা দেয়ার পরেও কোন সাড়া পাচ্ছি না। তখন কি করতে পারি? </b> \r\nউত্তরঃ হয়তো তখনও কোন নিয়োগ কর্তা আপনার ডাটা পছন্দ করে নাই। তবে ধৈর্য্য হারাবেন না,যেকোনো সময় যেকোনো নিয়োগ কর্তার আপনার ডাটা পছন্দ হয়ে যেতে পারে।\r\n\r\n<b> ১০। এখানে আমার ডাটা জমা দিতে কোন টাকা লাগে? </b> \r\nউত্তরঃ আপাতত কয়েক দিন কোন টাকা লাগবে না। পরবর্তীতে বিকাশের মাধ্যমে ফি জমা দিয়ে ডাটা পোষ্ট করতে হবে।', ''),
(5, 'privacy-policy', 'Privacy & Policy', 'Please be informed of the following rules before using the kajkhujee.com website :\r\n<b>Rules:</b>\r\nIt is the responsibility of the user to follow the rules and regulations when uploading his or her data to kajkhujee.com. kajkhujee.com does not take responsibility for any false or illegal information presented as data. Data providers are responsible to ensure that, they do not provide false information or violate any other persons rights. Data providers and users also consent to the fact that, kajkhujee.com is free from any barriers, responsibilities and claims that may arise from using the website\'s services. Data providers consent to the fact that, they may provide their information to kajkhujee.com only when the provided information follows the rules of kajkhujee.com.\r\n<b>Ownership:</b>\r\nkajkhujee.com does not provide the right to use any method or technology available at present or may be available in the future in order to use, copy, change, adapt, disclose, translate, involve or distribute any of the website\'s contents.\r\nAny content, subject, software and service pertaining to kajkhujee.com is the property of kajkhujee.com. Any rights of the website such as : copyright, trademark, service mark and business names are also the property of kajkhujee.com. You are not allowed to disclose, use, install, post, shift, save or trade any of this website\'s contents without the permission of kajkhujee.com.\r\n<b>Data Disclosure:</b>\r\nData providers on kajkhujee.com must provide their full, honest information with a conscious, sound mind and without being persuaded by anybody else. The act of uploading one\'s data to kajkhujee.com is to reveal one\'s every information to everybody so that, users may contact data providers to give employment after being informed about the data providers\' detailed information. The purpose of kajkhujee.com is to make data be available to all. kajkhujee.com reserves the right to change or delete any irrelevent texts or images.\r\n<b>Secrecy:</b>\r\nkajkhujee.com does not keep any information of the website\'s users a secret. This is done for the job/work seekers own benifit.\r\n<b>Contact Method:</b>\r\nData providers on kajkhujee.com have to provide their address, phone number and e-mail as their contact method, all of these will be revealed to everybody.\r\n<b>Link Safety:</b>\r\nkajkhujee.com may have links or references to third-party websites. kajkhujee.com is not responsible for any matter regarding third-party websites. kajkhujee.com does not keep an eye on third-party websites. The moment when a user leaves kajkhujee.com and enters a third-party website is the moment when, the user must take responsibilities regarding the risk of entering that website.\r\n<b>Exchange:</b>\r\nData providers must pay a small exchange cost to kajkhujee.com in order to post their data. After payment and disclosure of Transaction ID to kajkhujee.com one may post their data. This data will be verified and be viewable in the website within an hour.\r\nN.B. kajkhujee.com reserves the rights to change these rules at any time, under any circumstances.\r\n<b>Safety:</b>\r\nEmployees and employers collected from kajkhujee.com must take responsibility regarding their own employment. No responsibility falls under kajkhujee.com in this regard. Both employers and employees must take responsibility of any mistakes made during the selection process.', 'গোপনীয়তা নীতি', 'Kajkhujee.com ওয়েব সাইট ব্যবহারের পূর্বে নিম্ন লিখিত শর্তাবলী সম্পর্কে যেনে নিন- \r\n<b>শর্তাবলীঃ</b>\r\nkajkhujee.com-এ data আপলোড করার সময় সকল আইন-কানুন মেনে চলা ব্যবহারকারির দায়িত্ব। প্রদেয় data এর তথ্যাদি বে-আইনি এবং অসৎ হলে দায়-দায়িত্ব kajkhujee.com এর উপর বর্তায়না। Data প্রদানকারী নিশ্চয়তা প্রদান করে যে,অসৎ তথ্য প্রদান এবং অন্য কোন ব্যক্তির অধিকার লংঘন করে না। Data দাতা এবং ব্যবহারকারীগণ এই মর্মে আরও সম্মতি প্রদান করে যে,এই সার্ভিস গ্রহনের কারনে উদ্ভুত সকল বাধ্য-বাধকতা,দায়-দায়িত্ব দাবি থেকে kajkhujee.com সম্পূর্ণভাবে মুক্ত। Data দাতাগণ সম্মতি প্রদান করেন যে,তাদের প্রদানকৃত তথ্যাদি kajkhujee.com এর শর্তাবলী মেনে kajkhujee.com এর ওয়েব সাইটে প্রদান করা যেতে পারে।\r\n<b>মালিকানাঃ</b>\r\nবর্তমানে প্রকাশিত বা ভবিষৎ এ আবিষ্কার হতে পারে এমন কোন মাধ্যমে বা প্রযুক্তিতে সকল বিষয় বস্তু ব্যবহার করা,নকল করা,পরিবর্তন করা,খাপখাওয়ানো,প্রকাশ করা,অনুবাদ করা,এবং সেইগুলি অন্তর্ভুক্ত ও বিতরন করার ক্ষেএে kajkhujee.com কাহাকেও অধিকার প্রদান করে না।kajkhujee.com এর উপাদান বিষয়বস্তু,সফটওয়ার ও সার্ভিস সমূহ kajkhujee এর সম্পত্তি।ওয়েব সাইটের যেকোন অধিকার যেমন সত্তাধিকার,ট্রেডমার্ক,ব্যবসায়িক নাম kajkhujee এর সম্পত্তি। kajkhujee এর অনুমতি ছাড়া এই সাইটের কোন বিষয় প্রকাশ করা,ব্যবহার করা,ইন্সটল করা,পোস্ট স্থান্তর,সংরক্ষন কিংবা আদান-প্রদান করা যাবে না।\r\n<b>Data প্রকাশঃ</b>\r\nkajkhujee.com এ data প্রদানকারীগণ স্বজ্ঞানে,সুস্থ মস্থিস্কে অন্যেরদ্বারা প্রভাবিত না হয়ে নিজের সত্য তথ্যাদি প্রদান করে।kajkhujee.com এ data আপলোড করার অর্থই হলো সকল তথ্য সকলের নিকট প্রকাশ করা।যাহাতে data প্রদানকারীর সম্পর্কে বিস্তারিত জেনে কাজ দেয়ার জন্য তাহার সহিত যোগাযোগ করতে পারে।প্রদেয় Data সকলের দৃষ্টিগোচর হওয়ার জন্যই kajkhujee.com ব্যাবহার করতে হয়।কোন অপ্রাশঙ্গিক লেখা বা ছবি পরিবর্তন বা বাতিল করার অধিকার kajkhujee.com সংরক্ষন করে।\r\n<b>গোপনিয়তাঃ</b>\r\nkajkhujee.com এ ব্যবহারকারী কোন তথ্যই গোপন করা হয় না।কাজ/চাকুরী প্রার্থীর সুবিধার জন্য কাজ/চাকুরী দাতার নিকট সকল তথ্যই প্রকাশ করা হয়।\r\n<b>যোগাযোগের মাধ্যমঃ</b>\r\nkajkhujee.com এ data প্রদান কারীরা যোগাযোগের মাধ্যম হিসেবে ঠিকানা,ফোন নাম্বার এবং email address ব্যবহার করবেন।যাহা সকলের জন্য প্রকাশ করা হবে।\r\n<b>লিঙ্ক সতর্কতাঃ</b>\r\nkajkhujee.com এ তৃতীয় পক্ষের ওয়েবসাইটের লিঙ্ক বা রেফারেন্স উল্লেখ থাকতে পারে।তৃতীয় পক্ষের কোন বিষয় বস্থুর জন্য kajkhujee.com দায়ী নয়।তৃতীয় পক্ষের ওয়েবসাইটের উপর নজর রাখা হয় না।যে মুহূর্তে ব্যবহারকারী kajkhujee.com ছেড়ে তৃতীয় পক্ষের সাইটে প্রবেশ করেন সে মুহূর্ত থেকে ব্যবহারকারী তার নিজ ঝুকিতে সেখানে অবস্থান করেন।\r\n<b>বিনিময়ঃ</b>\r\nkajkhujee.com এ data post করতে সামান্য বিনিময় মূল্য দিতে হয়। যাহা বিকাশের মাধ্যমে পরিশোধ করার পর ট্রানজেকশন আইডি উল্লেখ পূর্বক data post করা যাবে। যাহা যাচাই করে ১ঘন্টার মধ্যে দৃশ্যমান করা হবে।\r\n<b>সতর্কতাঃ</b>\r\nkajkhujee.com এর মাধ্যমে সংগৃহিত কাজদাতা এবং কাজ গ্রহিতা নিজ নিজ দায়িত্ব কাজ দিবেন এবং নিবেন।যে কোন অনাকাক্ষিত পরিস্থিতির জন্য kajkhujee দায়ী নয়।উভয়ই যাছাই বাছাইয়ে ভুল করলে নিজ নিজ দায়িত্বের উপর বর্তায়।\r\nবিঃদ্রঃ kajkhujee.com যে কোন সময় যে কোন অবস্থায় এই শর্তাবলি বাতিল,পরিবর্তন এবং সংযোজন করার অধিকার সংরক্ষন করে।', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banners`
--

CREATE TABLE `tbl_banners` (
  `id` int(10) NOT NULL COMMENT 'PK',
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_banners`
--

INSERT INTO `tbl_banners` (`id`, `file_name`) VALUES
(1, '1519020162.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` tinyint(1) NOT NULL COMMENT 'PK',
  `company_name` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `company_name`, `phone_no`, `email`, `address`, `logo`) VALUES
(1, 'KajKhujee', '01xxxxxxxxx', 'info@kajkhujee.com', 'Dhaka, Bangladesh', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `id` int(5) NOT NULL COMMENT 'PK',
  `district_name` varchar(255) NOT NULL,
  `bn_district_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`id`, `district_name`, `bn_district_name`) VALUES
(1, 'Dhaka', 'ঢাকা'),
(2, 'Faridpur', 'ফরিদপুর'),
(3, 'Gazipur', 'গাজীপুর'),
(4, 'Gopalganj', 'গোপালগঞ্জ'),
(5, 'Jamalpur', 'জামালপুর'),
(6, 'Kishoreganj', 'কিশোরগঞ্জ'),
(7, 'Madaripur', 'মাদারীপুর'),
(8, 'Manikganj', 'মানিকগঞ্জ'),
(9, 'Munshiganj', 'মুন্সিগঞ্জ'),
(10, 'Mymensingh', 'ময়মনসিং'),
(11, 'Narayanganj', 'নারায়াণগঞ্জ'),
(12, 'Narsingdi', 'নরসিংদী'),
(13, 'Netrokona', 'নেত্রকোনা'),
(14, 'Rajbari', 'রাজবাড়ি'),
(15, 'Shariatpur', 'শরীয়তপুর'),
(16, 'Sherpur', 'শেরপুর'),
(17, 'Tangail', 'টাঙ্গাইল'),
(18, 'Bogra', 'বগুড়া'),
(19, 'Joypurhat', 'জয়পুরহাট'),
(20, 'Naogaon', 'নওগাঁ'),
(21, 'Natore', 'নাটোর'),
(22, 'Nawabganj', 'নবাবগঞ্জ'),
(23, 'Pabna', 'পাবনা'),
(24, 'Rajshahi', 'রাজশাহী'),
(25, 'Sirajgonj', 'সিরাজগঞ্জ'),
(26, 'Dinajpur', 'দিনাজপুর'),
(27, 'Gaibandha', 'গাইবান্ধা'),
(28, 'Kurigram', 'কুড়িগ্রাম'),
(29, 'Lalmonirhat', 'লালমনিরহাট'),
(30, 'Nilphamari', 'নীলফামারী'),
(31, 'Panchagarh', 'পঞ্চগড়'),
(32, 'Rangpur', 'রংপুর'),
(33, 'Thakurgaon', 'ঠাকুরগাঁও'),
(34, 'Barguna', 'বরগুনা'),
(35, 'Barisal', 'বরিশাল'),
(36, 'Bhola', 'ভোলা'),
(37, 'Jhalokati', 'ঝালকাঠি'),
(38, 'Patuakhali', 'পটুয়াখালী'),
(39, 'Pirojpur', 'পিরোজপুর'),
(40, 'Bandarban', 'বান্দরবান'),
(41, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া'),
(42, 'Chandpur', 'চাঁদপুর'),
(43, 'Chittagong', 'চট্টগ্রাম'),
(44, 'Comilla', 'কুমিল্লা'),
(45, 'Cox\'s Bazar', 'কক্স বাজার'),
(46, 'Feni', 'ফেনী'),
(47, 'Khagrachari', 'খাগড়াছড়ি'),
(48, 'Lakshmipur', 'লক্ষ্মীপুর'),
(49, 'Noakhali', 'নোয়াখালী'),
(50, 'Rangamati', 'রাঙ্গামাটি'),
(51, 'Habiganj', 'হবিগঞ্জ'),
(52, 'Maulvibazar', 'মৌলভীবাজার'),
(53, 'Sunamganj', 'সুনামগঞ্জ'),
(54, 'Sylhet', 'সিলেট'),
(55, 'Bagerhat', 'বাগেরহাট'),
(56, 'Chuadanga', 'চুয়াডাঙ্গা'),
(57, 'Jessore', 'যশোর'),
(58, 'Jhenaidah', 'ঝিনাইদহ'),
(59, 'Khulna', 'খুলনা'),
(60, 'Kushtia', 'কুষ্টিয়া'),
(61, 'Magura', 'মাগুরা'),
(62, 'Meherpur', 'মেহেরপুর'),
(63, 'Narail', 'নড়াইল'),
(64, 'Satkhira', 'সাতক্ষীরা');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_general_category`
--

CREATE TABLE `tbl_general_category` (
  `id` int(10) NOT NULL COMMENT 'PK',
  `category_slug` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `bn_category_name` varchar(255) NOT NULL,
  `sorted_order` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_general_category`
--

INSERT INTO `tbl_general_category` (`id`, `category_slug`, `category_name`, `bn_category_name`, `sorted_order`) VALUES
(1, 'accounts-and-finance', 'Accounts and Finance', 'একাউন্টস এন্ড ফিন্যান্স', 0),
(2, 'administration', 'Administration', 'এডমিনিস্ট্রেশন', 0),
(3, 'agriculture', 'Agriculture', 'এগ্রিকালচার', 0),
(4, 'architecture', 'Architecture', 'আর্কিটেকচার', 0),
(5, 'air-lines', 'Air Lines', 'এয়ার-লাইন্স', 0),
(6, 'bank', 'Bank', 'ব্যাংক', 0),
(7, 'beauty-care-fitness', 'Beauty Care / Fitness', 'বিউটি কেয়ার / ফিটনেস', 0),
(8, 'commercial', 'Commercial', 'কমার্শিয়াল', 0),
(9, 'supply-chain', 'Supply Chain', 'সাপ্লাই চেইন', 0),
(10, 'creative-design', 'Creative Design', 'ক্রিয়েটিভ ডিজাইন', 0),
(11, 'customer-support-call-center', 'Customer Support / Call Center', 'কাস্টমার সাপোর্ট/ কল সেন্টার', 0),
(12, 'data-entry-computer-operator', 'Data Entry / Computer Operator', 'ডাটা-এন্ট্রি / কম্পিউটার অপারেটর', 0),
(13, 'diploma-technical-hand', 'Diploma / Technical Hand', 'ডিপ্লোমা / টেকনিক্যাল হ্যান্ড', 0),
(14, 'education', 'Education', 'এডুকেশন', 0),
(15, 'engineer', 'Engineer', 'ইঞ্জিনিয়ার', 0),
(16, 'garments-textile', 'Garments / Textile', 'গার্মেন্টস / টেক্সটাইল', 0),
(17, 'hotel-restaurant', 'Hotel / Restaurant', 'হোটেল / রেস্টুরেন্ট', 0),
(18, 'human-resource', 'Human Resource', 'হিউম্যান রিসোর্স', 0),
(19, 'lawyer', 'Lawyer', 'আইনজীবী', 0),
(20, 'media', 'Media', 'মিডিয়া', 0),
(21, 'medical-pharmacy', 'Medical / Pharmacy', 'মেডিক্যাল / ফার্মাসী', 0),
(22, 'nurses', 'Nurses', 'নার্স', 0),
(23, 'ngo', 'NGO', 'এন-জি-ও', 0),
(24, 'production', 'Production', 'প্রোডাকশন', 0),
(25, 'real-estate-developer', 'Real Estate / Developer', 'রিয়েল স্টেট / ডেভেলপার', 0),
(26, 'consultation', 'Consultation', 'কনসালটেন্স', 0),
(27, 'sales-marketing', 'Sales / Marketing', 'সেলস / মার্কেটিং', 0),
(28, 'ps-receptionist', 'P.S / Receptionist', 'পি-এস/ রিসিপশনিস্ট', 0),
(29, 'it', 'IT', 'আইটি', 0),
(30, 'trainer', 'Trainer', 'ট্রেইনার', 0),
(31, 'tutor', 'Tutor', 'টিউটর', 0),
(32, 'supplier', 'Supplier', 'সাপ্লায়ার', 0),
(33, 'contractor', 'Contractor', 'কন্ট্রাক্টর', 0),
(34, 'part-time', 'Part Time', 'পার্ট-টাইম', 0),
(35, 'freshener', 'Freshener', 'ফ্রেশনার', 0),
(36, 'others', 'Others', 'অন্যান্য', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_seeker`
--

CREATE TABLE `tbl_job_seeker` (
  `id` int(10) NOT NULL COMMENT 'PK',
  `name` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `date_of_birth` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `educational_qualification` text NOT NULL,
  `experience_year` varchar(10) NOT NULL,
  `experience_details` text NOT NULL,
  `general_category_id` int(5) NOT NULL COMMENT 'FK',
  `skill_level_id` tinyint(4) NOT NULL COMMENT 'FK',
  `professional_category_id` int(5) NOT NULL COMMENT 'FK',
  `district_id` int(5) NOT NULL COMMENT 'FK',
  `upazila_id` int(5) NOT NULL COMMENT 'FK',
  `contact_no` varchar(255) NOT NULL COMMENT 'Unique',
  `email` varchar(255) NOT NULL,
  `contact_no_last_three` varchar(3) NOT NULL,
  `category_type` varchar(255) NOT NULL COMMENT 'General/Professional',
  `file_name` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending' COMMENT 'Pending/Verified',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_job_seeker`
--

INSERT INTO `tbl_job_seeker` (`id`, `name`, `gender`, `date_of_birth`, `address`, `educational_qualification`, `experience_year`, `experience_details`, `general_category_id`, `skill_level_id`, `professional_category_id`, `district_id`, `upazila_id`, `contact_no`, `email`, `contact_no_last_three`, `category_type`, `file_name`, `status`, `created_at`) VALUES
(34, 'মো:পারভেজ খাঁন', 'পুরুষ', '০১/০১/১৯৯৬', 'গ্রাম:মৌলভীগাও\r\nপোস্ট অফিস:কাজলধারা\r\nপোস্ট কোড:৩২৩৪\r\nউপজেলা:কুলাউড়া \r\nজেলা:মৌলভীবাজার\r\nবিভাগ:সিলেট', 'এইচ,এস,সি-', 'ফ্রেশনার', '', 27, 2, 0, 52, 0, '০১৭৯৪৩৬১২৩৭', 'Parbeskhan07@gmail.com', '', 'General', '1529826005.jpg', 'Verified', '2018-06-24 13:40:05'),
(35, 'মো:পারভেজ খাঁন', 'পুরুষ', '০১/০১/১৯৯৬', 'গ্রাম:মৌলভীগাও\r\nপোস্ট অফিস:কাজলধারা\r\nপোস্ট কোড:৩২৩৪\r\nউপজেলা:কুলাউড়া \r\nজেলা:মৌলভীবাজার\r\nবিভাগ:সিলেট', 'এইচ,এস,সি-', 'ফ্রেশনার', 'ফ্রশনার হিসাবে কাজ করতে চাই।', 27, 2, 0, 52, 0, '01838541582', 'Parbeskhan07@gmail.com', '', 'General', '', 'Verified', '2018-06-24 13:41:43'),
(36, 'মো ইকবাল হোসেন', 'পুরুষ', '০৫/০৩/১৯৯৬', 'কামাল পাড়া,ফটিকা,হাটহাজারী,চট্টগ্রাম', 'ডিপ্লোমা ইন এনভায়রনমেন্টাল ইন্জিনিয়ার', 'ফ্রেশনার', '', 15, 2, 0, 43, 0, '১৭৮৮৩৬০৬৫৬', 'Mdiqbaljwel1997@gmail.com', '', 'General', '1529936531.jpg', 'Verified', '2018-06-25 20:22:11'),
(37, 'Jahidul Islam Tapu', 'পুরুষ', '10/01/1998', 'Uttara sector-11;road -10;house-7', 'ssc gpa 5 2015 from ghorashal pilot high school\r\n\r\n \r\nhsc gpa 4.92 2017 from milestone college', 'ফ্রেশনার', '', 34, 2, 0, 1, 0, '01988288969', '', '', 'General', '', 'Verified', '2018-06-26 17:06:14'),
(38, 'Jahidul Islam tapu', 'পুরুষ', '19/01/1998', 'Uttara, sector-11,Road -10, House - 7', 'SSC GPA-5 2015 from Ghorashal Pilot High School\r\n\r\n\r\nHSC GPA-4.92 2017 from Milestone College', 'ফ্রেশনার', 'no', 20, 2, 0, 1, 0, '01878658434', 'jahidhasantapujit865@gmail.com', '', 'General', '', 'Verified', '2018-06-26 17:12:21'),
(39, 'সুমি আমিন', 'মহিলা', '২৫/১১/১৯৯৮', 'খিলগাঁও, ঢাকা', 'অনার্স ৩য় বরষ', 'ফ্রেশনার', '', 28, 1, 0, 1, 0, '০১৬৩৮০৩৫৭১২', 'sumiamin016@gmail.com', '', 'General', '', 'Verified', '2018-06-27 09:51:39'),
(40, 'md.sorwar alam', 'পুরুষ', '05/07/1988', '119, shordar bahadur nagor jhautola, khulshi chittagong #c-1,2nd floor the palladium bulding bti', 'HSC', 'ফ্রেশনার', '', 16, 2, 0, 43, 0, '01914237440', 'alamsorwar9@gmail.com', '', 'General', '1530182665.jpg', 'Verified', '2018-06-28 16:44:26'),
(41, 'মোঃ রাজিব', 'পুরুষ', '০৫-০১-১৯৯৭', 'Sarulia,demra,Dhaka', 'HSC passed', '১ বছর', 'Japanese language', 34, 2, 0, 1, 0, '01770611980', 'razibjpn@gmail.com', '', 'General', '1531044314.jpg', 'Verified', '2018-07-08 16:05:14'),
(42, 'md imran', 'পুরুষ', '2000/03/18', 'mirpur 1 dhaka', 'ssc', '১ বছর', 'ja kono kaj', 17, 2, 0, 1, 0, '01777388435', 'imranakon76@gmail.com', '', 'General', '1531056575.jpg', 'Verified', '2018-07-08 19:29:36'),
(43, 'ইয়াসিন আহমেদ', 'পুরুষ', '২৫', 'ইকবাল রোড,মোহাম্মদপুর, ঢাকা', '', '', '', 0, 0, 7, 1, 503, '০১৮৪৫১৮০৪৯৪', '', '', 'Professional', '1531107944.jpg', 'Verified', '2018-07-09 09:45:45'),
(44, 'Md. Sami-Uz-Zaman', 'পুরুষ', '01/05/1987', 'College Road,Birganj,Dinajpur', 'M.Sc (Physics)', '৪ বছর', 'Assistant Teacher (Science)', 14, 2, 0, 26, 0, '01734411861', 'samibappi71@gmail.com', '', 'General', '1531114064.JPG', 'Verified', '2018-07-09 11:27:45'),
(45, 'Akhi', 'পুরুষ', '30-11-1995', 'rajshahi', 'honours', 'ফ্রেশনার', '', 11, 1, 0, 24, 0, '01796622909', 'israt30101995@gmail.com', '', 'General', '', 'Verified', '2018-07-09 15:23:47'),
(46, 'Shaon Molla', 'পুরুষ', '18.12.1997', 'Mirpur11/2,road 17, block A ,house 2/1,mirpur ,pallabi,Dhaka', 'H.S.C', 'ফ্রেশনার', '', 31, 2, 0, 1, 0, '01688805646', 'Shawonmolla66@gmail.com', '', 'General', '1531128309.jpeg', 'Verified', '2018-07-09 15:25:09'),
(47, 'Tusshar', 'পুরুষ', '2-10-1992', 'rajshahi', 'honours final year', '৪ বছর', '', 31, 1, 0, 24, 0, '01758212116', '', '', 'General', '', 'Verified', '2018-07-09 15:26:29'),
(48, 'kheya', 'মহিলা', '2-4-95', 'rajshahi', 'honours final year', 'ফ্রেশনার', '', 11, 1, 0, 24, 0, '01642853704', '', '', 'General', '', 'Verified', '2018-07-09 15:28:44'),
(49, 'Arup Barua', 'Male', '28/10/1989', 'East Nasirabad, Panchlaish, chattagram.', 'B.sc in Civil Engg.', '3 Year', '', 15, 2, 0, 43, 0, '01975696693', 'baruaarup2@gmail.com', '', 'General', '', 'Verified', '2018-07-09 15:37:14'),
(50, 'মোঃ আব্দুল্লাহ ইবনে সাইদ', 'পুরুষ', '৪-৮-১৯৯৩', 'ফার্মগেট, ঢাকা', 'বিএসসি অনার্স (গণিত)\r\nএমসসি (গণিত) অধ্যায়নরত', '৪ বছর', 'হোম টিউশনি ক্লাস ৪র্থ শ্রেনী থেকে ১০ শ্রেনী পর্যন্ত।৪বছর।', 31, 2, 0, 1, 0, '০১৭৭৩৬০৮৮৬৯', 'sksayedkhan69@gmail.com', '', 'General', '', 'Verified', '2018-07-09 18:44:33'),
(51, 'MOHAMMAD ABU ZAR HANIF', 'পুরুষ', '13.12.1995', 'THANTHANIA NEW PARA. BOGURA', 'fazil', '১ বছর', 'na', 21, 2, 0, 18, 0, '01746979823', 'abuzarhanif222@gmail.com', '', 'General', '', 'Verified', '2018-07-09 18:58:08'),
(52, 'MONIR HOSSAIN', 'Male', '1991-07-07', 'Community Center Road, Hasnabad, Dhaka Jute Mills, Keranigonj, Dhaka-1311.', 'Accademic Profile:\r\nName of Exam     Subject                              Name of Institute                                 Board/ University Class/ G.P.A Passing Year\r\n M.B.S                   Accounting        Mohammadpur Keyndriya College   National University              2 nd                        2013\r\n B.B.S                  Accounting        Donia College                                                    National University              2 nd                         2012\r\n H.S.C              Business Studies Nurul Amin College                                                Dhaka                                 3.80                 2008\r\n S.S.C              Business Studies Bhadrason G.C. Academy                                 Dhaka                                4.75                 2006', '4 Year', 'Accounts Manager At Sonali Textile Mills, \r\nShampur,  Dhaka-1204.', 1, 2, 0, 1, 0, '01927478045', 'mmonirhossain25@gmail.com', '', 'General', '1531143952.jpg', 'Verified', '2018-07-09 19:45:52'),
(53, 'MD KAMRIL ISLAM BHUIYAN', 'পুরুষ', '21/05/1987', '284, Bogan Vila, Jafrabad Road, Shankar, Dhanmondi,  Dhaka.', 'B.Sc. in CSE', '১০ বছর', '', 29, 2, 0, 1, 0, '01911751291', 'toncity91@gmail.com', '', 'General', '1531146374.jpg', 'Verified', '2018-07-09 20:26:14'),
(54, 'রাশেদুল ইসলাম', 'পুরুষ', '১৮/৩/১৯৯৫', 'ঢাকা', 'BBA', 'ফ্রেশনার', '', 1, 2, 0, 1, 0, '01710846240', 'rashedul00319@gmail.com', '', 'General', '1531150955.jpg', 'Verified', '2018-07-09 21:42:35'),
(55, 'Md Saiful Islam', 'Male', '04/12/1996', 'village :permollickpur,post:Lakhipasha, Sub-Dist:Lohahara, Dist:Narail.', 'S.S.C :Business study.\r\nDiploma in computer Engineer.', '1 Year', '', 25, 2, 0, 1, 0, '01985869598', 'abdurrahim96321@gmail.com', '', 'General', '', 'Verified', '2018-07-09 22:37:17'),
(56, 'Masum Billal', 'Male', '14/04/1994', 'Kazipara,Dhaka', 'B.Sc in Computer Science and Engineering', 'Freshener', '', 29, 2, 0, 1, 0, '01741158057', 'masumbucse@gmail.com', '', 'General', '1531155277.JPG', 'Verified', '2018-07-09 22:54:38'),
(57, 'Md Imran Khan', 'পুরুষ', '11/11/1996', '118/a,west shewrapara, Mirpur, Dhaka.', 'Diploma in computer Technology', '১ বছর', 'Qmatic Technology. It support.', 11, 2, 0, 1, 0, '01642953646', 'mk9067780@gmail.com', '', 'General', '', 'Verified', '2018-07-09 22:59:03'),
(58, 'মোঃ সাব্বির হোসেন', 'পুরুষ', '০১/০১/১৯৮২', 'পশ্চিম পটিয়া, ভেল্লাপাড়া', 'বি.এ(পাস)', '৫ বছর', '', 2, 2, 0, 43, 0, '০১৮১৯-৬৪৫৬৭৭', 'mohammaddsabbir126@gmail.com', '', 'General', '', 'Verified', '2018-07-09 23:36:34'),
(59, 'Babar Ali', 'Male', '30/12/1991', 'Vill : Char Palton, P.O : Shirajpur-1822, P.S : Singair, Dist : Manikganj', 'Diploma-In-Engineering(Environmental)', '3 Year', '1. Asst:Engineer(Maintaince)\r\n2. Sales Man\r\n3. Teacher(Part-Time)', 15, 2, 0, 1, 0, '01768-623420', 'babar17.kb@gmail.com', '', 'General', '1531158245.JPG', 'Verified', '2018-07-09 23:44:05'),
(60, 'পরিমল চন্দ্র বমর্ন', 'পুরুষ', '২২', 'গ্রাম :দক্ষিন বঠিনা\r\nডাকঘর : ফাড়াবাড়ি\r\nথানা ও জেলা : ঠাকুরগাঁও', '', '', '', 0, 0, 25, 1, 149, '01780817618', '', '', 'Professional', '1531161536.jpg', 'Verified', '2018-07-10 00:38:56'),
(61, 'MD abdur Rahim', 'Male', '01/10/1993', 'Satkhira', 'Masters of management', 'Freshener', 'No', 31, 2, 0, 1, 0, '01636376571', 'Rahim Abdur7903@gmail. Com', '', 'General', '1531186902.jpg', 'Verified', '2018-07-10 07:41:42'),
(63, 'Nazirul Islam', 'পুরুষ', '20/08/92', 'Dhaka', 'B.sc Honors in Psychology', '১ বছর', '', 35, 2, 0, 1, 0, '01752182484', 'nazirulislam2012@gmail.com', '', 'General', '1531196066.png', 'Verified', '2018-07-10 10:14:27'),
(64, 'রাজীব দেব', 'পুরুষ', '২৫', 'স্হায়ী ঠিকানাঃগ্রাম-জৈষ্ঠপুরা, ডাকঘর-জৈষ্ঠপুরা-৪৩৬৩,থানা-বোয়াখালী, জেলা -চট্রগ্রাম।\r\nবতমান ঠিকানাঃএ এস মেডিকো,৬নং কবি নজরুল  ইসলাম রোড,ফিরিঈী বাজার,কোতোয়ালী চট্রগ্রাম।', '', '', '', 0, 0, 29, 43, 70, '০১৮৪৩১৭৮১৮২', '', '', 'Professional', '1531197442.jpg', 'Verified', '2018-07-10 10:37:22'),
(65, 'Md. Khairul Islam', 'পুরুষ', '01-01-1998', 'Bolaigati, Ullapara, sirajganj', 'Diploma in Civil Engineer', 'ফ্রেশনার', '', 15, 3, 0, 1, 0, '01786-990890', 'a.ariful450@gmail.com', '', 'General', '', 'Verified', '2018-07-10 16:40:34'),
(66, 'Priya Nandy', 'মহিলা', '15.08.1993', 'Vill.- Kanchana, Post Office- Kanchana High School, Tana- Satkania, Dist.- Chattogram.', 'B. S. S. (Honours), M. S. S. (Economics)', 'ফ্রেশনার', '', 14, 1, 0, 43, 0, '01831817053', 'priya.nandy02@gmail.com', '', 'General', '1531224042.jpg', 'Verified', '2018-07-10 18:00:42'),
(67, 'Anupam Nandy', 'পুরুষ', '1985-04-20', 'Vill.- Kanchana, Post Office- Kanchana High School, Tana- Satkania, Dist.- Chattogram.', 'B. A. (Honours), M. A. (Bangla)', '৭ বছর', '', 2, 1, 0, 43, 0, '01917740879', 'anupam.nandy@gmail.com', '', 'General', '', 'Verified', '2018-07-10 18:05:22'),
(68, 'MUNMUN NANDY', 'মহিলা', '05.06.1989', 'Uttara 07 No Sector, Uttara, Dhaka.', 'B. B. S.(Pass)', 'ফ্রেশনার', '', 14, 2, 0, 1, 0, '01818744329', 'munmun.nandy89@gmail.com', '', 'General', '1531224462.jpg', 'Verified', '2018-07-10 18:07:42'),
(69, 'Babar Ali', 'Male', '30/12/1991', 'Vill : Char Palton, P.O : Shirajpur-1822,  P.S : Singair,  Dist : Manikganj.', 'Diploma-In-Engineering', '3 Year', '1. Asst:Engineer(Maintenance)\r\n2. Sales Man\r\n3. Teacher(Part-Time)', 15, 2, 0, 1, 0, '01768623420', 'babar17.kb@gmail.com', '', 'General', '1531226205.jpg', 'Verified', '2018-07-10 18:36:45'),
(70, 'Nadira Akter', 'পুরুষ', '31/12/1992', 'Motijheel', 'M.S.S Running', '১ বছর', 'I have an experience in customer care executive', 2, 2, 0, 1, 0, '01630153761', 'nadirakter016@gmail.com', '', 'General', '', 'Verified', '2018-07-10 21:49:01'),
(71, 'Md. Sohel Rana', 'পুরুষ', '30-12-1992', 'Vill: Krishnanagar, P.O+P.S: Jhikargacha, Zilla: Jessore.', 'SSC(Business Studies): 4.69, HSC(Business Studies): 4.50, BBA(Finance & Banking): 3.08 (Out Of 4.00), MBA Result: Appeared.', 'ফ্রেশনার', 'Computer Skill: 6 months Database Program.', 1, 2, 0, 1, 0, '01912242126', 'soheljhi@gmail.com', '', 'General', '', 'Verified', '2018-07-10 22:15:39'),
(72, 'মোঃ হেদয়েতুল ইসলাম চৌধুরী', 'পুরুষ', '০১-০১-১৯৯৬', 'মানিকপীর রোড,নয়াসড়ক,সিলেট', 'স্নাতক বাণিজ্য বিভাগ', '২ বছর', 'বন্ধু ফুড প্রোডাক্টস লিমিটেড\r\nমগবাজার,ঢাকা।', 27, 2, 0, 54, 0, '০১৭৩১৬৭৫৮৪১', 'hadayatechy@gmail.com', '', 'General', '', 'Verified', '2018-07-11 11:42:43'),
(73, 'Md Rubel hosen', 'পুরুষ', '18', 'Faridpur', '', '', '', 0, 0, 10, 2, 150, '01757671571', '', '', 'Professional', '', 'Verified', '2018-07-11 15:00:10'),
(74, 'MD.IMDADUL HOQUE', 'পুরুষ', '03-07-1997', 'Mirpur', 'Diploma In Engineering \r\nComputer', '২ বছর', 'Net Defance', 29, 2, 0, 1, 0, '01723594825', 'amdadulhoque825@gmail.com', '', 'General', '1531300285.jpg', 'Verified', '2018-07-11 15:11:25'),
(75, 'মো: সোহাগ আলম', 'পুরুষ', '২০-৫-১৯৯৫', 'ব্রাহ্মণবাড়িয়া সদর, ব্রাহ্মণবাড়িয়া', 'বি.বি.এ ( ফাইন্যান্স)\r\nরাজশাহী বিশ্ববিদ্যালয়।', 'ফ্রেশনার', '', 1, 1, 0, 24, 0, '০১৯৮৩০৭১৭৪৪', 'sohagalam136@gmail.com', '', 'General', '', 'Verified', '2018-07-11 15:53:48'),
(76, 'Anupam Nandy', 'পুরুষ', '20.04.1985', 'Vill.- Middle Kanchana, Post Office- Kanchana High School, Tana- Satkania, Dist.- Chattogram.', 'B. A. (Honours), M. A. (Bangla).', '৭ বছর', ' Monitoring induction/orientation program for field officer.\r\n Processing better administrative & Management.\r\n Ensuing of daily report.\r\n Work and monitoring also commercial side.\r\n Ensuring timely and proper as per Working plan.\r\n Reviewing and updating existing Ektee Bari Ektee Khamar-project policies & procedures. \r\n Prepare job description for every position. \r\n Maintaining all personal records in correct manner.\r\n Monitoring discipline & disciplinary action as per Law.\r\n Ensuring proper working environment as well as field officer facility as per law.', 14, 1, 0, 43, 0, '01919023703', 'anupam.nandy@gmail.com', '', 'General', '', 'Verified', '2018-07-11 17:31:07'),
(77, 'Md. Mizanur Rahman', 'পুরুষ', '05/01/1993', 'East Nakhalpara, Tejgaon,  Dhaka', 'B.B.A honours', '১ বছর', '', 27, 2, 0, 1, 0, '01723798993', '', '', 'General', '1531309413.jpg', 'Verified', '2018-07-11 17:43:33'),
(78, 'Anik Gopal', 'Male', '1-2-1998', '167/2 Agargone Taltala Dhaka 1207.', 'Pass Course (BBS)  \r\nInstitute   :  Govt. Bangabandhu College   \r\nSubject    :  BBS \r\nPassing Year   :  2nd year running \r\nBoard    :  National University \r\n\r\nHigher Secondary Certificate (H.S.C) \r\nInstitute   :  Sher-E- Bangla Nagar Govt. Boys High School  \r\nSubject    :  Business Studies \r\nResult    :  GPA-3.42 (Out of  5.00)\r\nPassing Year   :  2016\r\nBoard    :  Dhaka\r\n\r\nSecondary School Certificate (S.S.C) \r\nInstitute   :  Halim Foundation Model High School \r\nSubject    :  Business Studies \r\nResult    : GPA-4.00 (Out of  5.00)\r\nPassing Year   :  2013\r\nBoard    :  Dhaka', '2 Year', 'I have experience as a Customer Service Officer at Dress Pree Online Shop for 6 Month. \r\nI have experience as a Junior Accounts Officer at Kornofuly Multipurpose Co Operative Society (Sister consult of Jasim Group of Company) for 1 year.  \r\nI have experience as a Sales Man at Bay Emporiar for 6 Month. \r\n\r\n\r\nAria of Experience \r\n\r\nStudents Consultation \r\nMedical & Diagnostic Relative Work. \r\nCustomer Service', 11, 2, 0, 1, 0, '01625937827', 'arnbd.net@gmail.com', '', 'General', '1531310627.jpg', 'Verified', '2018-07-11 18:03:47'),
(79, 'Alamin hossen', 'পুরুষ', '20', 'Ashulia,saver,dhaka', '', '', '', 0, 0, 1, 1, 149, '01839051401', '', '', 'Professional', '1531316021.jpg', 'Verified', '2018-07-11 19:33:42'),
(80, 'মুহাম্মদ তৌহিদুল ইসলাম', 'পুরুষ', '২০-০৬-১৯৯২', 'দেবীগঞ্জ, পঞ্চগড়,', 'এম এ', '১ বছর', 'শোরুম মেনেজার', 36, 2, 0, 1, 0, '০১৭২৪৬৭৬৮৯৬', '', '', 'General', '', 'Verified', '2018-07-12 07:24:14'),
(81, 'MD RAYHAN AHAMAD', 'Male', '8/9/1994', 'Amainbazar savar dhaka', 'RAC', '3 Year', 'Lion gorop 2 year jon korche akhon walton soroom a ahache', 6, 2, 0, 1, 0, '01933238762', '', '', 'General', '', 'Verified', '2018-07-12 08:50:09'),
(82, 'সোহাগ হোসেন', 'পুরুষ', '১২/০৫/১৯৯২', 'গ্রাম: কাশারী খোলা।পো: কাদুটি বাজার।থানা: চান্দিনা। জেলা: কুমিল্লা।', 'এস এস সি', '২ বছর', 'কোয়ালিটি।অন্য যেকোনো কাজ করতে পারবো।', 16, 2, 0, 43, 0, '০১৭৮৮৪৫১৯২৭', '', '', 'General', '1531366148.jpg', 'Verified', '2018-07-12 09:29:08'),
(83, 'AKM SAMRAT', 'পুরুষ', '05/01/1982', 'UNCHURKHI. GABTALI. BOGRA. RAJSHAHI.', 'B.A', '২ বছর', 'Agent Banking of Agrani Doer Banking', 1, 2, 0, 18, 0, '01711416280', 'akm.samrat1@gmail.com', '', 'General', '1531366295.jpg', 'Verified', '2018-07-12 09:31:35'),
(84, 'Mohammad Reyad', 'Male', '06/07/1989', 'North Agrabad, Rongi Para, 24no word.\r\nP.S. Halishahar\r\nP.O. Rampur\r\nDist. Chattogram', 'M.Sc(chemiatry), 2nd class, National University, \r\nB.Sc(hons) chemistry, 2nd class, National University', 'Freshener', '', 21, 2, 0, 43, 0, '01818132262', 'mdriyadctg62@gmail.com', '', 'General', '', 'Verified', '2018-07-12 09:59:13'),
(85, 'রানা', 'পুরুষ', '15/11/1999', 'জেলা:নোয়াখালী,,,\r\nউপজেলা:সোনাইমুড়ি\r\nডাকঘর:আমিরাবাদ', 'এসএসসি পাস science group থেকে', 'ফ্রেশনার', 'Na', 11, 3, 0, 1, 0, '01879064538', 'ranakhan127410@gmail.com', '', 'General', '', 'Verified', '2018-07-12 10:03:02'),
(86, 'Labani Devi', 'Female', '10/06/1993', 'Baterygoli.Dampara ,Chittagong', 'S.S.C (GPA :4.63)sub : Humanities, H.S.C(GPA:3.70)Sub:Humanaties Honours( GPA:2.88)sub: Bangla', 'Freshener', '', 23, 2, 0, 43, 0, '01966191690', 'labani.devi82@gmail.com', '', 'General', '', 'Verified', '2018-07-12 12:28:28'),
(87, 'Faisal Ahmed', 'Male', '01/08/1987', 'Address: House Name: Sujon Villa, Nobody Housing Society, House-14,Road-9,Block-A, Mohammadpur,Dhaka-1207', 'B. Sc (Honors) in Computer Science and Engineering', '8 Year', '1. Assistant Manager- IT & Support ( November 1, 2017 - Continuing)\r\n  Star Tech & Engineering Ltd. \r\nCompany Location : 218/1, 3rd floor, Begum Rokeya Sharanee Taltala, Mirpur, Dhaka-1216. \r\nDepartment: IT \r\nDuties/Responsibilities: \r\nsoftware, network, Wi-FI router, POS terminal, printers, computers, UPS etc.\r\nProvide IT supports to user end for their desktop, laptops, wireless router, scanners, printers and other IT assets\r\nPerform data backups and disaster recovery operations.\r\nConfigure & Maintain networks printers, access control, attendance system, CCTV and PABX phone.\r\nDevelop and implement standard policies and procedure for information technology.\r\nOther tasks as and when given by the management. \r\n2. Sr. Executive-IT ( January 1, 2014 - October 31, 2017)\r\n  R Data Technology (BD) Ltd. \r\nCompany Location : Motijheel Dhaka \r\nDepartment: IT \r\nDuties/Responsibilities: \r\n1.Implementation and maintenance of office LAN, servers, workstations and other equipment and services.\r\n2.Install & Configuration hardware, operating system &#40;Windows&#41; Servers, Router and other software applications.\r\n3.Adequate knowledge on Hardware (PC/Printer) to isolate/ diagnosis the problem.\r\n4. Good knowledge on Wifi LAN, WAN, Wireless Communication.\r\n5. Monitoring network/Provide timely reports of network Performance and failures.\r\n6. Knowledge of computer operation and IP addressing\r\n7.Basic knowledge on Microsoft Operating System\r\n8.Basic knowledge about Computer Accessories\r\n9.Sound knowledge on Internet, Email, and Networking\r\n10.Able to provide solution for hardware/software error\r\n11.Provide On-site support to corporate customer\r\n12.Crystal Report 13.Install software.14.Installing and configuring computer hardware, software, systems, networks, printers and scanners.13.Maintenance & Support of ERP Solution. 14. Trouble shooting for existing software\r\n3. IT Executive Officer ( July 1, 2011 - December 31, 2013)\r\n  Rural Services Foundation. (An Initiative of Rahimafrooz) \r\nCompany Location: Dhaka \r\nDepartment: IT \r\nDuties/Responsibilities: \r\n1. User support-windows, antivirus, office, outlook, Eudora, printer, mapping 2. Give a computer with fresh copy of windows, latest Office package, and latest browser and updated Antivirus 3. User data backup and restore 4. Check whether the UPS, Keyboard, Mouse and monitor is working fine 5. Troubleshoot and maintenance Desktop, Laptop, notebooks, LAN, e-mail, Internet, IP base network Printer, UPS. 6. User end support (Computer service, installation of Windows 7, different Email client configuration). 8. Active directory install and maintenance', 29, 2, 0, 1, 0, '01711248291', 'faisal9188@yahoo.com', '', 'General', '1531390365.jpg', 'Verified', '2018-07-12 16:12:45'),
(89, 'Md Kibria Hasan', 'পুরুষ', '07/02/1997', 'Arappur, Khajura Gram, Jhenaidah', 'SSC', '৪ বছর', 'Computer Expert 4Years\r\nICT DIVISION \r\nFreelancer Of Jhenaidah', 12, 1, 0, 58, 0, '01911407248', 'skibriajh@gmail.com', '', 'General', '1531391367.jpg', 'Verified', '2018-07-12 16:29:27'),
(90, 'tania aktar', 'মহিলা', '18', 'south badda..gulshan b 67', '', '', '', 0, 0, 29, 1, 495, '01992773378', '', '', 'Professional', '', 'Verified', '2018-07-12 17:21:08'),
(91, 'Md Ismail bepary', 'পুরুষ', '05/05/1998', 'Koril adosho nogar banani dhaka', 'HSC', 'ফ্রেশনার', '', 8, 2, 0, 1, 0, '01795894904', 'baparyismail1998@gmail.com', '', 'General', '1531396269.jpg', 'Verified', '2018-07-12 17:51:10'),
(92, 'Md Ismail bepary', 'পুরুষ', '05/05/1998', 'Koril adosho nogar banani dhaka', 'HSC', 'ফ্রেশনার', '', 8, 2, 0, 1, 0, '01975894904', 'baparyismail1998@gmail.com', '', 'General', '', 'Pending', '2018-07-12 17:56:30'),
(93, 'Reffat ara', 'Female', '17/2/1991', 'Maymenshing', 'B.Sc.in textile Engineering', '3 Year', 'Merchandising', 16, 2, 0, 10, 0, '01724752069', 'Reffat.muktamcr@gmail.com', '', 'General', '1531400486.jpg', 'Verified', '2018-07-12 19:01:27'),
(94, 'Shefali Akter Shetu', 'Female', '15/08/1994', 'Station road, Tongi,Gazipur', 'Master in Development Study', '1 Year', 'good', 23, 2, 0, 1, 0, '01911748604', 'shefaislam001@gmail.com', '', 'General', '', 'Verified', '2018-07-12 22:57:40'),
(95, 'ইয়াকুব আলী', 'পুরুষ', '২১', 'মাদারীপুর', '', '', '', 0, 0, 10, 1, 498, '০১৫৫১৭৮৪৮৮২', '', '', 'Professional', '', 'Verified', '2018-07-12 22:58:06'),
(96, 'Shefali Akter Shetu', 'Male', '15/08/1994', 'Station road, Tongi,Gazipur', 'Master in Development Study', '1 Year', 'good', 23, 2, 0, 1, 0, '01748098975', 'shefaislam001@gmail.com', '', 'General', '', 'Pending', '2018-07-12 23:06:05'),
(97, 'মনিরুল ইসলাম', 'পুরুষ', '৩০/১১/১৯৮৮', 'মো:মনিরুল ইসলাম\r\nমো:আইয়ুব আলি সরদার\r\nডা:+পো:- বেদকাশী\r\nথানা: কয়রা, খুলনা', 'এইস, এস,সি', '৪ বছর', '', 12, 2, 0, 59, 0, '০১৯৩২৬৯০২৮৫', 'jweelrana100@gmail.com', '', 'General', '', 'Verified', '2018-07-13 00:14:45'),
(98, 'Md.sohel rana', 'পুরুষ', '26', 'loharpara,ambarkhana,sylhet.', '', '', '', 0, 0, 1, 54, 480, '01947306908', '', '', 'Professional', '', 'Verified', '2018-07-13 00:42:58'),
(99, 'Md.Sohel Rana', 'পুরুষ', '26', 'Loharpara,Ambarkhana,Sylhet.', '', '', '', 0, 0, 2, 54, 480, '01745588080', '', '', 'Professional', '', 'Pending', '2018-07-13 00:57:20'),
(100, 'Mohammad Arfat', 'পুরুষ', '08-01-2001', 'nazirpara, panchlaish, ctg', '', '', '', 0, 0, 29, 43, 506, '01843002638', '', '', 'Professional', '1531437054.jpg', 'Verified', '2018-07-13 05:10:54'),
(101, 'Md Masim Mia', 'পুরুষ', '31-12-1995', 'Narsingdi', 'Diploma Enginiar', '১ বছর', '', 12, 2, 0, 1, 0, '01960153411', 'masumhassan861@gmail.com', '', 'General', '', 'Verified', '2018-07-13 09:38:06'),
(102, 'Md Mojahidul Islam', 'Male', '03/07/1999', 'BM College, Barisal.', 'HSC 2016 Science 4.17\r\nSSC 2014 Science 4.81', '1 Year', 'I Love to Freelancing. I am good at ON Page, OFF Page SEO, Keyword Researching. About 1 years I work in Fiverr.', 36, 2, 0, 35, 0, '01747012414', 'hellomojahid@gmail.com', '', 'General', '1531458755.jpg', 'Verified', '2018-07-13 11:12:35'),
(103, 'Kawsar', 'পুরুষ', '10/08/1996', 'Lalbag,Dhaka', 'Hsc 4.50 GPA (passed) and BBA (pass) course still studying', 'ফ্রেশনার', '', 34, 2, 0, 1, 0, '01941677994', 'Tusharahmad6@gmail.com', '', 'General', '1531464785.jpg', 'Verified', '2018-07-13 12:53:06'),
(104, 'অভ্যর্থনাকারী', 'পুরুষ', '২১', 'উত্তর টোলারবাগ', '', '', '', 0, 0, 29, 1, 504, '01687850259', '', '', 'Professional', '1531471756.jpg', 'Verified', '2018-07-13 14:49:17'),
(105, 'Kazi Newaz', 'পুরুষ', '19/04/1992', 'Uttar pangaon, Keranigonj, Dhaka.', 'Master\'s', 'ফ্রেশনার', '', 14, 2, 0, 1, 0, '01951697864', 'mnewaz17@gmail.com', '', 'General', '1531475005.jpg', 'Verified', '2018-07-13 15:43:26'),
(106, 'মো: মনিরুল ইসলাম', 'পুরুষ', '১৭/০৭/১৯৯১', 'কালা মিয়ার বাড়ি,বাবুনগর,হাসানহাট,বেগমগঞ্জ, নোয়াখালি', 'বি.এস.সি,এম.এস.সি', 'ফ্রেশনার', '', 9, 2, 0, 49, 0, '০১৮৫০৮৩১০০১', 'sajjadmonir3@gmail.com', '', 'General', '1531475379.jpg', 'Verified', '2018-07-13 15:49:39'),
(107, 'Mahfoza Akter', 'Female', '07/02/1998', 'Vill: Darani Para, P.O: Khaliyajani,  P.S: Mirzapur,  Dist: Tangail', 'Diploma in Engineering\r\nInstitute: Tangail Polytechnic Institute\r\nDepartment : Electrical\r\nPassing Year: 2018\r\nResult : Appeared\r\nBoard : Bangladesh Technical Education Board \r\n\r\nSecondary School Certificate\r\nInstitute: Darani Para High School\r\nGroup : Science\r\nPassing Year: 2014\r\nResult : GPA-5.00\r\nBoard : Dhaka\r\nTraining Name: Computer Office Application\r\nInstitute: NCC Institute of Computer Education, Tangail\r\nDuration : 6 months\r\nYear : 2017', 'Freshener', '', 13, 2, 0, 1, 0, '01768481387', 'mahfoza. akter18@gmail.com', '', 'General', '', 'Verified', '2018-07-13 15:51:22'),
(108, 'Abu sahid', 'Male', '22', 'East shewrapara', '', '', '', 0, 0, 10, 44, 83, '01868314665', '', '', 'Professional', '', 'Verified', '2018-07-13 15:52:28'),
(109, 'Mahfoza Akter', 'Male', '07/02/1998', 'Vill: Darani Para, P.O: Khaliyajani, P.S: Mirzapur, Dist: Tangail', 'Diploma in Engineering\r\nInstitute: Tangail Polytechnic Institute\r\nDepartment : Electrical\r\nPassing Year: 2018\r\nResult: Appeared\r\nBoard : Bangladesh Technical Education Board\r\n\r\nSecondary School Certificate\r\nInstitute: Darani Para High School\r\nGroup : Science\r\nPassing  Year: 2014\r\nResult :GPA-5.00\r\nBoard :Dhaka\r\nTraining name: Computer Office Application\r\nInstitute: NCC Institute of Computer Education Board\r\nDuration : 6 month\r\nYear: 2017', 'Freshener', '', 13, 2, 0, 1, 0, '+8801768 481387', 'mahfoza. akter18@gmail.com', '', 'General', '', 'Pending', '2018-07-13 16:07:45'),
(110, 'Md.Oashikur Rahman', 'পুরুষ', '24-021990', 'uttara,Dhaka', 'MBA', '১ বছর', 'Production,Planning & Merchandising  Coordinator (Ananta Group)', 16, 2, 0, 1, 0, '01716259801', 'oashikur.shourav@gmail.com', '', 'General', '1531483988.jpeg', 'Verified', '2018-07-13 18:13:08'),
(111, 'MD. Rasal mahamud', 'Male', '15/04/93', 'Mohora chandgao ctg', 'SSC 3.63\r\nHSC 5.00\r\nBBA 2.62\r\nMBA 3.13', 'Freshener', '', 6, 2, 0, 43, 0, '01520102642', 'rasalmahamudnahid@gmail.com', '', 'General', '', 'Verified', '2018-07-13 18:24:01'),
(112, 'নুদরাত জাহান রিয়া', 'পুরুষ', '১৯/০৫/১৯৯৪', 'দনিয়া,যাত্রাবাড়ী, ঢাকা', 'অনার্স (৪র্থ বর্ষ)', 'ফ্রেশনার', '', 11, 2, 0, 1, 0, '০১৯৪৩৪৫১৯৫৮', 'nudratjahanriya74@gmail.com', '', 'General', '', 'Verified', '2018-07-13 18:48:21'),
(113, 'Nudrat Jahan Riya', 'Female', '19/5/1994', 'Dhonia,Jatrabari,Dhaka', 'BBA( 4th yr)', 'Freshener', '', 23, 2, 0, 1, 0, '01943451958', 'nudratjahanriya74@gmail.com', '', 'General', '1531486231.jpg', 'Verified', '2018-07-13 18:50:31'),
(114, 'Md.Shamim Mia', 'পুরুষ', '05/06/1997', 'Abdullahbagh,NorthBadda,Dhaka', 'Hsc & Hon\'s 3 rd year (Continue)', 'ফ্রেশনার', '', 35, 3, 0, 1, 0, '+8801750853776', 'No', '', 'General', '1531486547.JPG', 'Verified', '2018-07-13 18:55:48'),
(115, 'Md.Muntasir Azad', 'Female', '08/03/1993', '45/4 omarali lan,Rampura, Dhaka', 'B.B.A in management', 'Freshener', '', 18, 2, 0, 1, 0, '01781071110', 'azadsourav93@gmail.com', '', 'General', '', 'Verified', '2018-07-13 20:34:38'),
(116, 'Abdul Khalek', 'পুরুষ', '11-4-1997', 'village: North Sreepur, Post : Sreepur Bazar,  Ps : Hajigonz, Dist: Chandpur', 'Intermediate', '১ বছর', 'Marketing sells man\r\nand computer Package program microsoft world,excel, power point internet browsing etc.', 27, 2, 0, 1, 0, '01770236328', 'khalekabdul517@gmail.com', '', 'General', '', 'Verified', '2018-07-13 20:39:27'),
(117, 'Sabrina jahan', 'মহিলা', '01/04/1996', 'Agrabad,Chittagong', 'B.B.A Final Year', 'ফ্রেশনার', '', 34, 2, 0, 43, 0, '01816609387', 'sinanctg41@gmail.com', '', 'General', '', 'Verified', '2018-07-13 21:30:02'),
(118, 'RAHAD HOSSAIN', 'পুরুষ', '02-03-1998', 'ludyha falcon; kamolnager', 'Diploma in Engineer(Electronics)', '১ বছর', 'Air - Condition company', 13, 2, 0, 1, 0, '01729985782', 'rahad7000@gmail.com', '', 'General', '', 'Verified', '2018-07-13 23:13:29'),
(119, 'Md Abdullah Al Mahmud', 'পুরুষ', '15/6/2000', 'কালিয়াকৈর, গাজীপুর', 'Hsc pass', 'ফ্রেশনার', 'আমি নতুন কোনো অভিজ্ঞতা নেই', 34, 3, 0, 1, 0, '01922426397', 'abdmahmud2018@gmail.com', '', 'General', '1531502157.jpg', 'Verified', '2018-07-13 23:15:57'),
(120, 'MST.SHIULY KHATUN', 'Female', '05/10/1993', 'Permanent :\r\nThana+post:Durgapur\r\nVillage:Sukhandighi\r\nTemporary :hatemkha,boalia ,Rajshahi', 'SSC:GPA=4.88,Year:2009-commerce \r\n\r\nHSC:GPA=4 .90,year 2011-commerce', '1 Year', 'Merket research of field interviewer', 11, 2, 0, 24, 0, '01788002128', 'Mstshiuly8@gmai.com', '', 'General', '1531505112.jpg', 'Verified', '2018-07-14 00:05:12'),
(121, 'মশিউর রহমন', 'পুরুষ', '০৬/০২/১৯৮৭', 'গ্রাম : মাহমুদনগর (ফরিদপুর) উপজেলা : শাল্লা, জেলা : সুনামগঞ্জ', 'বিএসএস (পাস)', '২ বছর', '০১/০৩/২০১৬ ইং থেকে বাংলাদেশ নির্বাচন কমিশন আইডিয়া প্রকল্পে ডাটা এন্টি অপারেটর পদে কর্মরত।', 12, 2, 0, 53, 0, '01716044746', 'masiurrahman712@gmail.com', '', 'General', '', 'Verified', '2018-07-14 01:03:11'),
(122, 'Duronto Gomes', 'Male', '13/01/1997', '1-C/1-A, Pallabi, Mirpur 12, Dhaka 1216', 'Diploma in Engineering in Electronics Technology', 'Freshener', '', 13, 2, 0, 1, 0, '01775378444', 'durontogomes95@gmail.com', '', 'General', '1531548343.jpg', 'Verified', '2018-07-14 12:05:43'),
(123, 'সাজনীন আক্তার', 'মহিলা', '২৪/০৭/১৮', '৮১/এ,ফাকিরাপুল,ঢাকা -১০০০', 'বিএ অধ্যয়নরত,জগন্নাথ ইউনিভার্সিটি', 'ফ্রেশনার', '', 34, 2, 0, 1, 0, '০১৯১১৯০৮৭২৬', 'saznineremi726@gmail.com', '', 'General', '', 'Verified', '2018-07-14 12:52:32'),
(124, 'Fajal Karim', 'Male', '05/07/1991', 'Bismillah Tower(3rd floor),19 South Bakolia,Toktarpur, Chittagong.', 'M.A', 'Freshener', '', 35, 2, 0, 43, 0, '01864655037', 'Karimfajal@gmail.com', '', 'General', '', 'Verified', '2018-07-14 13:23:26'),
(125, 'MD.IBRAHIM', 'পুরুষ', '05-11-1996', 'Purbo kaltasuti', 'BBA', 'ফ্রেশনার', '', 16, 2, 0, 1, 0, '01945153582', 'ibrahimhassain82@gmail.com', '', 'General', '1531557802.jpg', 'Verified', '2018-07-14 14:43:22'),
(126, 'শাকিল আহমেদ', 'পুরুষ', '২৭/১১/১৯৯৫', 'ভাদাইল,ধামসোনা,আশুলিয়া,সাভার,ঢাকা-১৩৪৯', 'বিবিএ,এমবিএ (একাউন্টিং)', '১ বছর', '', 6, 2, 0, 1, 0, '০১৯৩০৬৫৩৩০৮', 'shakilhossain2013@gmail.com', '', 'General', '1531557977.jpg', 'Verified', '2018-07-14 14:46:17'),
(127, 'Sarder Tajul Islam', 'পুরুষ', '18/04/1971', '2, Basupara Road. KHULNA.', 'MA', '১৮ বছর', '', 2, 2, 0, 59, 0, '01742672699', 'tajul.sarder@gmail.com', '', 'General', '', 'Verified', '2018-07-14 15:28:21'),
(128, 'Ripon Chandra Mazumder', 'পুরুষ', '17/01/1980', 'Maijdee, napiter pool, maijdee court, sadar, Noakhali.', 'BSS (Hon\'s) Sociology, MSS-Sociology', '১২ বছর', 'Brac NGo 5 years, Al-Amin Group 5 year.', 23, 2, 0, 43, 0, '01820226398', 'riponcrm@yahoo.com', '', 'General', '1531563523.doc', 'Verified', '2018-07-14 16:18:43'),
(129, 'Musfiqur Rahman', 'Male', '21/10/1990', 'c/o: Nazir miya bari, vill: Kadirpur, post : sabirhaat, ps: Begumgonj, Dis: Noakhali', 'MBA(Management)', '1 Year', 'BRAC (microfinence)', 23, 1, 0, 1, 0, '01813051614', 'mashfiq222@gmail.com', '', 'General', '', 'Verified', '2018-07-14 16:35:26'),
(130, 'bokhtar ashik', 'পুরুষ', '15/8/1998', '237 East Nakhalpara,Tejgoan Dhaka', 'houners 1st year', 'ফ্রেশনার', '', 11, 2, 0, 1, 0, '01822061509', 'bakhtiarashik@gmail.com', '', 'General', '', 'Verified', '2018-07-14 17:04:34'),
(131, 'Afjal hussain', 'পুরুষ', '11/02/200', 'jaintapur,sylhet', 'hsc', 'ফ্রেশনার', '', 17, 3, 0, 54, 0, '01779778974', 'afjal8585@gmail.com', '', 'General', '', 'Verified', '2018-07-14 19:49:42'),
(132, 'Afjal', 'পুরুষ', '11/02/200', 'jaintapur', 'ssc', 'ফ্রেশনার', '', 11, 2, 0, 54, 0, '01820510116', 'afjal8585@gmail.com', '', 'General', '', 'Verified', '2018-07-14 19:51:40'),
(133, 'Most. Akter Jahan', 'Female', '16/04/1989', 'Vill: Putinari, Post: Shyampur, Sub-dist: Sadar, Dist: Rangpur', 'M.Sc in chemistry from Carmichael college, Rangpur.', '1 Year', '1 year experience at micro-credit programme in brac', 23, 2, 0, 32, 0, '01738789514', 'akterjahan20@gmail.com', '', 'General', '', 'Verified', '2018-07-14 19:59:13'),
(134, 'Md.Al-Amin', 'পুরুষ', '25/6/1995', 'uttara,dhaka', 'B.S.C  in EEE', 'ফ্রেশনার', '', 15, 2, 0, 1, 0, '01738242694', 'alamin5799@gmail.com', '', 'General', '1531583354.jpg', 'Verified', '2018-07-14 21:49:14'),
(135, 'মোঃসাদেকুল ইসলাম', 'পুরুষ', '২১বছর।', 'গ্রামঃদোহাজারী,ডাকঘরঃইকরচলী,উপজেলাঃতারাগঞ্জ,জেলাঃরংপুর।', '', '', '', 0, 0, 10, 32, 447, '০১৭৫৯৩৮৪৯১৭', '', '', 'Professional', '1531583495.jpg', 'Verified', '2018-07-14 21:51:35'),
(136, 'Md.Al-Amin', 'Male', '25/6/1995', 'uttara, dhaka, bangladesh', 'B.S.C in EEE', 'Freshener', 'I am fresh graduate that why I have no experience', 15, 3, 0, 1, 0, '01866256757', 'alamin5799@gmail.com', '', 'General', '1531584058.jpg', 'Pending', '2018-07-14 22:00:58'),
(137, 'Md Tanzim', 'পুরুষ', '18-05-1998', 'South donea, Dhaka-1236', 'BBS 2nd year', '২ বছর', 'Marketing, 1 year, \r\nShowroom executive 6 month, \r\nComputer, data entry operator, 1 year', 12, 2, 0, 1, 0, '01612548928', 'mdtanjim662@gmail.com', '', 'General', '1531586681.jpeg', 'Verified', '2018-07-14 22:44:41'),
(138, 'Xavier limon Amar', 'পুরুষ', '4/12/1991', 'Mirpur 10, dhaka', 'Diploma engineer', '৮ বছর', 'All Electronics work, dialysis machine total repair, electrical work, computer repair, mobile repair etc...', 15, 1, 0, 59, 0, '01721584352', 'limon60@live.com', '', 'General', '1531591948.jpg', 'Verified', '2018-07-15 00:12:28'),
(139, 'bishajit chandra das', 'পুরুষ', '28', 'Parulia', '', '', '', 0, 0, 8, 1, 502, '01992438243', '', '', 'Professional', '', 'Verified', '2018-07-15 00:18:52'),
(140, 'শাহ মোঃ শহীদুলইসলাম', 'পুরুষ', '০৭/০৪/১৯৭৪', 'হোপকুঞ্জ ৬৫/১ পশ্চম রামপুরা ,ওপয়াদ রোড ,ওমর লেন।\r\nবিডিং নং ০৩ ,ফ্ল্যাটনং ৪০৩,হাতিঝিল থানা।ঢাকা -১২১৯. ফোন নং ০১৬৮০৪৭০৪৮৩.', 'এইচ, এস,সি', '৫ বছর', '', 11, 2, 0, 1, 0, '০১৬৮০৪৭০৪৮৩', 'zamilhassan739@gamil com.', '', 'General', '', 'Verified', '2018-07-15 00:49:14'),
(141, 'Nadia Khan', 'Female', '6/11/1990', '218/1 East Rampura, Dhaka.', 'MBA', 'Freshener', '', 2, 2, 0, 1, 0, '01906147227', 'nadiakhan8806 @gmail.com', '', 'General', '1531599709.jpg', 'Verified', '2018-07-15 02:21:49'),
(142, 'Azizul Hakim Saiham', 'পুরুষ', '17/07/1996', 'Gazipur', 'HSC', 'ফ্রেশনার', '', 34, 3, 0, 1, 0, '01681605130', 'azizulhakimsaiham@gmail.com', '', 'General', '1531607715.jpg', 'Verified', '2018-07-15 04:35:16'),
(143, 'Md.Shiful Islam.', 'পুরুষ', '40 yers', 'H470/1. Road. Naya Para. post. donia. p s. jatrabari.  Dhaka.', '', '', '', 0, 0, 29, 1, 280, '01914219648. 01731302966', '', '', 'Professional', '', 'Verified', '2018-07-15 06:47:50'),
(144, 'md. Rokibul  islam', 'পুরুষ', '35 yers.', 'mohalla. shatgari. uttar para. post. chuadanga  sadar. p.s .  chuadanga.  dist. chuadanga.', '', '', '', 0, 0, 5, 56, 280, '01942263525', '', '', 'Professional', '', 'Verified', '2018-07-15 06:52:32'),
(145, 'Mrs. Rumia khatun.', 'মহিলা', '25 yers.', 'mohalla.  shatgari.  p.o. chuadanga  sadar. p.s. chuadanga.  dist. chuadanga.', '', '', '', 0, 0, 29, 56, 280, '01914219648.  01759545165.', '', '', 'Professional', '', 'Verified', '2018-07-15 06:57:27'),
(146, 'Md Rajib Gazi', 'পুরুষ', '06/08/1995', 'village.                :- Hamankardi\r\nunion.                 :- Moishady\r\npost office.       :-Shahatali-3603\r\nP.S.                         :- Chandpur Sadar\r\nDist.                       :- Chandpur', 'SSC=form Hamankardi polli mongal high school,comilla board with 4.31 gpa in the year of 2012 from science group\r\nHSC= from Baburhat high school and college,comilla board  with 4.21 gpa in the year of 2014 from Business studies.', 'ফ্রেশনার', 'Computer', 16, 2, 0, 1, 0, '01846668438', 'mdrajibgazi0184666@gmail.com', '', 'General', '', 'Verified', '2018-07-15 07:23:14'),
(147, 'Sarmin Sultana Sumi', 'Female', '04/01/1994', 'Vill: Choto Baniyadi, P.O: Murapara, P.S: Rupgonj,  Dist: Narayangonj', 'BSS(Honours)', '3 Year', 'Private Tutor', 14, 2, 0, 11, 0, '01916174569', 'sarminbd22@gmail.com', '', 'General', '', 'Verified', '2018-07-15 07:40:14'),
(148, 'Teaching', 'মহিলা', '12/12/1993', '60/B,kajlarpar,demra,jatrabari,Dhaka', 'BA Honors in English Language And Literature', 'ফ্রেশনার', '', 14, 2, 0, 1, 0, '01685671467', 'jannateva81@gmail.com', '', 'General', '1531623121.jpg', 'Verified', '2018-07-15 08:52:01'),
(149, 'MD.JAHID HASAN', 'পুরুষ', '15/11/1998', 'sirajdikhan,munsigonj', 'ssc/hsc fail', '১ বছর', '', 27, 2, 0, 1, 0, '01943175689', 'www.jahid1234.com@gmail.com', '', 'General', '', 'Verified', '2018-07-15 09:00:36'),
(150, 'Md Rashedul Islam Shuvo', 'পুরুষ', '03/10/1996', '39-a/b, 2nd colony, mazar road mirpur-1, Dhaka-1216', 'h.s.c complete 2014\r\nNow honours final year running,  department : finance & banking', 'ফ্রেশনার', '', 34, 1, 0, 1, 0, '01676372175', 'rakinshuvo@gmail.com', '', 'General', '1531625589.jpg', 'Verified', '2018-07-15 09:33:10'),
(151, 'Md Shofikul Islam', 'Male', '12/07/1992', 'Rajshahi, Bangladesh', 'BBA Honor\'s, Management', '2 Year', 'I have an experience 2 years. I work trust visa consoult.', 23, 2, 0, 24, 0, '01723105957', 'shofikuluzzal@gmail.com', '', 'General', '1531626212.jpg', 'Verified', '2018-07-15 09:43:32'),
(152, 'Roksona', 'Female', '1-01-1989', 'Village :horendhora \r\n post:hemayetpur P.s:Savar  District:Shaka', 'S.s.c2004 Gpa2.00H.s.c 2007 Gpa 2.50 B.a 2013 2and class', 'Freshener', '', 14, 1, 0, 1, 0, '01882396610', 'm.r.roksona@gmail.com', '', 'General', '1531634324.jpg', 'Verified', '2018-07-15 11:58:45'),
(153, 'আফরিনা আক্তার', 'পুরুষ', '১২/১২/১৯৮৮', 'পূব রামপুরা,হাই স্কুল রোড', 'এ.এস.সি ২০০৫ GPA...3.38\r\nএইচ.এস.সি২০০৭GPA...4.20\r\nঅনাস political since  2nd class\r\nমাস্টাস political since 1st class', '১ বছর', 'Teaching', 6, 2, 0, 1, 0, '01676095773', 'biplobe60.gmail.com', '', 'General', '', 'Verified', '2018-07-15 12:31:00'),
(154, 'রোকছনা আকতার', 'মহিলা', '০১/০১/১৯৮৯', 'গাম:হরিনধরা পোষট: হেমায়েতপুর থানা:সাভার জেলা :ঢাকা', 'এস।এস।সি২০৪ মাদরাসা ২.০০এইস।এস।সি মাদরাসা ২.৫০ বিএ২০১৩দবিতী ছেকেন ক:', '১০ বছর', '', 23, 1, 0, 1, 0, '০১৮৮২৩৯৬৬১০', 'm.r.roksona@gmail.com', '', 'General', '', 'Verified', '2018-07-15 12:35:18'),
(155, 'Afrina Akter', 'মহিলা', '12/12/1988', 'Rampura,high school road,dhaka', 'S.S.C...2005..G.P.A...3.38\r\nH.S.C..2007...G.P.A..4.20\r\nB.S.S(political since) 2011..2nd class\r\nM.S.S(political since)2012..1st class', '২ বছর', 'Teaching', 6, 2, 0, 1, 0, '01675363120', 'biplobe60@gmail.com', '', 'General', '', 'Pending', '2018-07-15 14:28:36'),
(156, 'MD.MIZANUR RAHMAN', 'পুরুষ', '১০/০৮/১৯৮৮', 'মোঃ মিজানুর রহমান\r\nগ্রামঃবন্দ ডাকপাড়া, থানাঃ কেরাণীগঞ্জ মডেল, পোঃ কেরাণীগঞ্জ, জেলাঃ ঢাকা।\r\nবাড়ি : হাজী অাব্দুর রহমান মেম্বর ( ৪র্থ তলা)', 'মাস্টার্স', '২ বছর', 'হিসাব রক্ষক, ডাটা এন্টি অপারেটর হিসেবে কাজ করেছি', 12, 1, 0, 1, 0, '01989684023', 'mizan40000@gmail.com', '', 'General', '1531643438.jpg', 'Verified', '2018-07-15 14:30:38'),
(157, 'Mohammad Sadaquer Rahaman', 'Male', '04/11/1983', 'Vill : Purbo amargaon, P.O:Ati Bazar, Thana : Keranigonj model, Dhaka-1312', 'M.Com Master', '5 Year', '#Pran-Rfl group-Aug 2016 -Dec 2017 as Territory Sales Officer(TSM).\r\n#Mazim Agro Industries Ltd. : Jan 2014- Dec 2015 as a Sr. Executive (Admin & HR)\r\n#Mealine Visa Service : Dec 2011Sept 2013 as a Manger.\r\n#The Red Room (UK)  :  Aug 2010 Aug 2011 as a Brand Promoting Officer.', 2, 1, 0, 1, 0, '1878687607', 'khokon832@gmail.com', '', 'General', '1531644820.jpg', 'Verified', '2018-07-15 14:53:40'),
(158, 'MD MIRADULL ISLAM', 'পুরুষ', '01/01/1992', 'Dilkosha bag SAVAR DHAKA.', 'BBA(MARKETING)', '২ বছর', 'Sales & marketing', 27, 1, 0, 1, 0, '01722984778', 'Miradull92@gmail.com', '', 'General', '1531644832.jpg', 'Verified', '2018-07-15 14:53:52'),
(159, 'Riad Hasan', 'পুরুষ', '12/10/1996', 'vill:Garoya. Upzilla:Damudya\r\nDist:Shariatpur', 'Diploma in Engineering', '২ বছর', 'Transformar,Sub-Station & Electrical Equipment', 13, 2, 0, 11, 0, '01726616452', 'riadhasan2025@gmail.com', '', 'General', '1531650367.jpg', 'Verified', '2018-07-15 16:26:07'),
(160, 'Afrina Akter Biplobe', 'Female', '12/12/1988', 'East Rampura', 's.s.c...G.P.A...3.38 year...2005\r\nH.S.C...G.P.A...4.20..year..2007\r\nB.S.S..political since.. 2nd class\r\nM.S.S..political since.. 1st class', '2 Year', 'Teaching', 6, 2, 0, 1, 0, '01927057163', 'biplobe60.gmail.com', '', 'General', '1531651685.jpg', 'Verified', '2018-07-15 16:48:05'),
(161, 'MD. Atikul Islam Rasel', 'পুরুষ', '03/02/1994', '443, Tejgaon industrial Area, Dhaka-1208', 'Diploma in Electronics Engg', 'ফ্রেশনার', '', 15, 2, 0, 1, 0, '01719170959', 'atikulislamr@gmail.com', '', 'General', '1531651962.jpg', 'Verified', '2018-07-15 16:52:42'),
(162, 'shathil sarkar', 'পুরুষ', '1/6/1997', 'house 47, road 14, nikunja 2,khilkhet, dhaka', 'Hsc', '১ বছর', 'I have one year of experience in both data entry and online marketing', 12, 2, 0, 1, 0, '01626835317', 'sarkarshathil@gmail.com', '', 'General', '1531652104.jpg', 'Verified', '2018-07-15 16:55:04'),
(163, 'Julhas Uddin', 'পুরুষ', '04/04/1999', '18/b Azizmarket, Dhaka cantt. Dhaka -1206', 'HSC', '১ বছর', '', 11, 2, 0, 1, 0, '01959144378', 'julhasuddin2468@gmail.com', '', 'General', '1531654097.jpg', 'Verified', '2018-07-15 17:28:17'),
(164, 'Md Masud', 'Male', '22/12/1984', '438, North shahjahanpur, dhaka', 'MBA', '5 Year', '', 36, 2, 0, 1, 0, '01818156222', 'masudhrm18@gmail.com', '', 'General', '', 'Verified', '2018-07-15 17:42:59'),
(165, 'sha jalil nur ullah', 'পুরুষ', '01 01 1996', 'Charhazari Companygonj,noakhali.', 'SSC 4.75. HSC 4.25.  BA Hons in English. city university Dhaka.', '২ বছর', 'Professional tutor and teaching in different schools & madrasah.', 31, 2, 0, 1, 0, '01830686215', 'nasimasahadat215@gmail.com', '', 'General', '', 'Verified', '2018-07-15 17:44:28'),
(166, 'md inchan ali', 'Male', '10/11/1988', 'Dhaka', 'Master\'s', '3 Year', 'Abul khair com', 27, 1, 0, 1, 0, '01948207594', 'inchanalisana @Jamil. com', '', 'General', '', 'Verified', '2018-07-15 17:49:27'),
(167, 'মোঃআব্দুল হান্নান', 'পুরুষ', '০৫/১২/১৯৯১', 'গ্রামঃ বংশীপুর, পোষ্টঃঈশ্বরীপুর\r\nউপজেলাঃ শ্যামনগর, জেলাঃ সাতক্ষীরা।', 'গ্রামঃ বংশীপুর, পোষ্টঃঈশ্বরীপুর\r\nউপজেলাঃ শ্যামনগর, জেলাঃ সাতক্ষীরা।', '৫ বছর', '', 23, 2, 0, 59, 0, '০১৯১১-৪০৫৯৫৪', 'hannanbd032@gmail.com', '', 'General', '1531655832.jpg', 'Verified', '2018-07-15 17:57:12'),
(168, 'মো:আহসান হাবিব রায়হেচ', 'পুরুষ', '২২বছর', 'ঘনিবিষ্টপুর ,মিলপাড়া, রুহিয়া , ঠাকুরগাও', '', '', '', 0, 0, 5, 33, 448, '০১৭৪১৯২৯০১৭', '', '', 'Professional', '1531656733.jpg', 'Verified', '2018-07-15 18:12:13'),
(169, 'মো:আহসান হাবিব রায়হেচ', 'পুরুষ', '২২বছর', 'ঘনিবিষ্টপুর ,মিলপাড়া, রুহিয়া , ঠাকুরগাও', '', '', '', 0, 0, 5, 3, 159, '০১৭৪১৯২০১০৭', '', '', 'Professional', '', 'Verified', '2018-07-15 18:18:27'),
(170, 'মানিক চন্দ্র মহন্ত', 'পুরুষ', '20/10/1985', 'গ্রাম: সুন্দরগঞ্জ, ডাক: সুন্দরগঞ্জ, উপজেলা: সুন্দরগঞ্জ, জেলা: গাইবান্ধা।', 'এম.এ পাশ', '৬ বছর', 'কম্পিউটার অপারেটর, স্টোর কিপার, ডকুমেন্টেশন এন্ড ফিন্যান্স এসিসট্যান্ট, ডাটা এন্ট্রি অপারেটর,', 12, 2, 0, 32, 0, '01723020314', 'manikmanik697@gmail.com', '', 'General', '', 'Verified', '2018-07-15 18:55:55'),
(171, 'ISMAIL HOSAIN', 'পুরুষ', '01 /10/199', 'Middle Badda, Gulshan, Dhaka', 'MA', '৩ বছর', 'Asa teacher , Marketing', 14, 2, 0, 1, 0, '01822857011', 'ismailbd.hosain@gmail.com', '', 'General', '1531662598.jpg', 'Verified', '2018-07-15 19:49:59'),
(172, 'md.sohel khan', 'পুরুষ', '10/12/1988', 'vill..kartick pasa.post.moukaran.ps.dumki..dis.patuakhali', 'Ba.honours', '২ বছর', 'marketing and data entry', 20, 2, 0, 1, 0, '01724005947', '', '', 'General', '', 'Verified', '2018-07-15 21:06:45'),
(173, 'Nargis akther mim', 'মহিলা', '16/08/16', 'Dhaka 1204', 'Bsc in cse running', 'ফ্রেশনার', 'I don\'t have any work experience', 34, 1, 0, 1, 0, '01795091549', 'mimmimo68871@gmail.com', '', 'General', '', 'Verified', '2018-07-15 22:26:59'),
(174, 'md younos shikder', 'পুরুষ', '01/04/1991', 'kutbdia.cox\'s bazar.', 'B.A', '১ বছর', 'ps(dfs)brac.', 23, 2, 0, 45, 0, '01630900180', 'mdyounosshikder@gmail.com', '', 'General', '', 'Verified', '2018-07-15 23:42:35'),
(175, 'Mahadi hassan', 'পুরুষ', '05/08/1997', 'Ashulia,savar,dhaka', 'Bba', '২ বছর', '', 27, 2, 0, 1, 0, '01843658053', 'mahadishanto@gmail.com', '', 'General', '1531676724.jpg', 'Pending', '2018-07-15 23:45:25'),
(176, 'Mahadi hassan', 'পুরুষ', '05/08/1997', 'Ashulia;savar;dhaka', 'bba', '২ বছর', 'Work in a bkash distribution house', 27, 2, 0, 1, 0, '01614262181', 'mahadishanto8@gmail.com', '', 'General', '1531677175.jpg', 'Verified', '2018-07-15 23:52:56'),
(177, 'MD Gaffar', 'পুরুষ', '20/10/1993', 'vill:panchlia, post: Rashidabad, Thana: Salanga, Dist: Sirajgonj', 'BSS in degree', 'ফ্রেশনার', 'I have good knowledge in computer', 12, 2, 0, 25, 0, '01724071493', 'mgaffar983@gmail.com', '', 'General', '1531677457.gif', 'Verified', '2018-07-15 23:57:37'),
(178, 'Rashed khan', 'Male', '21', 'Kewatkhali Power \r\nHouse Rood, Sodor Mymensingh', '', '', '', 0, 0, 13, 10, 217, '01929323368', '', '', 'Professional', '1531682526.jpg', 'Verified', '2018-07-16 01:22:06'),
(179, 'Rafiqul islam', 'পুরুষ', '30', 'Kharulia mokbul chaw dagar para coxs bazar', '', '', '', 0, 0, 3, 43, 76, '01812711723', '', '', 'Professional', '', 'Verified', '2018-07-16 09:02:55'),
(180, 'সুশান্ত কান্তি তঞ্চঙ্গ্যাঁ', 'পুরুষ', '২২ বছর', 'আলিকদম সদর ইউ,পি,৪ নং ওর্য়াড়,উপজেলা-আলিকদম, ডাক+থানা-আলিকদম,জেলা -বান্দরবান।', '', '', '', 0, 0, 14, 40, 47, '01832971584/01644212254', '', '', 'Professional', '', 'Verified', '2018-07-16 11:10:26'),
(181, 'Shahin Alam', 'পুরুষ', '02/03/1995', 'House No-5,Lane No-4,Ward-7,Block-C, Road-Ali Mohammad Khan Road', 'Bachelor of Science in Mechanical Engineering \r\nName of University : IUBAT-International University of Business Agriculture & Technology \r\nYear of Completion : 2017 \r\nCGPA                      : 3.50 (Out of 4)\r\nHigher School Certificate (HSC) \r\nName of College      : Dr. Mahabubur Rahman Mollah College           \r\nBoard                       : Dhaka \r\nYear of Completion:  2012 \r\nGPA                         : 5.00 (Out of 5)\r\n\r\nSecondary School Certificate (SSC) \r\nName of School     : Shamsul Haque Khan School & College \r\nBoard                       : Dhaka \r\nYear of Completion:  2010 \r\nGPA                        :  5.00 (Out of 5)', 'ফ্রেশনার', '', 15, 2, 0, 1, 0, '01670965973', 'shahin1611691@gmail.com', '', 'General', '', 'Verified', '2018-07-16 11:22:16'),
(182, 'Md.Shakil Miah', 'পুরুষ', '02/03/1995', 'Lakhpur,Shibpur,Narsingdi', 'Bss(Honars)Political science', 'ফ্রেশনার', '', 18, 2, 0, 1, 0, '01744272175', 'akashmagla65@gamil.com', '', 'General', '', 'Verified', '2018-07-16 11:36:02'),
(183, 'Md. Makbul Hossain Sikdar', 'Male', '49 Years', '1444/A, Khilgaon Jheel Par, Dhaka-1219', '', '', '', 0, 0, 29, 1, 498, '01911-500100', '', '', 'Professional', '', 'Verified', '2018-07-16 12:00:39'),
(184, 'Mehdi Hossain', 'Male', '11/03/1985', 'Flat # 407, Neptune Heights, 47 Shiddweshari, Ramna, Dhaka', 'M.Sc in computer science & engineering | 2014 | Stamford university, bangladesh\r\nCGPA: 3.31out of 4.00\r\nMajor: Data Communication & Networking\r\n\r\nB.sc in computer science & engineering | 2010 | STAMFORD UNIVERSITY, BANGLADESH\r\nCGPA: 2.62 out of 4.00\r\n\r\nH.S.C | 2005 | narayanganj college\r\nBoard: Dhaka\r\nGroup: Science\r\nCGPA: 3.00 out of 5.00\r\n\r\nS.s.c | 2001 | narayanganj high school\r\nBoard: Dhaka\r\nGroup: Science\r\nCGPA: 3.25 out of 5.00', '1 Year', 'Executive, RETAIL Banking division | AB bank ltd | 1st November 2015 to 2nd February 2016\r\n Key Responsibilities\r\nMaintain the Customers of Bank.\r\n Represent the facilities of Bank\r\n Create Customer of Bank.\r\n\r\nIT Executive, mobile banking division | mercantile bank ltd | 8th october 2012 to 28th august 2013\r\nKey Responsibilities: \r\nCall Center Network Support and Maintenance \r\nKYC Data entry and update \r\nKYC System support', 29, 3, 0, 1, 0, '01715415156', 'abeermehdi@yahoo.com', '', 'General', '1531721467.jpg', 'Verified', '2018-07-16 12:11:07'),
(185, 'Jems Mondal', 'পুরুষ', '10.09.1992', 'present address : Mirpur 2 Near by Mirpur Model Thana.\r\npermanent address : Meherpur Stadium para. word no,9 Meherpur.', 'Honours ( Management) 2nd division. passing year 2016.', '৬ বছর', '1.As a assistant teacher in primary school 4 years.\r\n2. as a sales man in glob soft drinks ltd.\r\n3. as a sales man in 1 year Olympic Industrial ltd.', 36, 2, 0, 1, 0, '01739105197', 'jamesmondol1020305@gmail.com', '', 'General', '', 'Verified', '2018-07-16 13:12:15'),
(186, 'মোহাম্মদ সেলিম উদ্দিন', 'পুরুষ', '27/01/1995', 'হাজী ওয়াজেদ আলী মুন্সির বাড়ি, পশ্চিম মনকিচর, বাঁশখালী, চট্টগ্রাম।', 'দাখিল, আলিম, ফাজিল, কামিল, কম্পিউটার ডিপ্লোমা, অফিস ম্যানেজমেন্ট, গ্রাফিক্স ডিজাইন এন্ড মাল্টিমিডিয়া, হার্ডওয়্যার এবং নেটওয়ার্কিং', '৭ বছর', 'ফজলুল কাদের চৌধুরী আইডিয়্যাল স্কুল এন্ড কলেজ', 12, 2, 0, 1, 0, '01814894412', 'prochesta2004@gmail.com', '', 'General', '1531725530.png', 'Verified', '2018-07-16 13:18:50'),
(187, 'মো: রাজু আহমেদ', 'পুরুষ', '১-০৮-১৮', '৩৮,ফারাজী পাড়া রোড,খুলনা', 'মাস্টার্স (রাষ্ট্রবিজ্ঞান)', 'ফ্রেশনার', '', 35, 2, 0, 59, 0, '01721759468', 'md.rajuahammed97@gmail.com', '', 'General', '1531727190.jpg', 'Verified', '2018-07-16 13:46:30'),
(188, 'মোঃমুসানবী', 'পুরুষ', '২৪/০৫/১৯৯৯', 'ভাটপাড়া,অভয়নগর,যশোর', 'এস এস সি', 'ফ্রেশনার', 'নেই', 27, 3, 0, 57, 0, '০১৯৬৪১৫৫৭২২', '', '', 'General', '', 'Verified', '2018-07-16 13:56:46'),
(189, 'Tapu Kumar Sarker', 'পুরুষ', '18/07/1994', '1083 Malibagh,Dhaka-1219', 'B.sc in Computer Science And Engineering', 'ফ্রেশনার', '', 12, 2, 0, 1, 0, 'O1685551467', 'tapukumar311@gmail.com', '', 'General', '1531731341.jpg', 'Verified', '2018-07-16 14:55:41'),
(190, 'Muhammad Robin Hossen', 'Male', '15/10/1991', 'Village: Akashi, P/o: Tilli, P/s: Saturia, District: Manikganj.', 'Exam   group/sub.    Result   \r\nSSC :business studies,3.69,Dhaka board ,2006.\r\n\r\nHSC: business studies,3.60,Dhaka  board,2008.\r\nBBS: business Studies, Second division, national university,2011.\r\nMBS: Accounting, Second division, national university,2013.', 'Freshener', 'No', 14, 3, 0, 1, 0, '01709852791', 'robinak4246@gmail.com', '', 'General', '1531732464.jpg', 'Verified', '2018-07-16 15:14:24'),
(191, 'মাহবুবা ফেরদৌসী', 'মহিলা', '01/01/1975', 'নতুনবাজার,বরিশাল', 'এম এস এস', '১৮ বছর', 'এনজিওতে খাদ্যপুষ্টি,মা ও শিশু স্বাস্হ্য,ডিজেষ্টার,ওমেন ইমপাওয়ারমেন্ট,চাইল্ড এডুকেশন প্রজেক্টে কাজ করার experiance।', 18, 2, 0, 35, 0, '01721540964', 'shimulbsl5@gmail.com', '', 'General', '', 'Verified', '2018-07-16 17:22:55'),
(192, 'Nazrul islam', 'পুরুষ', '05/06/92', 'brahmanbaria', 'bba', '৬ বছর', 'marketing officer', 27, 2, 0, 41, 0, '01929413233', 'nazrulislam@gmail.com', '', 'General', '1531742143.jpg', 'Verified', '2018-07-16 17:55:44');
INSERT INTO `tbl_job_seeker` (`id`, `name`, `gender`, `date_of_birth`, `address`, `educational_qualification`, `experience_year`, `experience_details`, `general_category_id`, `skill_level_id`, `professional_category_id`, `district_id`, `upazila_id`, `contact_no`, `email`, `contact_no_last_three`, `category_type`, `file_name`, `status`, `created_at`) VALUES
(193, 'Domanica logna banerjee', 'মহিলা', '30/12/1991', 'Rupsha,khulna', 'M.b.s masters', 'ফ্রেশনার', '', 1, 2, 0, 59, 0, '01684558287', 'Lognaashim8@gmail.com', '', 'General', '', 'Verified', '2018-07-16 18:14:32'),
(194, 'মো: সাব্বির অাহমেদ', 'পুরুষ', '০১/০১/১৯৯৪', 'দিনাজপুর', 'মাস্টর্স', 'ফ্রেশনার', '', 6, 2, 0, 24, 0, '০১৭৩৭৯৫৮৯৩০', 'hm.sabbirahmed.ru@gmail.com', '', 'General', '1531745913.jpg', 'Verified', '2018-07-16 18:58:34'),
(195, 'md.rakibul islam gazi', 'পুরুষ', '22', 'bishnupur.chandpur sadar', '', '', '', 0, 0, 8, 42, 60, '01674696112', '', '', 'Professional', '1531747673.jpg', 'Verified', '2018-07-16 19:27:54'),
(196, 'Sabirul Islam', 'পুরুষ', '10/12/1997', 'Royel More, Khulna', 'H.S.C', 'ফ্রেশনার', '', 6, 2, 0, 59, 0, '01705797484', 'sabirul8686@gmail.com', '', 'General', '', 'Verified', '2018-07-16 22:12:57'),
(197, 'shirajul islam', 'পুরুষ', '12. 11.199', 'dhaka', 'diploma enginer', '১ বছর', 'official wark', 13, 2, 0, 1, 0, '01940526893', 'SHIRAJUL1910@gmail.com', '', 'General', '1531764765.jpg', 'Verified', '2018-07-17 00:12:45'),
(198, 'Nur-E-Alom Jishan', 'Male', '01-01-1992', 'Bagerhat sador, Bagerhat.', 'B.Sc. In Mechanical Engineering.\r\nDiploma In Power Technologi.', '1 Year', 'Swodesh Automobile LTD.\r\nService Engineer', 15, 3, 0, 1, 0, '01911746784', 'eng.jishan@yahoo.com', '', 'General', '', 'Verified', '2018-07-17 00:45:36'),
(199, 'Mithun kumer pal', 'পুরুষ', '06/05/1995', 'Mirpur, Dhaka', 'Diploma in electronic engineering', 'ফ্রেশনার', 'N/A', 13, 2, 0, 1, 0, '01772997184', 'Puspopal1137@gmail.com', '', 'General', '1531769644.jpg', 'Verified', '2018-07-17 01:34:04'),
(200, 'পলাশ মিয়া', 'পুরুষ', '০৩/০২/১৯৯১', 'বারৈচা,বেলাব, নরসিংদী।', 'বি এ পাস', '২ বছর', 'এনজিও চাকরীর অভিঃ', 8, 2, 0, 1, 0, '০১৮৩৩৮৭৭২২৫', '', '', 'General', '1531787264.jpg', 'Verified', '2018-07-17 06:27:44'),
(201, 'Md.Asmul hassan', 'পুরুষ', '17-06-1992', 'Block-D, Sec-1, Mirpur, Dhaka-1216', 'M S S -Econimcs,B S S-Economics,PGD-HRM', 'ফ্রেশনার', '', 18, 2, 0, 1, 0, '01918814246', 'shamim.jes17@gmail.com', '', 'General', '', 'Verified', '2018-07-17 10:28:25'),
(202, 'Sinthia khan Tia', 'Female', '05-02-2018', 'Mirpur-01', 'BBA', '1 Year', '', 1, 2, 0, 1, 0, '01747738656', 'Sinthiakhan1993@gmail.com', '', 'General', '1531801752.jpg', 'Verified', '2018-07-17 10:29:12'),
(203, 'মোক্তার হোসেন শিমুল', 'পুরুষ', '২৮/১২/১৯৮৬', '১৫৮ বিলাসদী ,নরসিংদী সদর,নরসিংদী', 'বিবিএস', '৪ বছর', '', 26, 2, 0, 1, 0, '০১৬২৩৯৬৩৫৩৬', 'mokterhossain446@gmail.com', '', 'General', '1531802172.jpg', 'Verified', '2018-07-17 10:36:12'),
(204, 'Mokter hossainShemul', 'Male', '28/12/1986', '158 Bilasdi ,Narsingdi sadar , Narsingdi', 'BBS', '6 Year', 'Bismillah Food & Products \r\nHaven Air International', 27, 2, 0, 12, 0, '01623963536', 'mokterhossain446@gmail.com', '', 'General', '1531802353.jpg', 'Pending', '2018-07-17 10:39:13'),
(205, 'মোক্তার হোসেন শিমুল', 'পুরুষ', '২৮/১২/১৯৮৬', '১৫৮ বিলাসদী ,নরসিংদী সদর,নরসিংদী', 'বিবিএস', '৪ বছর', 'হেভেন এয়ার ইন্টারন্যাশনাল - ভিসা কাউন্সিলর অফিসার এন্ড এয়ার টিকেট সেলস ।\r\nকনসাল্টটেন্ট ইন্টারন্যাশনাল - সিনিয়ির অফিসার এন্ড এয়ার টিকেট সেলস ইত্যাদি।', 26, 2, 0, 1, 0, '+৮৮০১৬২৩৯৬৩৫৩৬', 'mokterhossain446@gmail.com', '', 'General', '', 'Pending', '2018-07-17 10:43:27'),
(206, 'Nusrat yesmin Reshme', 'Female', '19.04.1994', 'Dhaka Uttara Dia-bari', 'H.S.C. passed', '1 Year', 'Hospital receptionist', 11, 2, 0, 1, 0, '01720216610', 'nusratyesmin605@gmail.com', '', 'General', '', 'Verified', '2018-07-17 11:15:36'),
(207, 'Nusrat yesmin Reshme', 'Male', '19.04.1994', 'Dhaka Uttara Dia-bari', 'H.S.C. passed', '1 Year', 'Hospital receptionist', 11, 2, 0, 1, 0, '01838389725', 'nusratyesmin605@gmail.com', '', 'General', '', 'Pending', '2018-07-17 11:17:18'),
(208, 'জুয়েল রানা', 'পুরুষ', '১৩/০৫/১৯৯৭', 'জেলাঃ জামালপুর, থানাঃবকশিগঞ্জ,উপজেলাঃ\r\nবকশিগঞ্জ,ডাকঘরঃজয়গঞ্জ বাজার,গ্রামঃনিলাখিয়া উত্তর পাড়া।', 'ডিপ্লোমা ইন ইলেক্ট্রনিকস ইঞ্জিনিয়ারিং।', 'ফ্রেশনার', 'আমি ওয়ালটন কোম্পানিতে ৩ মাস ব্যাপি ইন্ডাস্ট্রিয়াল ট্রেনিং সম্পন্ন করেছি।এবং যুব উন্নয়নে ৬ মাস ব্যাপি ইলেক্ট্রনিকস এর উপর প্রশিক্ষণ গ্রহণ করেছি।', 13, 2, 0, 1, 0, '০১৯৩৬৪৮৮৪৬২', 'juelranabd20@gmail.com', '', 'General', '1531804691.jpg', 'Verified', '2018-07-17 11:18:11'),
(209, 'Ashish Kumar Barmon', 'পুরুষ', '15/03/1993', 'Vill: Raghabpur\r\nP.o: Bonarpara\r\nU.p: Saghata\r\nDst: Gaibandha', 'BSS', 'ফ্রেশনার', '', 30, 2, 0, 1, 0, '01797664776', 'tomalroy.tr@gmail.com', '', 'General', '', 'Verified', '2018-07-17 11:48:58'),
(210, 'Md.Ruhul Amin Khandaker', 'পুরুষ', '16/07/1995', 'tongi, gazipur', 'Graduate complete', 'ফ্রেশনার', '', 16, 2, 0, 3, 0, '01932704599', 'rahulkhandaker0@gmail.com', '', 'General', '1531807655.doc', 'Verified', '2018-07-17 12:07:35'),
(211, 'Motiur Melon', 'পুরুষ', '16-12-1992', 'House-22, Road-05, Sector-13, Uttara, Dhaka', 'Honors & Degree', '৪ বছর', 'I have been working as a IT supporter in Glare IT ltd, uttara, Dhaka, from june-2014 to december-2015.\r\nI have been working as a computer operator in Al-quran Education Center (AQEC) from january-2016 to still now.', 12, 2, 0, 1, 0, '01716774232', 'melonhmr@gmail.com', '', 'General', '1531808020.jpg', 'Verified', '2018-07-17 12:13:40'),
(212, 'Md:Hemel', 'পুরুষ', '07-11-1995', 'Basail -narsingdi sodar', 'Diploma in engineer', 'ফ্রেশনার', '', 13, 1, 0, 1, 0, '01855685364', 'Hemelsarkar1649@gamil.com', '', 'General', '1531812995.jpg', 'Verified', '2018-07-17 13:36:35'),
(213, 'Harun or Rashid', 'পুরুষ', '19', 'Damudya.Sariatpur', '', '', '', 0, 0, 8, 1, 498, '01767686064', '', '', 'Professional', '1531814259.jpg', 'Verified', '2018-07-17 13:57:39'),
(214, 'সফিউল্লাহ্', 'পুরুষ', '০১/০২/১৯৯৮', 'নারায়ণগঞ্জ', 'এইচ এস ছি... +ডিপ্লোমা রানিং মেকানিক্যাল', '২ বছর', 'সিম্ফতে ছিলাম...', 11, 2, 0, 11, 0, '018429848825', 'shofeullahshohug@gmail.com', '', 'General', '1531816889.jpg', 'Verified', '2018-07-17 14:41:30'),
(215, 'সুব্রত বিশ্বাস', 'পুরুষ', '১৫ ফেব্রু ', 'গ্রাম: খড়বড়িয়া,পো:শিয়ালী,তেরখাদা,খুলনা', 'এস,এস,সি:২০১১: জিপিএ:৪.৫৬।(বাণিজ্য বিভাগ)।বোর্ড যশোর।\r\nএইস,এস,সি:২০১৩,জিপিএ:৪.৪০,যশোর বোর্ড(,বাণিজ্য বিভাগ)\r\nস্নাতক পাস:২০১৬,সিজিপিএ:৩.২৫, জাতীয় বিশ্ববিদ্যালয়।(বিবিএস শাখা)', '৩ বছর', 'মাঠকর্মী', 23, 2, 0, 59, 0, '০১৭৫৫৭৬৫২৯৩/০১৯৪৬৫৪৭২৩০', '', '', 'General', '', 'Verified', '2018-07-17 15:08:49'),
(216, 'Ela Barua', 'Female', '10/03/1990', 'East Edilpur,Binajuri,Rawjan,ctg', 'masters in management', '8 Year', 'as a senior teacher in modern international school,chandanaish, ctg', 14, 2, 0, 43, 0, '01629691094', 'elabarua89@gmail.com', '', 'General', '1531822532.jpg', 'Verified', '2018-07-17 16:15:33'),
(217, 'Amit Kumar sarker', 'Male', '19/12/1990', 'kanai khali jala para. Natore', 'Ma at philosophy', 'Freshener', '', 2, 2, 0, 1, 0, '01723780556', 'sarkeramit01@gmaol.com', '', 'General', '1531822999.jpg', 'Verified', '2018-07-17 16:23:19'),
(218, 'Ela Barua', 'Male', '10/03/1990', 'East Edilpur,Binajuri,Rawjan,ctg', 'masters in management', '8 Year', 'as a senior teacher in modern international school,chandanaish,ctg', 14, 1, 0, 43, 0, '01730701918', 'elabarua89@gmail.com', '', 'General', '', 'Pending', '2018-07-17 16:24:58'),
(219, 'Kawsar Rahman', 'Male', '35yers', '312/a West manikdi namapara cantonment Dhaka', '', '', '', 0, 0, 7, 1, 494, '01913829116', '', '', 'Professional', '1531823585.jpg', 'Verified', '2018-07-17 16:33:05'),
(220, 'Md. Amanot Hossain', 'Male', '17/10/1996', 'Senpara parbata, Mirpur10, Dhaka 1216.', 'Diploma in Electrical Engineer', '3 Year', 'Sub Assistant Engineer\r\nGlobal Power Limited', 13, 2, 0, 1, 0, '01961-148576', 'mdamanot199600@gmail.com', '', 'General', '1531825657.jpg', 'Verified', '2018-07-17 17:07:37'),
(221, 'Md. Enamul Hoque', 'Male', '19/02/1972', 'C/O Hoque Manssion, Bapari Para,Oxyzen,Jalalabad,Bayzid Bostamy, \r\nChittagong', 'Degree    : Bachelor of Arts (Pass)\r\nSubject/ Group   : Bachelor of Arts\r\nInstitute   : Hathazari (Degree) Collage\r\nBoard/ University  : National University\r\nSession    : 1993-1994\r\nYear of Passing   : 1995\r\nAwarded Result  : Third Class\r\n\r\nDegree    :  Higher School Certificate\r\nSubject/ Group   : Commerce\r\nInstitute   : Omar Gani M.E.S College\r\nBoard    : Chittagong Board\r\nSession    : 1989-1990\r\nYear of Passing   : 1993\r\nAwarded Result  : Second Division\r\n\r\nDegree    :  Secondary School Certificate\r\nSubject/ Group   : Science\r\nInstitute   : Cantonment High School, Chittagong\r\nBoard    : Chittagong Board\r\nSession    : 1987-1988\r\nYear of Passing   : 1989\r\nAwarded Result  : Second Division', '20 Year', '01) Supply Chain ( Purchases ,Warehouse, Distribution ) Skills\r\n\r\n• Proforma Invoice collection lead supply time confirmation as per company requirements. \r\n• Execute and manage L/C related work which includes corresponding with foreign suppliers.\r\n• Follow up Bank, Shipping line & C&F.\r\n• To negotiate with Local suppliers searching new suppliers.\r\n• To contract with Local supplier in order to order replacement.\r\n• To receive purchase requisition and review periodically.\r\n• To prepare necessary work order & to provide supplier and follow up them to ensure on time delivery.\r\n• Cross functional check and market visit for procured materials as per approved requisition.\r\n• Prepare Materials requirement based on the sales forecast.\r\n• Supervise the daily activities of store personnel as per SOP.\r\n• Lead the Warehouse & distribution teams.\r\n• Maintain receiving, warehousing and distribution operations by initiating, coordinating and smooth operation, safety of the warehouse location, personnel & products.\r\n• Maintain inventory soft ware at store.\r\n• Managing stock levels and making key decisions about stock control. \r\n• Maintain the warehouse, records and store area in a neat order manner.\r\n• Maintain and record keeping for all raw materials in hand and in pipe line with up to date information. \r\n• Maintain the ISO standard as per required specification, including for suppliers also.\r\n•  Prepare distributions planning for finished goods based on the sales forecast.\r\n• Arrange transportation for all orders to ensure finished goods is delivered sales center (Regional sales office & dealers) as per schedule.\r\n• Generate monthly consumption report.\r\n• To maintain proper MIS (Management information system) regularly.\r\n\r\n\r\n\r\n02) Commercial Skills\r\n\r\n• Follow-up the status of import & local plan for raw materials. \r\n• Handling all kinds of banking functions and documentations.\r\n• Handling all C & F activities, L/C opening activities. \r\n• To negotiate with shipping lines & Freight Forwarder.\r\n• Prepare shipping documents related to import & export.\r\n• To handle all logistics activities related to Import & Export.\r\n• To work shipping Agent, BGMEA, EPB, Chamber of commerce & Customs (Chittagong & Benapole)\r\n• Export documents submit to bank on time and follow-up to payment repatriate.\r\n• Arrange transportation and forwarding services for all orders to ensure material is delivered as per schedule.\r\n• Handle any other commercial related work assigned by Top Management.', 9, 2, 0, 43, 0, '880 1714281811,8801847267809', 'henamul_76@yahoo.com    :enamul@navana-battery.com', '', 'General', '', 'Verified', '2018-07-17 17:46:35'),
(222, 'Md.Nazmul Hossain', 'Male', '20/8/1995', '67/kakrail,judges Tower,Ramna, Dhaka-1000', 'Diploma in electrical engineer', '1 Year', 'property lift,service&maintenance', 15, 2, 0, 1, 0, '01764025202', 'nazmul5202@gmail.com', '', 'General', '', 'Verified', '2018-07-17 18:55:18'),
(223, 'Md. Ahasan habib', 'পুরুষ', '15/01/1995', 'Village:Modhupur\r\nPost:Songaon\r\nUpzilla:Baliadangi\r\nZilla:Thakurgaon', 'Diploma in Mechanical Engineering', 'ফ্রেশনার', '', 13, 2, 0, 1, 0, '01717820052', 'ahasan44717@gmail.com', '', 'General', '', 'Verified', '2018-07-17 20:11:02'),
(224, 'Md. Al- Amin Hoshin', 'Male', '10/09/1991', 'Vill: Chewria, Thana: Kumarkhali, Post Mohini Mills, Dict: Kushtia', 'Degree: BSS- 2018, Result: Pending \r\nHSC; 2009, Result: 4.50 - B.T.E.B\r\nSSC: 207, Result: 3.82 - B.T.E.B', '2 Year', 'Hi\r\nI\'m Al-Amin form Kushtia. I\'m Currently 26.\r\nI\'m already join 2016 at British American Tobacco Bangladesh ( BATB)  now at present. My post is a Call Center representative (CCR) Marketing Officer.', 27, 1, 0, 59, 0, '+8801714958303/+8801925589746', 'alamin.kst303@gmail.com', '', 'General', '1531838655.JPG', 'Verified', '2018-07-17 20:44:15'),
(225, 'Tapon Roy', 'পুরুষ', '06/02/1996', 'Nilphamari Sadar', 'Hon\'s Final year', 'ফ্রেশনার', '', 12, 2, 0, 1, 0, '01773225423', 'taponacc1@gmail.com', '', 'General', '1531843070.jpg', 'Verified', '2018-07-17 21:57:50'),
(226, 'মোঃ আতিকুর রহমান', 'পুরুষ', '30', 'গ্রাম; বেলদিয়া , পোষ্ট;  কাওরাইদ \r\nশ্রীপুর, গাজীপুর', '', '', '', 0, 0, 29, 3, 162, '01711715144', '', '', 'Professional', '', 'Verified', '2018-07-17 22:18:24'),
(227, 'মোঃ আতিকুর রহমান', 'পুরুষ', '30', 'গ্রাম ;বেলদিয়া, পোষ্ট; কাওরাইদ, \r\nশ্রীপুর ,গাজীপুর', '', '', '', 0, 0, 29, 3, 162, '01613184008', '', '', 'Professional', '', 'Pending', '2018-07-17 22:25:57'),
(228, 'Mohammad Saidul Hoque', 'Male', '14/04/1995', 'Flat-B3, 272/kha/3/B west agargaon, Sher-e-banglanagar, Dhaka-1207.', 'BSc in Electronics and Electrical Engineering (EEE).', 'Freshener', 'Intern at Jamil Iqbal Ltd for 4 months.', 34, 1, 0, 1, 0, '01719299449', 'saidulhoq2311@gmail.com', '', 'General', '1531845581.jpg', 'Verified', '2018-07-17 22:39:41'),
(229, 'MD. REZAUL KARIM', 'পুরুষ', '13-11-1992', '97 (3rd floor), Lake Circus, Kalabagan, Dhaka-1205', 'BBA (Management)', '১ বছর', 'P-SOFT Company.', 27, 2, 0, 1, 0, '01738789978', 'rezaulkarim4263@gmail.com', '', 'General', '1531851287.jpg', 'Verified', '2018-07-18 00:14:47'),
(230, 'Md. Enamul Hoque', 'Male', '19/02/1972', 'C/O Hoque Manssion, Bapari Para,Oxyzen,Jalalabad,Bayzid Bostamy, \r\nChittagong.', 'Degree    : Bachelor of Arts (Pass)\r\nSubject/ Group   : Bachelor of Arts\r\nInstitute   : Hathazari (Degree) Collage\r\nBoard/ University  : National University\r\nSession    : 1993-1994\r\nYear of Passing   : 1995\r\nAwarded Result  : Third Class\r\n\r\nDegree    :  Higher School Certificate\r\nSubject/ Group   : Commerce\r\nInstitute   : Omar Gani M.E.S College\r\nBoard    : Chittagong Board\r\nSession    : 1989-1990\r\nYear of Passing   : 1993\r\nAwarded Result  : Second Division\r\n\r\nDegree    :  Secondary School Certificate\r\nSubject/ Group   : Science\r\nInstitute   : Cantonment High School, Chittagong\r\nBoard    : Chittagong Board\r\nSession    : 1987-1988\r\nYear of Passing   : 1989\r\nAwarded Result  : Second Division', '20 Year', '01) Designation  : Sr. Asst.Manager ( Procurement , Inventory &                                                         Distribution)      \r\n Concern   :Navana Batteries  Limited (Navana Group)\r\nCompany Location : Fouzderhat Heavy Industrial Area, Chittagong \r\nDepartment  : Supply Chain\r\n Job Duration  : 01.03.2006 to Till Now\r\n\r\n02) Designation  :  Executive Commercial\r\n          Concern   : New Millennium Fashion Wear Ltd & Antar Fashion Ltd\r\n              Company Location                : Siraj Shopping Complex, Muradpur,  Chittagong Department  : Commercial\r\n Job Duration  : 01.02.2002 to 30.01.2006\r\n \r\n      03)            Designation  : Production Executive\r\n Concern   : Samotaf Apparels Limited \r\nCompany Location : BSCIC Industrial Area, Chittagong \r\nDepartment  : Production\r\n Job Duration  : 01.01.1999 to 30.11.2001\r\n\r\n\r\n      04)            Designation  : Production Executive\r\n          Concern   : Sakander Spinning Mills Ltd \r\n              Company Location                : Natutpara, Baluchara, Chittagong \r\n Department  : Production\r\n Job Duration  : 01.08.1997 to 30.09.1998\r\n\r\n\r\nCommunication:  \r\n\r\nDevelop strong communication skill through working in various environments. I can keep up high standard writing, reading and can speaking in English and Bengali Language. I can understand Hindi language as well.\r\n\r\nAttention to details: \r\n\r\nI have maintained concisely a very high standard in any activities I have been involved for this I will always check things precisely and now naturally its one of my habits.\r\n\r\n Extraordinary Performance:  \r\n\r\n Well Organized.\r\n Ability to work individually.\r\n Self-motivated and responsible.\r\n Warm, friendly and have the ability to easily interact with people at level. \r\n Ability to work under pleasure.\r\n\r\n\r\nCapabilities & Experiences\r\n\r\n01) Supply Chain ( Purchases ,Warehouse, Distribution ) Skills\r\n\r\n• Proforma Invoice collection lead supply time confirmation as per company requirements. \r\n• Execute and manage L/C related work which includes corresponding with foreign suppliers.\r\n• Follow up Bank, Shipping line & C&F.\r\n• To negotiate with Local suppliers searching new suppliers.\r\n• To contract with Local supplier in order to order replacement.\r\n• To receive purchase requisition and review periodically.\r\n• To prepare necessary work order & to provide supplier and follow up them to ensure on time delivery.\r\n• Cross functional check and market visit for procured materials as per approved requisition.\r\n• Prepare Materials requirement based on the sales forecast.\r\n• Supervise the daily activities of store personnel as per SOP.\r\n• Lead the Warehouse & distribution teams.\r\n• Maintain receiving, warehousing and distribution operations by initiating, coordinating and smooth operation, safety of the warehouse location, personnel & products.\r\n• Maintain inventory soft ware at store.\r\n• Managing stock levels and making key decisions about stock control. \r\n• Maintain the warehouse, records and store area in a neat order manner.\r\n• Maintain and record keeping for all raw materials in hand and in pipe line with up to date information. \r\n• Maintain the ISO standard as per required specification, including for suppliers also.\r\n•  Prepare distributions planning for finished goods based on the sales forecast.\r\n• Arrange transportation for all orders to ensure finished goods is delivered sales center (Regional sales office & dealers) as per schedule.\r\n• Generate monthly consumption report.\r\n• To maintain proper MIS (Management information system) regularly.\r\n\r\n\r\n\r\n02) Commercial Skills\r\n\r\n• Follow-up the status of import & local plan for raw materials. \r\n• Handling all kinds of banking functions and documentations.\r\n• Handling all C & F activities, L/C opening activities. \r\n• To negotiate with shipping lines & Freight Forwarder.\r\n• Prepare shipping documents related to import & export.\r\n• To handle all logistics activities related to Import & Export.\r\n• To work shipping Agent, BGMEA, EPB, Chamber of commerce & Customs (Chittagong & Benapole)\r\n• Export documents submit to bank on time and follow-up to payment repatriate.\r\n• Arrange transportation and forwarding services for all orders to ensure material is delivered as per schedule.\r\n• Handle any other commercial related work assigned by Top Management.', 9, 2, 0, 43, 0, '0 1714281811,01847267809', 'henamul_76@yahoo.com    enamul@navana-battery.com', '', 'General', '', 'Pending', '2018-07-18 09:54:47'),
(231, 'Tania Akter', 'Male', '27/07/1993', 'House # 384, Road # 28, New DOHS, Mohakhali, Dhaka', 'B.B.S -Appeared', '2 Year', 'Assistant Manager - Tax, Vat, Audit, RJSC & Consultancy\r\nKHAN Ayub, Chartered Accountants', 1, 2, 0, 1, 0, '01680436807', 'tania27071993@gmail.com', '', 'General', '1532152149.jpg', 'Verified', '2018-07-21 11:49:09'),
(232, 'md younos', 'পুরুষ', '01/04/1991', 'kutubdia.cox\'sbazar.', 'B.A', '১ বছর', 'brac.ps(dfs)bkash.', 23, 2, 0, 45, 0, '01828426202', 'mdyounosshikder@gmail.com', '', 'General', '1532188488.jpg', 'Verified', '2018-07-21 21:54:48'),
(233, 'Md.Fajlul Haque', 'পুরুষ', '02/11/1997', 'Shyamoli Ring Road Dhaka', 'Diploma in Engineering Civil', '১ বছর', 'Developers farmers', 15, 2, 0, 1, 0, '01725846413', 'fhromeo.12@gmail.com', '', 'General', '1532273270.jpeg', 'Verified', '2018-07-22 21:27:51'),
(234, 'Rubina AkterRupw', 'মহিলা', '02/01/1997', 'Lalshah mazar road,, South Tengra,,sarulia, Demra,Dhaka', 'Completed graduation from Southeast University', 'ফ্রেশনার', '', 1, 3, 0, 1, 0, '01798155558', 'rubina.rupa067@gmail.com', '', 'General', '1532284934.jpg', 'Verified', '2018-07-23 00:42:14'),
(235, 'Burhan uddin', 'পুরুষ', '1.1.1983', 'Kishoregonj, Dhaka, Bangladesh', 'B. Com.hons', '১২ বছর', 'Kohinur cosmetic company. Exp. 1yers and abul khair tobacco .5yrs and pran rfl company 6yrs', 27, 2, 0, 6, 0, '01717603699', 'Ymburhankh@gmail.com', '', 'General', '1532285001.jpg', 'Verified', '2018-07-23 00:43:21'),
(236, 'Md.Mosiur Rahman', 'Male', '22-06-1997', 'Village:Rupnathpur\r\nPost Office :Madarhat\r\nThana:Sadullahpur\r\nDistrict :Gaibandha', 'Diploma in Engineering\r\nElectronics Technology', 'Freshener', '', 15, 2, 0, 1, 0, '01798928674', 'rpimosiur786@gmail.com', '', 'General', '', 'Verified', '2018-07-23 01:15:33'),
(237, 'মো: রিপন আলী', 'পুরুষ', '25/11/1993', 'গ্রাম : দক্ষিন ঠাকুরগাঁও, ডাকঘর : ঢোলার হাট,  থানা : ঠাকুরগাঁও, জেলা : ঠাকুরগাঁও', 'ডিগ্রি পাশ', 'ফ্রেশনার', '', 6, 3, 0, 33, 0, '01744951992', '', '', 'General', '1532852349.jpg', 'Verified', '2018-07-29 14:19:09'),
(238, 'Masum Raja', 'পুরুষ', '08/01/2002', 'গ্রাম : ইসলাম নগর  ঠাকুরগাঁও', 'এস এস সি পাশ', '১ বছর', '', 27, 3, 0, 33, 0, '01784918539', '', '', 'General', '1532945536.jpg', 'Verified', '2018-07-30 16:12:16'),
(239, 'neyamulkobir', 'পুরুষ', '3/12/2018', '527/27 Ambagan Magbazar', 'ghjgfj', '১ বছর', 'hhhhhhhhhhhhhhhhhhhhhhhh', 8, 2, 0, 18, 0, '678', 'mehehasan01924629@gmail.com', '678', 'General', '1533034100.jpg', 'Pending', '2018-07-31 16:48:20'),
(246, 'Md Rony', 'Male', '03,03,1980', 'WAN IT LTD.Gulpeshan Plaza.Mogbazar\r\nDhaka.', 'H.S.C', '5 Year', 'CCTV Install', 29, 1, 0, 1, 0, '01677044140', 'tanzidrony@gmail.com', '140', 'General', '1533114166.jpg', 'Pending', '2018-08-01 15:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_professional_category`
--

CREATE TABLE `tbl_professional_category` (
  `id` int(10) NOT NULL COMMENT 'PK',
  `category_slug` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `bn_category_name` varchar(255) NOT NULL,
  `sorted_order` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_professional_category`
--

INSERT INTO `tbl_professional_category` (`id`, `category_slug`, `category_name`, `bn_category_name`, `sorted_order`) VALUES
(1, 'shop-employee', 'Shop Employee', 'দোকান কর্মচারী', 0),
(2, 'factory-employee', 'Factory Employee', 'কারখানার কর্মচারী', 0),
(3, 'garments-workers', 'Garments Workers', 'গার্মেন্টস কর্মী', 0),
(4, 'guards', 'Guards', 'দারোয়ান', 0),
(5, 'security-guard', 'Security Guard', 'সিকিউরিটি গার্ড', 0),
(6, 'daily-labor', 'Daily Labor', 'ডেইলি লেবার', 0),
(7, 'driver', 'Driver', 'ড্রাইভার', 0),
(8, 'hotel-boy', 'Hotel Boy', 'হোটেল বয়', 0),
(9, 'trailer-master', 'Trailer Master', 'টেইলার মাস্টার', 0),
(10, 'operator', 'Operator', 'অপারেটর', 0),
(11, 'carpenter', 'Carpenter', 'কাঠমিস্ত্রি', 0),
(12, 'plastic-door-mistress', 'Plastic Door Mistress', 'প্লাস্টিক ডোর মিস্ত্রী', 0),
(13, 'electric-mistri', 'Electric Mistri', 'ইলেকট্রিক মিস্ত্রী', 0),
(14, 'electronics-mistri', 'Electronics Mistri', 'ইলেক্ট্রনিক্স মিস্ত্রী', 0),
(15, 'ac-fridge-mistri', 'AC, Fridge Mistri', 'এসি, ফ্রিজ মিস্ত্রী', 0),
(16, 'lock-key-mechanic', 'Lock Key Mechanic', 'তালা চাবি মিস্ত্রী', 0),
(17, 'gas-stove-mistry', 'Gas Stove Mistry', 'গ্যাসের চুলা মিস্ত্রী', 0),
(18, 'shutter-mistry', 'Shutter Mistry', 'শাটার মিস্ত্রি', 0),
(19, 'sanitary-mistri', 'Sanitary Mistri', 'সেনেটারি মিস্ত্রী', 0),
(20, 'raj-mistri', 'Raj Mistri', 'রাজ মিস্ত্রী', 0),
(21, 'pipe-fittings-mistri', 'Pipe Fittings Mistri', 'পাইপ ফিটিংস মিস্ত্রী', 0),
(22, 'tiles-mistri', 'Tiles Mistri', 'টাইলস মিস্ত্রী', 0),
(23, 'car-mechanic', 'Car Mechanic', 'গাড়ির মিস্ত্রী', 0),
(24, 'painter', 'Painter', 'রংমিস্ত্রি', 0),
(25, 'grill-welding-machine', 'Grill / Welding Machine', 'গ্রিল / ওয়েল্ডিং মিস্ত্রী', 0),
(26, 'water-pump-mechanic', 'Water Pump Mechanic', 'ওয়াটার পাম্প মিস্ত্রী', 0),
(27, 'motor-bike-mistri', 'Motor Bike Mistri', 'মোটর বাইক মিস্ত্রী', 0),
(28, 'mobile-mechanic', 'Mobile Mechanic', 'মোবাইল মেকানিক', 0),
(29, 'others', 'Others', 'অন্যান্য', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skill_level`
--

CREATE TABLE `tbl_skill_level` (
  `id` tinyint(2) NOT NULL COMMENT 'PK',
  `position` varchar(255) NOT NULL,
  `bn_position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_skill_level`
--

INSERT INTO `tbl_skill_level` (`id`, `position`, `bn_position`) VALUES
(1, 'Top Level', 'উচ্চপদস্থ'),
(2, 'Mid Level', 'মধ্যপদস্থ'),
(3, 'Low Level', 'নিম্নপদস্থ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upazila`
--

CREATE TABLE `tbl_upazila` (
  `id` int(5) NOT NULL COMMENT 'PK',
  `district_id` int(5) NOT NULL COMMENT 'FK',
  `upazila_name` varchar(255) NOT NULL,
  `bn_upazila_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_upazila`
--

INSERT INTO `tbl_upazila` (`id`, `district_id`, `upazila_name`, `bn_upazila_name`) VALUES
(1, 34, 'Amtali Upazila', 'আমতলী'),
(2, 34, 'Bamna Upazila', 'বামনা'),
(3, 34, 'Barguna Sadar Upazila', 'বরগুনা সদর'),
(4, 34, 'Betagi Upazila', 'বেতাগি'),
(5, 34, 'Patharghata Upazila', 'পাথরঘাটা'),
(6, 34, 'Taltali Upazila', 'তালতলী'),
(7, 35, 'Muladi Upazila', 'মুলাদি'),
(8, 35, 'Babuganj Upazila', 'বাবুগঞ্জ'),
(9, 35, 'Agailjhara Upazila', 'আগাইলঝরা'),
(10, 35, 'Barisal Sadar Upazila', 'বরিশাল সদর'),
(11, 35, 'Bakerganj Upazila', 'বাকেরগঞ্জ'),
(12, 35, 'Banaripara Upazila', 'বানাড়িপারা'),
(13, 35, 'Gaurnadi Upazila', 'গৌরনদী'),
(14, 35, 'Hizla Upazila', 'হিজলা'),
(15, 35, 'Mehendiganj Upazila', 'মেহেদিগঞ্জ '),
(16, 35, 'Wazirpur Upazila', 'ওয়াজিরপুর'),
(17, 36, 'Bhola Sadar Upazila', 'ভোলা সদর'),
(18, 36, 'Burhanuddin Upazila', 'বুরহানউদ্দিন'),
(19, 36, 'Char Fasson Upazila', 'চর ফ্যাশন'),
(20, 36, 'Daulatkhan Upazila', 'দৌলতখান'),
(21, 36, 'Lalmohan Upazila', 'লালমোহন'),
(22, 36, 'Manpura Upazila', 'মনপুরা'),
(23, 36, 'Tazumuddin Upazila', 'তাজুমুদ্দিন'),
(24, 37, 'Jhalokati Sadar Upazila', 'ঝালকাঠি সদর'),
(25, 37, 'Kathalia Upazila', 'কাঁঠালিয়া'),
(26, 37, 'Nalchity Upazila', 'নালচিতি'),
(27, 37, 'Rajapur Upazila', 'রাজাপুর'),
(28, 38, 'Bauphal Upazila', 'বাউফল'),
(29, 38, 'Dashmina Upazila', 'দশমিনা'),
(30, 38, 'Galachipa Upazila', 'গলাচিপা'),
(31, 38, 'Kalapara Upazila', 'কালাপারা'),
(32, 38, 'Mirzaganj Upazila', 'মির্জাগঞ্জ '),
(33, 38, 'Patuakhali Sadar Upazila', 'পটুয়াখালী সদর'),
(34, 38, 'Dumki Upazila', 'ডুমকি'),
(35, 38, 'Rangabali Upazila', 'রাঙ্গাবালি'),
(36, 39, 'Bhandaria', 'ভ্যান্ডারিয়া'),
(37, 39, 'Kaukhali', 'কাউখালি'),
(38, 39, 'Mathbaria', 'মাঠবাড়িয়া'),
(39, 39, 'Nazirpur', 'নাজিরপুর'),
(40, 39, 'Nesarabad', 'নেসারাবাদ'),
(41, 39, 'Pirojpur Sadar', 'পিরোজপুর সদর'),
(42, 39, 'Zianagar', 'জিয়ানগর'),
(43, 40, 'Bandarban Sadar', 'বান্দরবন সদর'),
(44, 40, 'Thanchi', 'থানচি'),
(45, 40, 'Lama', 'লামা'),
(46, 40, 'Naikhongchhari', 'নাইখংছড়ি '),
(47, 40, 'Ali kadam', 'আলী কদম'),
(48, 40, 'Rowangchhari', 'রউয়াংছড়ি '),
(49, 40, 'Ruma', 'রুমা'),
(50, 41, 'Brahmanbaria Sadar Upazila', 'ব্রাহ্মণবাড়িয়া সদর'),
(51, 41, 'Ashuganj Upazila', 'আশুগঞ্জ'),
(52, 41, 'Nasirnagar Upazila', 'নাসির নগর'),
(53, 41, 'Nabinagar Upazila', 'নবীনগর'),
(54, 41, 'Sarail Upazila', 'সরাইল'),
(55, 41, 'Shahbazpur Town', 'শাহবাজপুর টাউন'),
(56, 41, 'Kasba Upazila', 'কসবা'),
(57, 41, 'Akhaura Upazila', 'আখাউরা'),
(58, 41, 'Bancharampur Upazila', 'বাঞ্ছারামপুর'),
(59, 41, 'Bijoynagar Upazila', 'বিজয় নগর'),
(60, 42, 'Chandpur Sadar', 'চাঁদপুর সদর'),
(61, 42, 'Faridganj', 'ফরিদগঞ্জ'),
(62, 42, 'Haimchar', 'হাইমচর'),
(63, 42, 'Haziganj', 'হাজীগঞ্জ'),
(64, 42, 'Kachua', 'কচুয়া'),
(65, 42, 'Matlab Uttar', 'মতলব উত্তর'),
(66, 42, 'Matlab Dakkhin', 'মতলব দক্ষিণ'),
(67, 42, 'Shahrasti', 'শাহরাস্তি'),
(68, 43, 'Anwara Upazila', 'আনোয়ারা'),
(69, 43, 'Banshkhali Upazila', 'বাশখালি'),
(70, 43, 'Boalkhali Upazila', 'বোয়ালখালি'),
(71, 43, 'Chandanaish Upazila', 'চন্দনাইশ'),
(72, 43, 'Fatikchhari Upazila', 'ফটিকছড়ি'),
(73, 43, 'Hathazari Upazila', 'হাঠহাজারী'),
(74, 43, 'Lohagara Upazila', 'লোহাগারা'),
(75, 43, 'Mirsharai Upazila', 'মিরসরাই'),
(76, 43, 'Patiya Upazila', 'পটিয়া'),
(77, 43, 'Rangunia Upazila', 'রাঙ্গুনিয়া'),
(78, 43, 'Raozan Upazila', 'রাউজান'),
(79, 43, 'Sandwip Upazila', 'সন্দ্বীপ'),
(80, 43, 'Satkania Upazila', 'সাতকানিয়া'),
(81, 43, 'Sitakunda Upazila', 'সীতাকুণ্ড'),
(82, 44, 'Barura Upazila', 'বড়ুরা'),
(83, 44, 'Brahmanpara Upazila', 'ব্রাহ্মণপাড়া'),
(84, 44, 'Burichong Upazila', 'বুড়িচং'),
(85, 44, 'Chandina Upazila', 'চান্দিনা'),
(86, 44, 'Chauddagram Upazila', 'চৌদ্দগ্রাম'),
(87, 44, 'Daudkandi Upazila', 'দাউদকান্দি'),
(88, 44, 'Debidwar Upazila', 'দেবীদ্বার'),
(89, 44, 'Homna Upazila', 'হোমনা'),
(90, 44, 'Comilla Sadar Upazila', 'কুমিল্লা সদর'),
(91, 44, 'Laksam Upazila', 'লাকসাম'),
(92, 44, 'Monohorgonj Upazila', 'মনোহরগঞ্জ'),
(93, 44, 'Meghna Upazila', 'মেঘনা'),
(94, 44, 'Muradnagar Upazila', 'মুরাদনগর'),
(95, 44, 'Nangalkot Upazila', 'নাঙ্গালকোট'),
(96, 44, 'Comilla Sadar South Upazila', 'কুমিল্লা সদর দক্ষিণ'),
(97, 44, 'Titas Upazila', 'তিতাস'),
(98, 45, 'Chakaria Upazila', 'চকরিয়া'),
(100, 45, 'Cox\'s Bazar Sadar Upazila', 'কক্স বাজার সদর'),
(101, 45, 'Kutubdia Upazila', 'কুতুবদিয়া'),
(102, 45, 'Maheshkhali Upazila', 'মহেশখালী'),
(103, 45, 'Ramu Upazila', 'রামু'),
(104, 45, 'Teknaf Upazila', 'টেকনাফ'),
(105, 45, 'Ukhia Upazila', 'উখিয়া'),
(106, 45, 'Pekua Upazila', 'পেকুয়া'),
(107, 46, 'Feni Sadar', 'ফেনী সদর'),
(108, 46, 'Chagalnaiya', 'ছাগল নাইয়া'),
(109, 46, 'Daganbhyan', 'দাগানভিয়া'),
(110, 46, 'Parshuram', 'পরশুরাম'),
(111, 46, 'Fhulgazi', 'ফুলগাজি'),
(112, 46, 'Sonagazi', 'সোনাগাজি'),
(113, 47, 'Dighinala Upazila', 'দিঘিনালা '),
(114, 47, 'Khagrachhari Upazila', 'খাগড়াছড়ি'),
(115, 47, 'Lakshmichhari Upazila', 'লক্ষ্মীছড়ি'),
(116, 47, 'Mahalchhari Upazila', 'মহলছড়ি'),
(117, 47, 'Manikchhari Upazila', 'মানিকছড়ি'),
(118, 47, 'Matiranga Upazila', 'মাটিরাঙ্গা'),
(119, 47, 'Panchhari Upazila', 'পানছড়ি'),
(120, 47, 'Ramgarh Upazila', 'রামগড়'),
(121, 48, 'Lakshmipur Sadar Upazila', 'লক্ষ্মীপুর সদর'),
(122, 48, 'Raipur Upazila', 'রায়পুর'),
(123, 48, 'Ramganj Upazila', 'রামগঞ্জ'),
(124, 48, 'Ramgati Upazila', 'রামগতি'),
(125, 48, 'Komol Nagar Upazila', 'কমল নগর'),
(126, 49, 'Noakhali Sadar Upazila', 'নোয়াখালী সদর'),
(127, 49, 'Begumganj Upazila', 'বেগমগঞ্জ'),
(128, 49, 'Chatkhil Upazila', 'চাটখিল'),
(129, 49, 'Companyganj Upazila', 'কোম্পানীগঞ্জ'),
(130, 49, 'Shenbag Upazila', 'শেনবাগ'),
(131, 49, 'Hatia Upazila', 'হাতিয়া'),
(132, 49, 'Kobirhat Upazila', 'কবিরহাট '),
(133, 49, 'Sonaimuri Upazila', 'সোনাইমুরি'),
(134, 49, 'Suborno Char Upazila', 'সুবর্ণ চর '),
(135, 50, 'Rangamati Sadar Upazila', 'রাঙ্গামাটি সদর'),
(136, 50, 'Belaichhari Upazila', 'বেলাইছড়ি'),
(137, 50, 'Bagaichhari Upazila', 'বাঘাইছড়ি'),
(138, 50, 'Barkal Upazila', 'বরকল'),
(139, 50, 'Juraichhari Upazila', 'জুরাইছড়ি'),
(140, 50, 'Rajasthali Upazila', 'রাজাস্থলি'),
(141, 50, 'Kaptai Upazila', 'কাপ্তাই'),
(142, 50, 'Langadu Upazila', 'লাঙ্গাডু'),
(143, 50, 'Nannerchar Upazila', 'নান্নেরচর '),
(144, 50, 'Kaukhali Upazila', 'কাউখালি'),
(145, 1, 'Dhamrai Upazila', 'ধামরাই'),
(146, 1, 'Dohar Upazila', 'দোহার'),
(147, 1, 'Keraniganj Upazila', 'কেরানীগঞ্জ'),
(148, 1, 'Nawabganj Upazila', 'নবাবগঞ্জ'),
(149, 1, 'Savar Upazila', 'সাভার'),
(150, 2, 'Faridpur Sadar Upazila', 'ফরিদপুর সদর'),
(151, 2, 'Boalmari Upazila', 'বোয়ালমারী'),
(152, 2, 'Alfadanga Upazila', 'আলফাডাঙ্গা'),
(153, 2, 'Madhukhali Upazila', 'মধুখালি'),
(154, 2, 'Bhanga Upazila', 'ভাঙ্গা'),
(155, 2, 'Nagarkanda Upazila', 'নগরকান্ড'),
(156, 2, 'Charbhadrasan Upazila', 'চরভদ্রাসন '),
(157, 2, 'Sadarpur Upazila', 'সদরপুর'),
(158, 2, 'Shaltha Upazila', 'শালথা'),
(159, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর'),
(160, 3, 'Kaliakior', 'কালিয়াকৈর'),
(161, 3, 'Kapasia', 'কাপাসিয়া'),
(162, 3, 'Sripur', 'শ্রীপুর'),
(163, 3, 'Kaliganj', 'কালীগঞ্জ'),
(164, 3, 'Tongi', 'টঙ্গি'),
(165, 4, 'Gopalganj Sadar Upazila', 'গোপালগঞ্জ সদর'),
(166, 4, 'Kashiani Upazila', 'কাশিয়ানি'),
(167, 4, 'Kotalipara Upazila', 'কোটালিপাড়া'),
(168, 4, 'Muksudpur Upazila', 'মুকসুদপুর'),
(169, 4, 'Tungipara Upazila', 'টুঙ্গিপাড়া'),
(170, 5, 'Dewanganj Upazila', 'দেওয়ানগঞ্জ'),
(171, 5, 'Baksiganj Upazila', 'বকসিগঞ্জ'),
(172, 5, 'Islampur Upazila', 'ইসলামপুর'),
(173, 5, 'Jamalpur Sadar Upazila', 'জামালপুর সদর'),
(174, 5, 'Madarganj Upazila', 'মাদারগঞ্জ'),
(175, 5, 'Melandaha Upazila', 'মেলানদাহা'),
(176, 5, 'Sarishabari Upazila', 'সরিষাবাড়ি '),
(177, 5, 'Narundi Police I.C', 'নারুন্দি'),
(178, 6, 'Astagram Upazila', 'অষ্টগ্রাম'),
(179, 6, 'Bajitpur Upazila', 'বাজিতপুর'),
(180, 6, 'Bhairab Upazila', 'ভৈরব'),
(181, 6, 'Hossainpur Upazila', 'হোসেনপুর '),
(182, 6, 'Itna Upazila', 'ইটনা'),
(183, 6, 'Karimganj Upazila', 'করিমগঞ্জ'),
(184, 6, 'Katiadi Upazila', 'কতিয়াদি'),
(185, 6, 'Kishoreganj Sadar Upazila', 'কিশোরগঞ্জ সদর'),
(186, 6, 'Kuliarchar Upazila', 'কুলিয়ারচর'),
(187, 6, 'Mithamain Upazila', 'মিঠামাইন'),
(188, 6, 'Nikli Upazila', 'নিকলি'),
(189, 6, 'Pakundia Upazila', 'পাকুন্ডা'),
(190, 6, 'Tarail Upazila', 'তাড়াইল'),
(191, 7, 'Madaripur Sadar', 'মাদারীপুর সদর'),
(192, 7, 'Kalkini', 'কালকিনি'),
(193, 7, 'Rajoir', 'রাজইর'),
(194, 7, 'Shibchar', 'শিবচর'),
(195, 8, 'Manikganj Sadar Upazila', 'মানিকগঞ্জ সদর'),
(196, 8, 'Singair Upazila', 'সিঙ্গাইর'),
(197, 8, 'Shibalaya Upazila', 'শিবালয়'),
(198, 8, 'Saturia Upazila', 'সাঠুরিয়া'),
(199, 8, 'Harirampur Upazila', 'হরিরামপুর'),
(200, 8, 'Ghior Upazila', 'ঘিওর'),
(201, 8, 'Daulatpur Upazila', 'দৌলতপুর'),
(202, 9, 'Lohajang Upazila', 'লোহাজং'),
(203, 9, 'Sreenagar Upazila', 'শ্রীনগর'),
(204, 9, 'Munshiganj Sadar Upazila', 'মুন্সিগঞ্জ সদর'),
(205, 9, 'Sirajdikhan Upazila', 'সিরাজদিখান'),
(206, 9, 'Tongibari Upazila', 'টঙ্গিবাড়ি'),
(207, 9, 'Gazaria Upazila', 'গজারিয়া'),
(208, 10, 'Bhaluka', 'ভালুকা'),
(209, 10, 'Trishal', 'ত্রিশাল'),
(210, 10, 'Haluaghat', 'হালুয়াঘাট'),
(211, 10, 'Muktagachha', 'মুক্তাগাছা'),
(212, 10, 'Dhobaura', 'ধবারুয়া'),
(213, 10, 'Fulbaria', 'ফুলবাড়িয়া'),
(214, 10, 'Gaffargaon', 'গফরগাঁও'),
(215, 10, 'Gauripur', 'গৌরিপুর'),
(216, 10, 'Ishwarganj', 'ঈশ্বরগঞ্জ'),
(217, 10, 'Mymensingh Sadar', 'ময়মনসিং সদর'),
(218, 10, 'Nandail', 'নন্দাইল'),
(219, 10, 'Phulpur', 'ফুলপুর'),
(220, 11, 'Araihazar Upazila', 'আড়াইহাজার'),
(221, 11, 'Sonargaon Upazila', 'সোনারগাঁও'),
(222, 11, 'Bandar', 'বান্দার'),
(223, 11, 'Naryanganj Sadar Upazila', 'নারায়ানগঞ্জ সদর'),
(224, 11, 'Rupganj Upazila', 'রূপগঞ্জ'),
(225, 11, 'Siddirgonj Upazila', 'সিদ্ধিরগঞ্জ'),
(226, 12, 'Belabo Upazila', 'বেলাবো'),
(227, 12, 'Monohardi Upazila', 'মনোহরদি'),
(228, 12, 'Narsingdi Sadar Upazila', 'নরসিংদী সদর'),
(229, 12, 'Palash Upazila', 'পলাশ'),
(230, 12, 'Raipura Upazila, Narsingdi', 'রায়পুর'),
(231, 12, 'Shibpur Upazila', 'শিবপুর'),
(232, 13, 'Kendua Upazilla', 'কেন্দুয়া'),
(233, 13, 'Atpara Upazilla', 'আটপাড়া'),
(234, 13, 'Barhatta Upazilla', 'বরহাট্টা'),
(235, 13, 'Durgapur Upazilla', 'দুর্গাপুর'),
(236, 13, 'Kalmakanda Upazilla', 'কলমাকান্দা'),
(237, 13, 'Madan Upazilla', 'মদন'),
(238, 13, 'Mohanganj Upazilla', 'মোহনগঞ্জ'),
(239, 13, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর'),
(240, 13, 'Purbadhala Upazilla', 'পূর্বধলা'),
(241, 13, 'Khaliajuri Upazilla', 'খালিয়াজুরি'),
(242, 14, 'Baliakandi Upazila', 'বালিয়াকান্দি'),
(243, 14, 'Goalandaghat Upazila', 'গোয়ালন্দ ঘাট'),
(244, 14, 'Pangsha Upazila', 'পাংশা'),
(245, 14, 'Kalukhali Upazila', 'কালুখালি'),
(246, 14, 'Rajbari Sadar Upazila', 'রাজবাড়ি সদর'),
(247, 15, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর '),
(248, 15, 'Damudya Upazila', 'দামুদিয়া'),
(249, 15, 'Naria Upazila', 'নড়িয়া'),
(250, 15, 'Jajira Upazila', 'জাজিরা'),
(251, 15, 'Bhedarganj Upazila', 'ভেদারগঞ্জ'),
(252, 15, 'Gosairhat Upazila', 'গোসাইর হাট '),
(253, 16, 'Jhenaigati Upazila', 'ঝিনাইগাতি'),
(254, 16, 'Nakla Upazila', 'নাকলা'),
(255, 16, 'Nalitabari Upazila', 'নালিতাবাড়ি'),
(256, 16, 'Sherpur Sadar Upazila', 'শেরপুর সদর'),
(257, 16, 'Sreebardi Upazila', 'শ্রীবরদি'),
(258, 17, 'Tangail Sadar Upazila', 'টাঙ্গাইল সদর'),
(259, 17, 'Sakhipur Upazila', 'সখিপুর'),
(260, 17, 'Basail Upazila', 'বসাইল'),
(261, 17, 'Madhupur Upazila', 'মধুপুর'),
(262, 17, 'Ghatail Upazila', 'ঘাটাইল'),
(263, 17, 'Kalihati Upazila', 'কালিহাতি'),
(264, 17, 'Nagarpur Upazila', 'নগরপুর'),
(265, 17, 'Mirzapur Upazila', 'মির্জাপুর'),
(266, 17, 'Gopalpur Upazila', 'গোপালপুর'),
(267, 17, 'Delduar Upazila', 'দেলদুয়ার'),
(268, 17, 'Bhuapur Upazila', 'ভুয়াপুর'),
(269, 17, 'Dhanbari Upazila', 'ধানবাড়ি'),
(270, 55, 'Bagerhat Sadar Upazila', 'বাগেরহাট সদর'),
(271, 55, 'Chitalmari Upazila', 'চিতলমাড়ি'),
(272, 55, 'Fakirhat Upazila', 'ফকিরহাট'),
(273, 55, 'Kachua Upazila', 'কচুয়া'),
(274, 55, 'Mollahat Upazila', 'মোল্লাহাট '),
(275, 55, 'Mongla Upazila', 'মংলা'),
(276, 55, 'Morrelganj Upazila', 'মরেলগঞ্জ'),
(277, 55, 'Rampal Upazila', 'রামপাল'),
(278, 55, 'Sarankhola Upazila', 'স্মরণখোলা'),
(279, 56, 'Damurhuda Upazila', 'দামুরহুদা'),
(280, 56, 'Chuadanga-S Upazila', 'চুয়াডাঙ্গা সদর'),
(281, 56, 'Jibannagar Upazila', 'জীবন নগর '),
(282, 56, 'Alamdanga Upazila', 'আলমডাঙ্গা'),
(283, 57, 'Abhaynagar Upazila', 'অভয়নগর'),
(284, 57, 'Keshabpur Upazila', 'কেশবপুর'),
(285, 57, 'Bagherpara Upazila', 'বাঘের পাড়া '),
(286, 57, 'Jessore Sadar Upazila', 'যশোর সদর'),
(287, 57, 'Chaugachha Upazila', 'চৌগাছা'),
(288, 57, 'Manirampur Upazila', 'মনিরামপুর '),
(289, 57, 'Jhikargachha Upazila', 'ঝিকরগাছা'),
(290, 57, 'Sharsha Upazila', 'সারশা'),
(291, 58, 'Jhenaidah Sadar Upazila', 'ঝিনাইদহ সদর'),
(292, 58, 'Maheshpur Upazila', 'মহেশপুর'),
(293, 58, 'Kaliganj Upazila', 'কালীগঞ্জ'),
(294, 58, 'Kotchandpur Upazila', 'কোট চাঁদপুর '),
(295, 58, 'Shailkupa Upazila', 'শৈলকুপা'),
(296, 58, 'Harinakunda Upazila', 'হাড়িনাকুন্দা'),
(297, 59, 'Terokhada Upazila', 'তেরোখাদা'),
(298, 59, 'Batiaghata Upazila', 'বাটিয়াঘাটা '),
(299, 59, 'Dacope Upazila', 'ডাকপে'),
(300, 59, 'Dumuria Upazila', 'ডুমুরিয়া'),
(301, 59, 'Dighalia Upazila', 'দিঘলিয়া'),
(302, 59, 'Koyra Upazila', 'কয়ড়া'),
(303, 59, 'Paikgachha Upazila', 'পাইকগাছা'),
(304, 59, 'Phultala Upazila', 'ফুলতলা'),
(305, 59, 'Rupsa Upazila', 'রূপসা'),
(306, 60, 'Kushtia Sadar', 'কুষ্টিয়া সদর'),
(307, 60, 'Kumarkhali', 'কুমারখালি'),
(308, 60, 'Daulatpur', 'দৌলতপুর'),
(309, 60, 'Mirpur', 'মিরপুর'),
(310, 60, 'Bheramara', 'ভেরামারা'),
(311, 60, 'Khoksa', 'খোকসা'),
(312, 61, 'Magura Sadar Upazila', 'মাগুরা সদর'),
(313, 61, 'Mohammadpur Upazila', 'মোহাম্মাদপুর'),
(314, 61, 'Shalikha Upazila', 'শালিখা'),
(315, 61, 'Sreepur Upazila', 'শ্রীপুর'),
(316, 62, 'angni Upazila', 'আংনি'),
(317, 62, 'Mujib Nagar Upazila', 'মুজিব নগর'),
(318, 62, 'Meherpur-S Upazila', 'মেহেরপুর সদর'),
(319, 63, 'Narail-S Upazilla', 'নড়াইল সদর'),
(320, 63, 'Lohagara Upazilla', 'লোহাগাড়া'),
(321, 63, 'Kalia Upazilla', 'কালিয়া'),
(322, 64, 'Satkhira Sadar Upazila', 'সাতক্ষীরা সদর'),
(323, 64, 'Assasuni Upazila', 'আসসাশুনি '),
(324, 64, 'Debhata Upazila', 'দেভাটা'),
(325, 64, 'Tala Upazila', 'তালা'),
(326, 64, 'Kalaroa Upazila', 'কলরোয়া'),
(327, 64, 'Kaliganj Upazila', 'কালীগঞ্জ'),
(328, 64, 'Shyamnagar Upazila', 'শ্যামনগর'),
(329, 18, 'Adamdighi', 'আদমদিঘী'),
(330, 18, 'Bogra Sadar', 'বগুড়া সদর'),
(331, 18, 'Sherpur', 'শেরপুর'),
(332, 18, 'Dhunat', 'ধুনট'),
(333, 18, 'Dhupchanchia', 'দুপচাচিয়া'),
(334, 18, 'Gabtali', 'গাবতলি'),
(335, 18, 'Kahaloo', 'কাহালু'),
(336, 18, 'Nandigram', 'নন্দিগ্রাম'),
(337, 18, 'Sahajanpur', 'শাহজাহানপুর'),
(338, 18, 'Sariakandi', 'সারিয়াকান্দি'),
(339, 18, 'Shibganj', 'শিবগঞ্জ'),
(340, 18, 'Sonatala', 'সোনাতলা'),
(341, 19, 'Joypurhat S', 'জয়পুরহাট সদর'),
(342, 19, 'Akkelpur', 'আক্কেলপুর'),
(343, 19, 'Kalai', 'কালাই'),
(344, 19, 'Khetlal', 'খেতলাল'),
(345, 19, 'Panchbibi', 'পাঁচবিবি'),
(346, 20, 'Naogaon Sadar Upazila', 'নওগাঁ সদর'),
(347, 20, 'Mohadevpur Upazila', 'মহাদেবপুর'),
(348, 20, 'Manda Upazila', 'মান্দা'),
(349, 20, 'Niamatpur Upazila', 'নিয়ামতপুর'),
(350, 20, 'Atrai Upazila', 'আত্রাই'),
(351, 20, 'Raninagar Upazila', 'রাণীনগর'),
(352, 20, 'Patnitala Upazila', 'পত্নীতলা'),
(353, 20, 'Dhamoirhat Upazila', 'ধামইরহাট '),
(354, 20, 'Sapahar Upazila', 'সাপাহার'),
(355, 20, 'Porsha Upazila', 'পোরশা'),
(356, 20, 'Badalgachhi Upazila', 'বদলগাছি'),
(357, 21, 'Natore Sadar Upazila', 'নাটোর সদর'),
(358, 21, 'Baraigram Upazila', 'বড়াইগ্রাম'),
(359, 21, 'Bagatipara Upazila', 'বাগাতিপাড়া'),
(360, 21, 'Lalpur Upazila', 'লালপুর'),
(361, 21, 'Natore Sadar Upazila', 'নাটোর সদর'),
(362, 21, 'Baraigram Upazila', 'বড়াই গ্রাম'),
(363, 22, 'Bholahat Upazila', 'ভোলাহাট'),
(364, 22, 'Gomastapur Upazila', 'গোমস্তাপুর'),
(365, 22, 'Nachole Upazila', 'নাচোল'),
(366, 22, 'Nawabganj Sadar Upazila', 'নবাবগঞ্জ সদর'),
(367, 22, 'Shibganj Upazila', 'শিবগঞ্জ'),
(368, 23, 'Atgharia Upazila', 'আটঘরিয়া'),
(369, 23, 'Bera Upazila', 'বেড়া'),
(370, 23, 'Bhangura Upazila', 'ভাঙ্গুরা'),
(371, 23, 'Chatmohar Upazila', 'চাটমোহর'),
(372, 23, 'Faridpur Upazila', 'ফরিদপুর'),
(373, 23, 'Ishwardi Upazila', 'ঈশ্বরদী'),
(374, 23, 'Pabna Sadar Upazila', 'পাবনা সদর'),
(375, 23, 'Santhia Upazila', 'সাথিয়া'),
(376, 23, 'Sujanagar Upazila', 'সুজানগর'),
(377, 24, 'Bagha', 'বাঘা'),
(378, 24, 'Bagmara', 'বাগমারা'),
(379, 24, 'Charghat', 'চারঘাট'),
(380, 24, 'Durgapur', 'দুর্গাপুর'),
(381, 24, 'Godagari', 'গোদাগারি'),
(382, 24, 'Mohanpur', 'মোহনপুর'),
(383, 24, 'Paba', 'পবা'),
(384, 24, 'Puthia', 'পুঠিয়া'),
(385, 24, 'Tanore', 'তানোর'),
(386, 25, 'Sirajganj Sadar Upazila', 'সিরাজগঞ্জ সদর'),
(387, 25, 'Belkuchi Upazila', 'বেলকুচি'),
(388, 25, 'Chauhali Upazila', 'চৌহালি'),
(389, 25, 'Kamarkhanda Upazila', 'কামারখান্দা'),
(390, 25, 'Kazipur Upazila', 'কাজীপুর'),
(391, 25, 'Raiganj Upazila', 'রায়গঞ্জ'),
(392, 25, 'Shahjadpur Upazila', 'শাহজাদপুর'),
(393, 25, 'Tarash Upazila', 'তারাশ'),
(394, 25, 'Ullahpara Upazila', 'উল্লাপাড়া'),
(395, 26, 'Birampur Upazila', 'বিরামপুর'),
(396, 26, 'Birganj', 'বীরগঞ্জ'),
(397, 26, 'Biral Upazila', 'বিড়াল'),
(398, 26, 'Bochaganj Upazila', 'বোচাগঞ্জ'),
(399, 26, 'Chirirbandar Upazila', 'চিরিরবন্দর'),
(400, 26, 'Phulbari Upazila', 'ফুলবাড়ি'),
(401, 26, 'Ghoraghat Upazila', 'ঘোড়াঘাট'),
(402, 26, 'Hakimpur Upazila', 'হাকিমপুর'),
(403, 26, 'Kaharole Upazila', 'কাহারোল'),
(404, 26, 'Khansama Upazila', 'খানসামা'),
(405, 26, 'Dinajpur Sadar Upazila', 'দিনাজপুর সদর'),
(406, 26, 'Nawabganj', 'নবাবগঞ্জ'),
(407, 26, 'Parbatipur Upazila', 'পার্বতীপুর'),
(408, 27, 'Fulchhari', 'ফুলছড়ি'),
(409, 27, 'Gaibandha sadar', 'গাইবান্ধা সদর'),
(410, 27, 'Gobindaganj', 'গোবিন্দগঞ্জ'),
(411, 27, 'Palashbari', 'পলাশবাড়ী'),
(412, 27, 'Sadullapur', 'সাদুল্যাপুর'),
(413, 27, 'Saghata', 'সাঘাটা'),
(414, 27, 'Sundarganj', 'সুন্দরগঞ্জ'),
(415, 28, 'Kurigram Sadar', 'কুড়িগ্রাম সদর'),
(416, 28, 'Nageshwari', 'নাগেশ্বরী'),
(417, 28, 'Bhurungamari', 'ভুরুঙ্গামারি'),
(418, 28, 'Phulbari', 'ফুলবাড়ি'),
(419, 28, 'Rajarhat', 'রাজারহাট'),
(420, 28, 'Ulipur', 'উলিপুর'),
(421, 28, 'Chilmari', 'চিলমারি'),
(422, 28, 'Rowmari', 'রউমারি'),
(423, 28, 'Char Rajibpur', 'চর রাজিবপুর'),
(424, 29, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর'),
(425, 29, 'Aditmari', 'আদিতমারি'),
(426, 29, 'Kaliganj', 'কালীগঞ্জ'),
(427, 29, 'Hatibandha', 'হাতিবান্ধা'),
(428, 29, 'Patgram', 'পাটগ্রাম'),
(429, 30, 'Nilphamari Sadar', 'নীলফামারী সদর'),
(430, 30, 'Saidpur', 'সৈয়দপুর'),
(431, 30, 'Jaldhaka', 'জলঢাকা'),
(432, 30, 'Kishoreganj', 'কিশোরগঞ্জ'),
(433, 30, 'Domar', 'ডোমার'),
(434, 30, 'Dimla', 'ডিমলা'),
(435, 31, 'Panchagarh Sadar', 'পঞ্চগড় সদর'),
(436, 31, 'Debiganj', 'দেবীগঞ্জ'),
(437, 31, 'Boda', 'বোদা'),
(438, 31, 'Atwari', 'আটোয়ারি'),
(439, 31, 'Tetulia', 'তেতুলিয়া'),
(440, 32, 'Badarganj', 'বদরগঞ্জ'),
(441, 32, 'Mithapukur', 'মিঠাপুকুর'),
(442, 32, 'Gangachara', 'গঙ্গাচরা'),
(443, 32, 'Kaunia', 'কাউনিয়া'),
(444, 32, 'Rangpur Sadar', 'রংপুর সদর'),
(445, 32, 'Pirgachha', 'পীরগাছা'),
(446, 32, 'Pirganj', 'পীরগঞ্জ'),
(447, 32, 'Taraganj', 'তারাগঞ্জ'),
(448, 33, 'Thakurgaon Sadar Upazila', 'ঠাকুরগাঁও সদর'),
(449, 33, 'Pirganj Upazila', 'পীরগঞ্জ'),
(450, 33, 'Baliadangi Upazila', 'বালিয়াডাঙ্গি'),
(451, 33, 'Haripur Upazila', 'হরিপুর'),
(452, 33, 'Ranisankail Upazila', 'রাণীসংকইল'),
(453, 51, 'Ajmiriganj', 'আজমিরিগঞ্জ'),
(454, 51, 'Baniachang', 'বানিয়াচং'),
(455, 51, 'Bahubal', 'বাহুবল'),
(456, 51, 'Chunarughat', 'চুনারুঘাট'),
(457, 51, 'Habiganj Sadar', 'হবিগঞ্জ সদর'),
(458, 51, 'Lakhai', 'লাক্ষাই'),
(459, 51, 'Madhabpur', 'মাধবপুর'),
(460, 51, 'Nabiganj', 'নবীগঞ্জ'),
(461, 51, 'Shaistagonj Upazila', 'শায়েস্তাগঞ্জ'),
(462, 52, 'Moulvibazar Sadar', 'মৌলভীবাজার'),
(463, 52, 'Barlekha', 'বড়লেখা'),
(464, 52, 'Juri', 'জুড়ি'),
(465, 52, 'Kamalganj', 'কামালগঞ্জ'),
(466, 52, 'Kulaura', 'কুলাউরা'),
(467, 52, 'Rajnagar', 'রাজনগর'),
(468, 52, 'Sreemangal', 'শ্রীমঙ্গল'),
(469, 53, 'Bishwamvarpur', 'বিসশম্ভারপুর'),
(470, 53, 'Chhatak', 'ছাতক'),
(471, 53, 'Derai', 'দেড়াই'),
(472, 53, 'Dharampasha', 'ধরমপাশা'),
(473, 53, 'Dowarabazar', 'দোয়ারাবাজার'),
(474, 53, 'Jagannathpur', 'জগন্নাথপুর'),
(475, 53, 'Jamalganj', 'জামালগঞ্জ'),
(476, 53, 'Sulla', 'সুল্লা'),
(477, 53, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর'),
(478, 53, 'Shanthiganj', 'শান্তিগঞ্জ'),
(479, 53, 'Tahirpur', 'তাহিরপুর'),
(480, 54, 'Sylhet Sadar', 'সিলেট সদর'),
(481, 54, 'Beanibazar', 'বেয়ানিবাজার'),
(482, 54, 'Bishwanath', 'বিশ্বনাথ'),
(483, 54, 'Dakshin Surma Upazila', 'দক্ষিণ সুরমা'),
(484, 54, 'Balaganj', 'বালাগঞ্জ'),
(485, 54, 'Companiganj', 'কোম্পানিগঞ্জ'),
(486, 54, 'Fenchuganj', 'ফেঞ্চুগঞ্জ'),
(487, 54, 'Golapganj', 'গোলাপগঞ্জ'),
(488, 54, 'Gowainghat', 'গোয়াইনঘাট'),
(489, 54, 'Jaintiapur', 'জয়ন্তপুর'),
(490, 54, 'Kanaighat', 'কানাইঘাট'),
(491, 54, 'Zakiganj', 'জাকিগঞ্জ'),
(492, 54, 'Nobigonj', 'নবীগঞ্জ'),
(493, 1, 'Uttara\r\n', 'উত্তরা'),
(494, 1, 'Gulshan', 'গুলশান'),
(495, 1, 'Badda', 'বাড্ডা'),
(496, 1, 'Rampura', 'রামপুরা'),
(497, 1, 'Ramna', 'রমনা'),
(498, 1, 'Motijheel', 'মতিঝিল'),
(499, 1, 'Jatrabari', 'যাত্রাবাড়ি'),
(500, 1, 'Shutrapur', 'সুত্রাপুর'),
(501, 1, 'Lalbag', 'লালবাগ'),
(502, 1, 'Dhanmondi', 'ধানমন্ডি'),
(503, 1, 'Mohammadpur', 'মোহাম্মদপুর'),
(504, 1, 'Mirpur', 'মিরপুর'),
(505, 1, 'Tejgaon', 'তেজগাঁ'),
(506, 43, 'Chittagong Sadar', 'চট্টগ্রাম সদর'),
(507, 43, 'Kotwali', 'কোতোয়ালী'),
(508, 43, 'Bandar', 'বন্দর'),
(509, 43, 'Doublemuring', 'ডবলমুরিং'),
(510, 59, 'Khulna Sadar', 'খুলনা সদর');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(5) NOT NULL COMMENT 'PK',
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL COMMENT 'Unique',
  `roles` varchar(10) NOT NULL COMMENT 'SuperAdmin, Admin, Editor',
  `username` varchar(25) NOT NULL COMMENT 'Unique',
  `encode_password` varchar(100) NOT NULL COMMENT 'My Custom Hash Password',
  `status` tinyint(1) NOT NULL COMMENT '1 for Active, 0 for Inactive',
  `last_login` datetime NOT NULL COMMENT 'Last login time',
  `last_logout` datetime NOT NULL COMMENT 'Last logout time',
  `created_at` datetime NOT NULL COMMENT 'Created time',
  `modified_at` datetime NOT NULL COMMENT 'Modified time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `roles`, `username`, `encode_password`, `status`, `last_login`, `last_logout`, `created_at`, `modified_at`) VALUES
(1, 'Mohammad Lukman Hussain', 'engr.lukman@gmail.com', 'SuperAdmin', 'Lukman', '$2y$10$eH4YTL6wQxpaNV2uVnsJMu6AZANAMFPirHE7wsoXmA1//aN4ok/gW', 1, '2018-04-29 16:37:32', '2018-04-29 16:25:32', '2018-01-17 11:45:20', '2018-01-22 09:11:23'),
(2, 'Admin', 'info@kajkhujee.com', 'Admin', 'Admin', '$2y$10$H3N82we5U3D6mHLVsk8H1ujdnOyFY8ER07BVMwhwuwz5ETjrhJx2m', 1, '2018-08-01 15:05:09', '2018-05-22 00:11:55', '2018-01-17 11:59:19', '2018-04-29 16:24:32'),
(3, 'Editor', 'editor@kajkhujee.com', 'Editor', 'Editor', '$2y$10$0Ua7SfQACDE2DYUY.pngJ.COjB.kDemKO5fcvDxKp4luGrm8dVm0q', 1, '2018-03-25 11:12:55', '2018-03-25 11:13:50', '2018-01-18 10:04:39', '2018-02-19 10:05:15');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_job_seeker`
-- (See below for the actual view)
--
CREATE TABLE `view_job_seeker` (
`id` int(10)
,`name` varchar(255)
,`gender` varchar(10)
,`date_of_birth` varchar(10)
,`address` varchar(255)
,`educational_qualification` text
,`experience_year` varchar(10)
,`experience_details` text
,`general_category_id` int(5)
,`skill_level_id` tinyint(4)
,`professional_category_id` int(5)
,`district_id` int(5)
,`upazila_id` int(5)
,`contact_no` varchar(255)
,`email` varchar(255)
,`category_type` varchar(255)
,`file_name` varchar(255)
,`status` varchar(10)
,`created_at` datetime
,`district_name` varchar(255)
,`bn_district_name` varchar(255)
,`upazila_name` varchar(255)
,`bn_upazila_name` varchar(255)
,`gc_name` varchar(255)
,`gcb_name` varchar(255)
,`pc_name` varchar(255)
,`pcb_name` varchar(255)
,`position` varchar(255)
,`bn_position` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `view_job_seeker`
--
DROP TABLE IF EXISTS `view_job_seeker`;

CREATE ALGORITHM=UNDEFINED DEFINER=`kajkhujee`@`localhost` SQL SECURITY DEFINER VIEW `view_job_seeker`  AS  select `js`.`id` AS `id`,`js`.`name` AS `name`,`js`.`gender` AS `gender`,`js`.`date_of_birth` AS `date_of_birth`,`js`.`address` AS `address`,`js`.`educational_qualification` AS `educational_qualification`,`js`.`experience_year` AS `experience_year`,`js`.`experience_details` AS `experience_details`,`js`.`general_category_id` AS `general_category_id`,`js`.`skill_level_id` AS `skill_level_id`,`js`.`professional_category_id` AS `professional_category_id`,`js`.`district_id` AS `district_id`,`js`.`upazila_id` AS `upazila_id`,`js`.`contact_no` AS `contact_no`,`js`.`email` AS `email`,`js`.`category_type` AS `category_type`,`js`.`file_name` AS `file_name`,`js`.`status` AS `status`,`js`.`created_at` AS `created_at`,`d`.`district_name` AS `district_name`,`d`.`bn_district_name` AS `bn_district_name`,`u`.`upazila_name` AS `upazila_name`,`u`.`bn_upazila_name` AS `bn_upazila_name`,`gc`.`category_name` AS `gc_name`,`gc`.`bn_category_name` AS `gcb_name`,`pc`.`category_name` AS `pc_name`,`pc`.`bn_category_name` AS `pcb_name`,`sl`.`position` AS `position`,`sl`.`bn_position` AS `bn_position` from (((((`tbl_job_seeker` `js` left join `tbl_district` `d` on((`js`.`district_id` = `d`.`id`))) left join `tbl_upazila` `u` on((`js`.`upazila_id` = `u`.`id`))) left join `tbl_general_category` `gc` on((`js`.`general_category_id` = `gc`.`id`))) left join `tbl_professional_category` `pc` on((`js`.`professional_category_id` = `pc`.`id`))) left join `tbl_skill_level` `sl` on((`js`.`skill_level_id` = `sl`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_article`
--
ALTER TABLE `tbl_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banners`
--
ALTER TABLE `tbl_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_general_category`
--
ALTER TABLE `tbl_general_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_job_seeker`
--
ALTER TABLE `tbl_job_seeker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_professional_category`
--
ALTER TABLE `tbl_professional_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_skill_level`
--
ALTER TABLE `tbl_skill_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_upazila`
--
ALTER TABLE `tbl_upazila`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_article`
--
ALTER TABLE `tbl_article`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_banners`
--
ALTER TABLE `tbl_banners`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_general_category`
--
ALTER TABLE `tbl_general_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_job_seeker`
--
ALTER TABLE `tbl_job_seeker`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `tbl_professional_category`
--
ALTER TABLE `tbl_professional_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_skill_level`
--
ALTER TABLE `tbl_skill_level`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_upazila`
--
ALTER TABLE `tbl_upazila`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=511;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
