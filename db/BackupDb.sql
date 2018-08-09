#
# TABLE STRUCTURE FOR: tbl_advertisement
#

DROP TABLE IF EXISTS `tbl_advertisement`;

CREATE TABLE `tbl_advertisement` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `company_name` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `ads_position` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_advertisement` (`id`, `company_name`, `website`, `ads_position`, `file_name`, `created_at`)
VALUES ("1", "", "", "Bottom Left", "1519808993.gif", "2018-02-28 15:09:53")
,("2", "", "", "Bottom Middle", "1519808998.jpg", "2018-02-28 15:09:58")
,("3", "", "", "Bottom Right", "1519809007.gif", "2018-02-28 15:10:07")
,("4", "", "", "Right Sidebar", "1519809047.gif", "2018-02-28 15:10:47")
,("5", "", "", "Right Sidebar", "1519809060.gif", "2018-02-28 15:11:00")
,("6", "", "", "Right Sidebar", "1519809086.gif", "2018-02-28 15:11:26")
,("7", "", "", "Right Sidebar", "1519809093.gif", "2018-02-28 15:11:33")
;

#
# TABLE STRUCTURE FOR: tbl_article
#

DROP TABLE IF EXISTS `tbl_article`;

CREATE TABLE `tbl_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `bn_title` varchar(255) NOT NULL,
  `bn_details` text NOT NULL,
  `file_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `tbl_article` (`id`, `slug`, `title`, `details`, `bn_title`, `bn_details`, `file_name`)
VALUES ("1", "about-us", "About Us", "Kajkhujee.com is an easy to use communication method for both job/work seekers and givers. kajkhujee.com has been created with the intention of creating a huge market of job/work seekers. Here, a job/work seeker can easily provide his or her data which will be available for anyone to see. As a result, employers can easily find the people they need. Here a job seeker or any other experienced or inexperienced worker can easily get involved. So both time and money can be saved while looking for work or a job. On the other hand, employers won't need to invest huge amounts of money to collect potential employees.", "আমাদের সম্পর্কে", "চাকুরী/কাজ গ্রহিতা এবং দাতার সহজ যোগাযোগের মাধ্যম হচ্ছে kajkhujee.com । চাকুরী/কাজ গ্রহিতার এক বৃহৎ বাজার সৃষ্টির লক্ষ্যে তৈরি করা হয়েছে kajkhujee.com । এখানে চাকুরী/কাজ গ্রহিতা তার Biodata সহজেই জমা দিতে পারবেন, যাহা সকলের জন্য উন্মুক্ত থাকবে। ফলে চাকুরী/কাজ দাতা সহজেই তার প্রয়োজনীয় ব্যক্তিকে খুজে নিতে পারবেন। এখানে চাকুরীজীবি অথবা যেকোন পেশার অভিজ্ঞ ও অনভিজ্ঞ সকলেই অংশগ্রহন করতে পারবেন। ফলে, চাকুরী/কাজ খোঁজার জন্য তাদের সময় ও অর্থ দুটোই বেঁচে যাবে। পক্ষান্তরে চাকুরী/কাজ দাতাগনের এখন আর টাকা খরচ করে বিভিন্ন মাধ্যমে বিজ্ঞাপন দেয়ার প্রয়োজন হবে না।", "1519016418.png")
,("2", "about-job-seekers", "About Job Seekers", "In most cases we see that, job/work seekers struggle to understand where they need to go, where they need to provide their CV and how much money they need to spend. For these people, kajkhujee.com is bringing a great opportunity. It is very easy to enter your CV here. From which, employers can easily find the right person for their job. So, hurry and provide your CV today. Your dream job may be just around the corner.", "চাকুরী প্রত্যাশীদের সম্পর্কে", "অধিকাংশ ক্ষেত্রেই দেখা যায় যে, চাকুরী/ কাজ প্রত্যাশীরা কোথায় যাবেন, কোথায় সিভি জমা দিবেন অথবা টাকা খরচ করে বিভিন্ন স্থানে ছোটাছুটি করতে হয়। তাদের জন্য আমাদের এই সাইট তৈরি করা হয়েছে। এখানে খুব সহজেই আপনার জীবন বৃত্তান্ত জমা দিতে পারেন। যেখান থেকে চাকুরী কাজ দাতাগন তার প্রয়োজন মত ব্যাক্তিকে খুঁজে নিতে পারবেন। তাই দেরী না করে আজই আপনার সিভি জমা দিন। চাকুরী / কাজ আপনার কড়া নাড়ছে।", "")
,("3", "about-employers", "About Employers", "Employers Usually collect their staff through various advertisement methods. And oftentimes, owners of small businesses have to collect workers in person. In either case, a lot of time and money is wasted. But now employers can save both their money and time by finding the employee that's right for them from the vast list of job/work seekers from kajkhujee.com.", "চাকুরীদাতার সম্পর্কে", "চাকুরী / কাজ দাতাগন সাধারনত তাদের প্রয়োজনীয় ব্যক্তিকে সংগ্রহ করার জন্য যেকোন প্রচার মাধ্যমে বিজ্ঞাপন দিয়ে থাকেন। আবার, ক্ষুদ্র ব্যবসায়ীগণ অনেক সময় ব্যক্তিগতভাবে সংগ্রহ করে থাকেন। উভয় ক্ষেত্রেই টাকা এবং সময়ের অপচয় হয়। এখন আমাদের সাইটের মাধ্যমে বিশাল চাকুরী/ কাজ প্রত্যাশীদের ভাণ্ডার থেকে তাদের প্রয়োজনীয় ব্যক্তিকে খুজে নিতে পারবেন। তাদের সময় এবং টাকা দুটোরই সাশ্রয় হবে।", "")
,("4", "faq", "FAQ", "<b> 1. What is kajkhujee.com ? </b> 
Answer: kajkhujee.com is a place where people of any occupation can post their data easily. Any employer (person or business) can enter the site and easily find the person they need.

<b> 2. How can I provide my data ? </b> 
Answer: Posting data on kajkhujee.com is quick and easy. Just click the DATA POST button, fill up the form that comes up and then click the POST button below.(Your post will go live after being analyzed, it usually takes around an hour.)

<b> 3. How can I delete my data ? </b> 
Answer: If you wish to delete any data click CONTACT US and send us a message using your E-mail address. Other than that, your data gets deleted automatically after a month. If you want to keep your data live, you must resubmit it.

<b> 4. For how long is my data going to be available ? </b> 
Answer: For 30 days, if you don't want to remove it before that time.

<b> 5. I entered some data but I can't find it. What's the problem ? </b> 
Answer: Each and Every data is properly analyzed so as to make sure that nobody is cheated on in any way. So you have to wait one hour before you can see your data live. If you don't see your data within an hour, you'll be sent a message explaining why it didn't go live. This message will also provide you with information as to how to change your provided data.

<b> 6. Where can I see the data that I provided ? </b> 
Answer: You can see your data by clicking ALL JOB SEEKERS from kajkhujee.com's HOME PAGE.

<b> 7. Who can see the data that I provided ? </b> 
Answer: Any employer can check the data that you provided by clicking ALL JOB SEEKERS from our website and can call you if they're interested in hiring you.

<b> 8. Can I provide multiple data entries ? </b> 
Answer: No, you cannot provide multiple data entries. Until a person's first data entry is removed, that person cannot provide another one.

<b> 9. Nobody is contacting me after I provided my data. What do I do ? </b> 
Answer: Perhaps nobody has seen or liked the data you provided up to this point. Do not lose hope, any employer may find your data to their liking at any moment.

<b> 10. Do I need to spend money to provide my data ? </b> 
Answer: Currently, for a few days you will not need to spend any money to post your data. In the future, you will need to provide a small fee via bKash in order to post your data.", "প্রশ্নোত্তর", "<b> ১। Kajkhujee.com কী? </b>
উত্তরঃ Kajkhujee.com এমন একটি place যেখানে যে কোন পেশার লোক অতি সহজে তার ডাটা পোষ্ট করতে পারবেন। যে কোন কাজ দাতা ব্যক্তি/প্রতিষ্ঠান এই ওয়েব সাইটে ঢুকে সহজেই তার প্রয়োজনীয় ব্যক্তিকে বেছে নিতে পারবেন।

<b> ২। আমি কিভাবে ডাটা জমা দিতে পারি? </b> 
উত্তরঃ Kajkhujee.com এ ডাটা পোষ্ট করা খুবই সহজ এবং দ্রুত।এজন্য DATA POST বাটনে ক্লীক করুন।নির্দেশিত ফর্মটি ফিলাপ করুন এবং নিচের POST বাটনটি ক্লীক করুন। (আপনার পোষ্টটি যাচাইয়ের পর এক ঘণ্টার মধ্যে লাইভ করা হবে।

<b> ৩। কিভাবে আমার ডাটা মুছে ফেলতে পারি? </b> 
উত্তরঃ কোন ডাটা মুছে ফেলতে হলে CONTACT US এ গিয়ে আপনার ব্যবহৃত ইমেইল এড্রেসের মাধ্যমে আমাদের অবহিত করুন। তাছাড়া আপনার ডাটা এক মাস পর automatically মুছে যাবে। আপনি লাইভে থাকতে চাইলে পুনরায় ডাটা এণ্ট্রি করতে হবে।

<b> ৪। Kajkhujee.com এ আমার ডাটা কত দিন থাকবে? </b> 
উত্তরঃ ৩০দিন থাকবে। যদি আপনি ডাটাটি মুছে না ফেলেন।

<b> ৫। আমি একটা ডাটা দিয়েছি তা খুজে পাচ্ছিনা।কি সমস্যা? </b> 
উত্তরঃ সকল ডাটাই যাচাই বাছাই করা হয় যাতে Kajkhujee গ্রহিতা/দাতা কোন প্রকার প্রতারিত না হন।তবে ডাটাটি লাইভে দেখার জন্য এক ঘন্টা অপেক্ষা করতে হবে।যদি এক ঘন্টার মধ্যে আপনার ডাটা দেখতে না পান তবে কেন পাননি তার ব্যাখ্যা সহকারে মেইল পাবেন।যাহাতে কি কি সংশোধন করতে হবে তাহা লিপিবদ্দ থাকবে।

<b> ৬। আমি কোথায় আমার জমাকৃত ডাটা দেখতে পাবো? </b> 
উত্তরঃ Kajkhujee.com এর HOME PAGE এ প্রদত্ত উপরের ALL JOB SEEKER বাটন ক্লীক করলে আপনার জমাকৃত ডাটা দেখতে পাবেন।

<b> ৭। কারা আমার জমাকৃত ডাটা দেখতে পাবে? </b> 
উত্তরঃ যেকোন নিয়োগ কর্তাই আমাদের ওয়েব সাইট ওপেন করে ALL JOB SEEKER বাটন ক্লীক করলেই আপনার জমাকৃত ডাটা দেখতে পাবে এবং পছন্দ হলে আপনাকে কল করবেন।

<b> ৮। আমি কি একাধিক ডাটা জমা দিতে পারবো? </b> 
উত্তরঃ না,একাধিক ডাটা জমা করতে পারবেন না। জমাকৃত ডাটা মুছে না যাওয়া পর্যন্ত একই ব্যক্তি ২য়টি জমা করতে পারবেন না।

<b> ৯। আমি আমার ডাটা জমা দেয়ার পরেও কোন সাড়া পাচ্ছি না। তখন কি করতে পারি? </b> 
উত্তরঃ হয়তো তখনও কোন নিয়োগ কর্তা আপনার ডাটা পছন্দ করে নাই। তবে ধৈর্য্য হারাবেন না,যেকোনো সময় যেকোনো নিয়োগ কর্তার আপনার ডাটা পছন্দ হয়ে যেতে পারে।

<b> ১০। এখানে আমার ডাটা জমা দিতে কোন টাকা লাগে? </b> 
উত্তরঃ আপাতত কয়েক দিন কোন টাকা লাগবে না। পরবর্তীতে বিকাশের মাধ্যমে ফি জমা দিয়ে ডাটা পোষ্ট করতে হবে।", "")
,("5", "privacy-policy", "Privacy & Policy", "Please be informed of the following rules before using the kajkhujee.com website :
<b>Rules:</b>
It is the responsibility of the user to follow the rules and regulations when uploading his or her data to kajkhujee.com. kajkhujee.com does not take responsibility for any false or illegal information presented as data. Data providers are responsible to ensure that, they do not provide false information or violate any other persons rights. Data providers and users also consent to the fact that, kajkhujee.com is free from any barriers, responsibilities and claims that may arise from using the website's services. Data providers consent to the fact that, they may provide their information to kajkhujee.com only when the provided information follows the rules of kajkhujee.com.
<b>Ownership:</b>
kajkhujee.com does not provide the right to use any method or technology available at present or may be available in the future in order to use, copy, change, adapt, disclose, translate, involve or distribute any of the website's contents.
Any content, subject, software and service pertaining to kajkhujee.com is the property of kajkhujee.com. Any rights of the website such as : copyright, trademark, service mark and business names are also the property of kajkhujee.com. You are not allowed to disclose, use, install, post, shift, save or trade any of this website's contents without the permission of kajkhujee.com.
<b>Data Disclosure:</b>
Data providers on kajkhujee.com must provide their full, honest information with a conscious, sound mind and without being persuaded by anybody else. The act of uploading one's data to kajkhujee.com is to reveal one's every information to everybody so that, users may contact data providers to give employment after being informed about the data providers' detailed information. The purpose of kajkhujee.com is to make data be available to all. kajkhujee.com reserves the right to change or delete any irrelevent texts or images.
<b>Secrecy:</b>
kajkhujee.com does not keep any information of the website's users a secret. This is done for the job/work seekers own benifit.
<b>Contact Method:</b>
Data providers on kajkhujee.com have to provide their address, phone number and e-mail as their contact method, all of these will be revealed to everybody.
<b>Link Safety:</b>
kajkhujee.com may have links or references to third-party websites. kajkhujee.com is not responsible for any matter regarding third-party websites. kajkhujee.com does not keep an eye on third-party websites. The moment when a user leaves kajkhujee.com and enters a third-party website is the moment when, the user must take responsibilities regarding the risk of entering that website.
<b>Exchange:</b>
Data providers must pay a small exchange cost to kajkhujee.com in order to post their data. After payment and disclosure of Transaction ID to kajkhujee.com one may post their data. This data will be verified and be viewable in the website within an hour.
N.B. kajkhujee.com reserves the rights to change these rules at any time, under any circumstances.
<b>Safety:</b>
Employees and employers collected from kajkhujee.com must take responsibility regarding their own employment. No responsibility falls under kajkhujee.com in this regard. Both employers and employees must take responsibility of any mistakes made during the selection process.", "গোপনীয়তা নীতি", "Kajkhujee.com ওয়েব সাইট ব্যবহারের পূর্বে নিম্ন লিখিত শর্তাবলী সম্পর্কে যেনে নিন- 
<b>শর্তাবলীঃ</b>
kajkhujee.com-এ data আপলোড করার সময় সকল আইন-কানুন মেনে চলা ব্যবহারকারির দায়িত্ব। প্রদেয় data এর তথ্যাদি বে-আইনি এবং অসৎ হলে দায়-দায়িত্ব kajkhujee.com এর উপর বর্তায়না। Data প্রদানকারী নিশ্চয়তা প্রদান করে যে,অসৎ তথ্য প্রদান এবং অন্য কোন ব্যক্তির অধিকার লংঘন করে না। Data দাতা এবং ব্যবহারকারীগণ এই মর্মে আরও সম্মতি প্রদান করে যে,এই সার্ভিস গ্রহনের কারনে উদ্ভুত সকল বাধ্য-বাধকতা,দায়-দায়িত্ব দাবি থেকে kajkhujee.com সম্পূর্ণভাবে মুক্ত। Data দাতাগণ সম্মতি প্রদান করেন যে,তাদের প্রদানকৃত তথ্যাদি kajkhujee.com এর শর্তাবলী মেনে kajkhujee.com এর ওয়েব সাইটে প্রদান করা যেতে পারে।
<b>মালিকানাঃ</b>
বর্তমানে প্রকাশিত বা ভবিষৎ এ আবিষ্কার হতে পারে এমন কোন মাধ্যমে বা প্রযুক্তিতে সকল বিষয় বস্তু ব্যবহার করা,নকল করা,পরিবর্তন করা,খাপখাওয়ানো,প্রকাশ করা,অনুবাদ করা,এবং সেইগুলি অন্তর্ভুক্ত ও বিতরন করার ক্ষেএে kajkhujee.com কাহাকেও অধিকার প্রদান করে না।kajkhujee.com এর উপাদান বিষয়বস্তু,সফটওয়ার ও সার্ভিস সমূহ kajkhujee এর সম্পত্তি।ওয়েব সাইটের যেকোন অধিকার যেমন সত্তাধিকার,ট্রেডমার্ক,ব্যবসায়িক নাম kajkhujee এর সম্পত্তি। kajkhujee এর অনুমতি ছাড়া এই সাইটের কোন বিষয় প্রকাশ করা,ব্যবহার করা,ইন্সটল করা,পোস্ট স্থান্তর,সংরক্ষন কিংবা আদান-প্রদান করা যাবে না।
<b>Data প্রকাশঃ</b>
kajkhujee.com এ data প্রদানকারীগণ স্বজ্ঞানে,সুস্থ মস্থিস্কে অন্যেরদ্বারা প্রভাবিত না হয়ে নিজের সত্য তথ্যাদি প্রদান করে।kajkhujee.com এ data আপলোড করার অর্থই হলো সকল তথ্য সকলের নিকট প্রকাশ করা।যাহাতে data প্রদানকারীর সম্পর্কে বিস্তারিত জেনে কাজ দেয়ার জন্য তাহার সহিত যোগাযোগ করতে পারে।প্রদেয় Data সকলের দৃষ্টিগোচর হওয়ার জন্যই kajkhujee.com ব্যাবহার করতে হয়।কোন অপ্রাশঙ্গিক লেখা বা ছবি পরিবর্তন বা বাতিল করার অধিকার kajkhujee.com সংরক্ষন করে।
<b>গোপনিয়তাঃ</b>
kajkhujee.com এ ব্যবহারকারী কোন তথ্যই গোপন করা হয় না।কাজ/চাকুরী প্রার্থীর সুবিধার জন্য কাজ/চাকুরী দাতার নিকট সকল তথ্যই প্রকাশ করা হয়।
<b>যোগাযোগের মাধ্যমঃ</b>
kajkhujee.com এ data প্রদান কারীরা যোগাযোগের মাধ্যম হিসেবে ঠিকানা,ফোন নাম্বার এবং email address ব্যবহার করবেন।যাহা সকলের জন্য প্রকাশ করা হবে।
<b>লিঙ্ক সতর্কতাঃ</b>
kajkhujee.com এ তৃতীয় পক্ষের ওয়েবসাইটের লিঙ্ক বা রেফারেন্স উল্লেখ থাকতে পারে।তৃতীয় পক্ষের কোন বিষয় বস্থুর জন্য kajkhujee.com দায়ী নয়।তৃতীয় পক্ষের ওয়েবসাইটের উপর নজর রাখা হয় না।যে মুহূর্তে ব্যবহারকারী kajkhujee.com ছেড়ে তৃতীয় পক্ষের সাইটে প্রবেশ করেন সে মুহূর্ত থেকে ব্যবহারকারী তার নিজ ঝুকিতে সেখানে অবস্থান করেন।
<b>বিনিময়ঃ</b>
kajkhujee.com এ data post করতে সামান্য বিনিময় মূল্য দিতে হয়। যাহা বিকাশের মাধ্যমে পরিশোধ করার পর ট্রানজেকশন আইডি উল্লেখ পূর্বক data post করা যাবে। যাহা যাচাই করে ১ঘন্টার মধ্যে দৃশ্যমান করা হবে।
<b>সতর্কতাঃ</b>
kajkhujee.com এর মাধ্যমে সংগৃহিত কাজদাতা এবং কাজ গ্রহিতা নিজ নিজ দায়িত্ব কাজ দিবেন এবং নিবেন।যে কোন অনাকাক্ষিত পরিস্থিতির জন্য kajkhujee দায়ী নয়।উভয়ই যাছাই বাছাইয়ে ভুল করলে নিজ নিজ দায়িত্বের উপর বর্তায়।
বিঃদ্রঃ kajkhujee.com যে কোন সময় যে কোন অবস্থায় এই শর্তাবলি বাতিল,পরিবর্তন এবং সংযোজন করার অধিকার সংরক্ষন করে।", "")
;

#
# TABLE STRUCTURE FOR: tbl_banners
#

DROP TABLE IF EXISTS `tbl_banners`;

CREATE TABLE `tbl_banners` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `file_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_banners` (`id`, `file_name`)
VALUES ("1", "1519020162.png")
;

#
# TABLE STRUCTURE FOR: tbl_contact
#

DROP TABLE IF EXISTS `tbl_contact`;

CREATE TABLE `tbl_contact` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `company_name` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_contact` (`id`, `company_name`, `phone_no`, `email`, `address`, `logo`)
VALUES ("1", "KajKhujee", "01xxxxxxxxx", "info@kajkhujee.com", "Dhaka, Bangladesh", "logo.png")
;

#
# TABLE STRUCTURE FOR: tbl_district
#

DROP TABLE IF EXISTS `tbl_district`;

CREATE TABLE `tbl_district` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `district_name` varchar(255) NOT NULL,
  `bn_district_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_district` (`id`, `district_name`, `bn_district_name`)
VALUES ("1", "Dhaka", "ঢাকা")
,("2", "Faridpur", "ফরিদপুর")
,("3", "Gazipur", "গাজীপুর")
,("4", "Gopalganj", "গোপালগঞ্জ")
,("5", "Jamalpur", "জামালপুর")
,("6", "Kishoreganj", "কিশোরগঞ্জ")
,("7", "Madaripur", "মাদারীপুর")
,("8", "Manikganj", "মানিকগঞ্জ")
,("9", "Munshiganj", "মুন্সিগঞ্জ")
,("10", "Mymensingh", "ময়মনসিং")
,("11", "Narayanganj", "নারায়াণগঞ্জ")
,("12", "Narsingdi", "নরসিংদী")
,("13", "Netrokona", "নেত্রকোনা")
,("14", "Rajbari", "রাজবাড়ি")
,("15", "Shariatpur", "শরীয়তপুর")
,("16", "Sherpur", "শেরপুর")
,("17", "Tangail", "টাঙ্গাইল")
,("18", "Bogra", "বগুড়া")
,("19", "Joypurhat", "জয়পুরহাট")
,("20", "Naogaon", "নওগাঁ")
,("21", "Natore", "নাটোর")
,("22", "Nawabganj", "নবাবগঞ্জ")
,("23", "Pabna", "পাবনা")
,("24", "Rajshahi", "রাজশাহী")
,("25", "Sirajgonj", "সিরাজগঞ্জ")
,("26", "Dinajpur", "দিনাজপুর")
,("27", "Gaibandha", "গাইবান্ধা")
,("28", "Kurigram", "কুড়িগ্রাম")
,("29", "Lalmonirhat", "লালমনিরহাট")
,("30", "Nilphamari", "নীলফামারী")
,("31", "Panchagarh", "পঞ্চগড়")
,("32", "Rangpur", "রংপুর")
,("33", "Thakurgaon", "ঠাকুরগাঁও")
,("34", "Barguna", "বরগুনা")
,("35", "Barisal", "বরিশাল")
,("36", "Bhola", "ভোলা")
,("37", "Jhalokati", "ঝালকাঠি")
,("38", "Patuakhali", "পটুয়াখালী")
,("39", "Pirojpur", "পিরোজপুর")
,("40", "Bandarban", "বান্দরবান")
,("41", "Brahmanbaria", "ব্রাহ্মণবাড়িয়া")
,("42", "Chandpur", "চাঁদপুর")
,("43", "Chittagong", "চট্টগ্রাম")
,("44", "Comilla", "কুমিল্লা")
,("45", "Cox's Bazar", "কক্স বাজার")
,("46", "Feni", "ফেনী")
,("47", "Khagrachari", "খাগড়াছড়ি")
,("48", "Lakshmipur", "লক্ষ্মীপুর")
,("49", "Noakhali", "নোয়াখালী")
,("50", "Rangamati", "রাঙ্গামাটি")
,("51", "Habiganj", "হবিগঞ্জ")
,("52", "Maulvibazar", "মৌলভীবাজার")
,("53", "Sunamganj", "সুনামগঞ্জ")
,("54", "Sylhet", "সিলেট")
,("55", "Bagerhat", "বাগেরহাট")
,("56", "Chuadanga", "চুয়াডাঙ্গা")
,("57", "Jessore", "যশোর")
,("58", "Jhenaidah", "ঝিনাইদহ")
,("59", "Khulna", "খুলনা")
,("60", "Kushtia", "কুষ্টিয়া")
,("61", "Magura", "মাগুরা")
,("62", "Meherpur", "মেহেরপুর")
,("63", "Narail", "নড়াইল")
,("64", "Satkhira", "সাতক্ষীরা")
;

#
# TABLE STRUCTURE FOR: tbl_general_category
#

DROP TABLE IF EXISTS `tbl_general_category`;

CREATE TABLE `tbl_general_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `category_slug` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `bn_category_name` varchar(255) NOT NULL,
  `sorted_order` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_general_category` (`id`, `category_slug`, `category_name`, `bn_category_name`, `sorted_order`)
VALUES ("1", "accounts-and-finance", "Accounts and Finance", "একাউন্টস এন্ড ফিন্যান্স", "0")
,("2", "administration", "Administration", "এডমিনিস্ট্রেশন", "0")
,("3", "agriculture", "Agriculture", "এগ্রিকালচার", "0")
,("4", "architecture", "Architecture", "আর্কিটেকচার", "0")
,("5", "air-lines", "Air Lines", "এয়ার-লাইন্স", "0")
,("6", "bank", "Bank", "ব্যাংক", "0")
,("7", "beauty-care-fitness", "Beauty Care / Fitness", "বিউটি কেয়ার / ফিটনেস", "0")
,("8", "commercial", "Commercial", "কমার্শিয়াল", "0")
,("9", "supply-chain", "Supply Chain", "সাপ্লাই চেইন", "0")
,("10", "creative-design", "Creative Design", "ক্রিয়েটিভ ডিজাইন", "0")
,("11", "customer-support-call-center", "Customer Support / Call Center", "কাস্টমার সাপোর্ট/ কল সেন্টার", "0")
,("12", "data-entry-computer-operator", "Data Entry / Computer Operator", "ডাটা-এন্ট্রি / কম্পিউটার অপারেটর", "0")
,("13", "diploma-technical-hand", "Diploma / Technical Hand", "ডিপ্লোমা / টেকনিক্যাল হ্যান্ড", "0")
,("14", "education", "Education", "এডুকেশন", "0")
,("15", "engineer", "Engineer", "ইঞ্জিনিয়ার", "0")
,("16", "garments-textile", "Garments / Textile", "গার্মেন্টস / টেক্সটাইল", "0")
,("17", "hotel-restaurant", "Hotel / Restaurant", "হোটেল / রেস্টুরেন্ট", "0")
,("18", "human-resource", "Human Resource", "হিউম্যান রিসোর্স", "0")
,("19", "lawyer", "Lawyer", "আইনজীবী", "0")
,("20", "media", "Media", "মিডিয়া", "0")
,("21", "medical-pharmacy", "Medical / Pharmacy", "মেডিক্যাল / ফার্মাসী", "0")
,("22", "nurses", "Nurses", "নার্স", "0")
,("23", "ngo", "NGO", "এন-জি-ও", "0")
,("24", "production", "Production", "প্রোডাকশন", "0")
,("25", "real-estate-developer", "Real Estate / Developer", "রিয়েল স্টেট / ডেভেলপার", "0")
,("26", "consultation", "Consultation", "কনসালটেন্স", "0")
,("27", "sales-marketing", "Sales / Marketing", "সেলস / মার্কেটিং", "0")
,("28", "ps-receptionist", "P.S / Receptionist", "পি-এস/ রিসিপশনিস্ট", "0")
,("29", "it", "IT", "আইটি", "0")
,("30", "trainer", "Trainer", "ট্রেইনার", "0")
,("31", "tutor", "Tutor", "টিউটর", "0")
,("32", "supplier", "Supplier", "সাপ্লায়ার", "0")
,("33", "contractor", "Contractor", "কন্ট্রাক্টর", "0")
,("34", "part-time", "Part Time", "পার্ট-টাইম", "0")
,("35", "freshener", "Freshener", "ফ্রেশনার", "0")
,("36", "others", "Others", "অন্যান্য", "0")
;

#
# TABLE STRUCTURE FOR: tbl_job_seeker
#

DROP TABLE IF EXISTS `tbl_job_seeker`;

CREATE TABLE `tbl_job_seeker` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK',
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
  `category_type` varchar(255) NOT NULL COMMENT 'General/Professional',
  `file_name` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending' COMMENT 'Pending/Verified',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_job_seeker` (`id`, `name`, `gender`, `date_of_birth`, `address`, `educational_qualification`, `experience_year`, `experience_details`, `general_category_id`, `skill_level_id`, `professional_category_id`, `district_id`, `upazila_id`, `contact_no`, `email`, `category_type`, `file_name`, `status`, `created_at`)
VALUES ("10", "Hasan", "পুরুষ", "35", "Barisal", "", "", "", "0", "0", "9", "35", "13", "0172312345", "", "Professional", "", "Verified", "2018-03-05 00:32:59")
,("11", "Kabir", "Male", "12.02.1996", "Narayengonj", "MA", "3 Year", "Three years", "2", "1", "0", "1", "0", "01711356235", "mnbbghghhghhh", "General", "1523350654.jpg", "Verified", "2018-04-10 14:57:34")
,("12", "Kabir", "Male", "20.12.1985", "Narayengonj", "MA", "3 Year", "Three yers", "8", "1", "0", "1", "0", "01711525252", "mjjgugfv", "General", "1523350946.jpg", "Verified", "2018-04-10 15:02:26")
;

#
# TABLE STRUCTURE FOR: tbl_professional_category
#

DROP TABLE IF EXISTS `tbl_professional_category`;

CREATE TABLE `tbl_professional_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `category_slug` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `bn_category_name` varchar(255) NOT NULL,
  `sorted_order` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_professional_category` (`id`, `category_slug`, `category_name`, `bn_category_name`, `sorted_order`)
VALUES ("1", "shop-employee", "Shop Employee", "দোকান কর্মচারী", "0")
,("2", "factory-employee", "Factory Employee", "কারখানার কর্মচারী", "0")
,("3", "garments-workers", "Garments Workers", "গার্মেন্টস কর্মী", "0")
,("4", "guards", "Guards", "দারোয়ান", "0")
,("5", "security-guard", "Security Guard", "সিকিউরিটি গার্ড", "0")
,("6", "daily-labor", "Daily Labor", "ডেইলি লেবার", "0")
,("7", "driver", "Driver", "ড্রাইভার", "0")
,("8", "hotel-boy", "Hotel Boy", "হোটেল বয়", "0")
,("9", "trailer-master", "Trailer Master", "টেইলার মাস্টার", "0")
,("10", "operator", "Operator", "অপারেটর", "0")
,("11", "carpenter", "Carpenter", "কাঠমিস্ত্রি", "0")
,("12", "plastic-door-mistress", "Plastic Door Mistress", "প্লাস্টিক ডোর মিস্ত্রী", "0")
,("13", "electric-mistri", "Electric Mistri", "ইলেকট্রিক মিস্ত্রী", "0")
,("14", "electronics-mistri", "Electronics Mistri", "ইলেক্ট্রনিক্স মিস্ত্রী", "0")
,("15", "ac-fridge-mistri", "AC, Fridge Mistri", "এসি, ফ্রিজ মিস্ত্রী", "0")
,("16", "lock-key-mechanic", "Lock Key Mechanic", "তালা চাবি মিস্ত্রী", "0")
,("17", "gas-stove-mistry", "Gas Stove Mistry", "গ্যাসের চুলা মিস্ত্রী", "0")
,("18", "shutter-mistry", "Shutter Mistry", "শাটার মিস্ত্রি", "0")
,("19", "sanitary-mistri", "Sanitary Mistri", "সেনেটারি মিস্ত্রী", "0")
,("20", "raj-mistri", "Raj Mistri", "রাজ মিস্ত্রী", "0")
,("21", "pipe-fittings-mistri", "Pipe Fittings Mistri", "পাইপ ফিটিংস মিস্ত্রী", "0")
,("22", "tiles-mistri", "Tiles Mistri", "টাইলস মিস্ত্রী", "0")
,("23", "car-mechanic", "Car Mechanic", "গাড়ির মিস্ত্রী", "0")
,("24", "painter", "Painter", "রংমিস্ত্রি", "0")
,("25", "grill-welding-machine", "Grill / Welding Machine", "গ্রিল / ওয়েল্ডিং মিস্ত্রী", "0")
,("26", "water-pump-mechanic", "Water Pump Mechanic", "ওয়াটার পাম্প মিস্ত্রী", "0")
,("27", "motor-bike-mistri", "Motor Bike Mistri", "মোটর বাইক মিস্ত্রী", "0")
,("28", "mobile-mechanic", "Mobile Mechanic", "মোবাইল মেকানিক", "0")
,("29", "others", "Others", "অন্যান্য", "0")
;

#
# TABLE STRUCTURE FOR: tbl_skill_level
#

DROP TABLE IF EXISTS `tbl_skill_level`;

CREATE TABLE `tbl_skill_level` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `position` varchar(255) NOT NULL,
  `bn_position` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_skill_level` (`id`, `position`, `bn_position`)
VALUES ("1", "Top Level", "উচ্চপদস্থ")
,("2", "Mid Level", "মধ্যপদস্থ")
,("3", "Low Level", "নিম্নপদস্থ")
;

#
# TABLE STRUCTURE FOR: tbl_upazila
#

DROP TABLE IF EXISTS `tbl_upazila`;

CREATE TABLE `tbl_upazila` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `district_id` int(5) NOT NULL COMMENT 'FK',
  `upazila_name` varchar(255) NOT NULL,
  `bn_upazila_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=493 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_upazila` (`id`, `district_id`, `upazila_name`, `bn_upazila_name`)
VALUES ("1", "34", "Amtali Upazila", "আমতলী")
,("2", "34", "Bamna Upazila", "বামনা")
,("3", "34", "Barguna Sadar Upazila", "বরগুনা সদর")
,("4", "34", "Betagi Upazila", "বেতাগি")
,("5", "34", "Patharghata Upazila", "পাথরঘাটা")
,("6", "34", "Taltali Upazila", "তালতলী")
,("7", "35", "Muladi Upazila", "মুলাদি")
,("8", "35", "Babuganj Upazila", "বাবুগঞ্জ")
,("9", "35", "Agailjhara Upazila", "আগাইলঝরা")
,("10", "35", "Barisal Sadar Upazila", "বরিশাল সদর")
,("11", "35", "Bakerganj Upazila", "বাকেরগঞ্জ")
,("12", "35", "Banaripara Upazila", "বানাড়িপারা")
,("13", "35", "Gaurnadi Upazila", "গৌরনদী")
,("14", "35", "Hizla Upazila", "হিজলা")
,("15", "35", "Mehendiganj Upazila", "মেহেদিগঞ্জ ")
,("16", "35", "Wazirpur Upazila", "ওয়াজিরপুর")
,("17", "36", "Bhola Sadar Upazila", "ভোলা সদর")
,("18", "36", "Burhanuddin Upazila", "বুরহানউদ্দিন")
,("19", "36", "Char Fasson Upazila", "চর ফ্যাশন")
,("20", "36", "Daulatkhan Upazila", "দৌলতখান")
,("21", "36", "Lalmohan Upazila", "লালমোহন")
,("22", "36", "Manpura Upazila", "মনপুরা")
,("23", "36", "Tazumuddin Upazila", "তাজুমুদ্দিন")
,("24", "37", "Jhalokati Sadar Upazila", "ঝালকাঠি সদর")
,("25", "37", "Kathalia Upazila", "কাঁঠালিয়া")
,("26", "37", "Nalchity Upazila", "নালচিতি")
,("27", "37", "Rajapur Upazila", "রাজাপুর")
,("28", "38", "Bauphal Upazila", "বাউফল")
,("29", "38", "Dashmina Upazila", "দশমিনা")
,("30", "38", "Galachipa Upazila", "গলাচিপা")
,("31", "38", "Kalapara Upazila", "কালাপারা")
,("32", "38", "Mirzaganj Upazila", "মির্জাগঞ্জ ")
,("33", "38", "Patuakhali Sadar Upazila", "পটুয়াখালী সদর")
,("34", "38", "Dumki Upazila", "ডুমকি")
,("35", "38", "Rangabali Upazila", "রাঙ্গাবালি")
,("36", "39", "Bhandaria", "ভ্যান্ডারিয়া")
,("37", "39", "Kaukhali", "কাউখালি")
,("38", "39", "Mathbaria", "মাঠবাড়িয়া")
,("39", "39", "Nazirpur", "নাজিরপুর")
,("40", "39", "Nesarabad", "নেসারাবাদ")
,("41", "39", "Pirojpur Sadar", "পিরোজপুর সদর")
,("42", "39", "Zianagar", "জিয়ানগর")
,("43", "40", "Bandarban Sadar", "বান্দরবন সদর")
,("44", "40", "Thanchi", "থানচি")
,("45", "40", "Lama", "লামা")
,("46", "40", "Naikhongchhari", "নাইখংছড়ি ")
,("47", "40", "Ali kadam", "আলী কদম")
,("48", "40", "Rowangchhari", "রউয়াংছড়ি ")
,("49", "40", "Ruma", "রুমা")
,("50", "41", "Brahmanbaria Sadar Upazila", "ব্রাহ্মণবাড়িয়া সদর")
,("51", "41", "Ashuganj Upazila", "আশুগঞ্জ")
,("52", "41", "Nasirnagar Upazila", "নাসির নগর")
,("53", "41", "Nabinagar Upazila", "নবীনগর")
,("54", "41", "Sarail Upazila", "সরাইল")
,("55", "41", "Shahbazpur Town", "শাহবাজপুর টাউন")
,("56", "41", "Kasba Upazila", "কসবা")
,("57", "41", "Akhaura Upazila", "আখাউরা")
,("58", "41", "Bancharampur Upazila", "বাঞ্ছারামপুর")
,("59", "41", "Bijoynagar Upazila", "বিজয় নগর")
,("60", "42", "Chandpur Sadar", "চাঁদপুর সদর")
,("61", "42", "Faridganj", "ফরিদগঞ্জ")
,("62", "42", "Haimchar", "হাইমচর")
,("63", "42", "Haziganj", "হাজীগঞ্জ")
,("64", "42", "Kachua", "কচুয়া")
,("65", "42", "Matlab Uttar", "মতলব উত্তর")
,("66", "42", "Matlab Dakkhin", "মতলব দক্ষিণ")
,("67", "42", "Shahrasti", "শাহরাস্তি")
,("68", "43", "Anwara Upazila", "আনোয়ারা")
,("69", "43", "Banshkhali Upazila", "বাশখালি")
,("70", "43", "Boalkhali Upazila", "বোয়ালখালি")
,("71", "43", "Chandanaish Upazila", "চন্দনাইশ")
,("72", "43", "Fatikchhari Upazila", "ফটিকছড়ি")
,("73", "43", "Hathazari Upazila", "হাঠহাজারী")
,("74", "43", "Lohagara Upazila", "লোহাগারা")
,("75", "43", "Mirsharai Upazila", "মিরসরাই")
,("76", "43", "Patiya Upazila", "পটিয়া")
,("77", "43", "Rangunia Upazila", "রাঙ্গুনিয়া")
,("78", "43", "Raozan Upazila", "রাউজান")
,("79", "43", "Sandwip Upazila", "সন্দ্বীপ")
,("80", "43", "Satkania Upazila", "সাতকানিয়া")
,("81", "43", "Sitakunda Upazila", "সীতাকুণ্ড")
,("82", "44", "Barura Upazila", "বড়ুরা")
,("83", "44", "Brahmanpara Upazila", "ব্রাহ্মণপাড়া")
,("84", "44", "Burichong Upazila", "বুড়িচং")
,("85", "44", "Chandina Upazila", "চান্দিনা")
,("86", "44", "Chauddagram Upazila", "চৌদ্দগ্রাম")
,("87", "44", "Daudkandi Upazila", "দাউদকান্দি")
,("88", "44", "Debidwar Upazila", "দেবীদ্বার")
,("89", "44", "Homna Upazila", "হোমনা")
,("90", "44", "Comilla Sadar Upazila", "কুমিল্লা সদর")
,("91", "44", "Laksam Upazila", "লাকসাম")
,("92", "44", "Monohorgonj Upazila", "মনোহরগঞ্জ")
,("93", "44", "Meghna Upazila", "মেঘনা")
,("94", "44", "Muradnagar Upazila", "মুরাদনগর")
,("95", "44", "Nangalkot Upazila", "নাঙ্গালকোট")
,("96", "44", "Comilla Sadar South Upazila", "কুমিল্লা সদর দক্ষিণ")
,("97", "44", "Titas Upazila", "তিতাস")
,("98", "45", "Chakaria Upazila", "চকরিয়া")
,("100", "45", "Cox's Bazar Sadar Upazila", "কক্স বাজার সদর")
,("101", "45", "Kutubdia Upazila", "কুতুবদিয়া")
,("102", "45", "Maheshkhali Upazila", "মহেশখালী")
,("103", "45", "Ramu Upazila", "রামু")
,("104", "45", "Teknaf Upazila", "টেকনাফ")
,("105", "45", "Ukhia Upazila", "উখিয়া")
,("106", "45", "Pekua Upazila", "পেকুয়া")
,("107", "46", "Feni Sadar", "ফেনী সদর")
,("108", "46", "Chagalnaiya", "ছাগল নাইয়া")
,("109", "46", "Daganbhyan", "দাগানভিয়া")
,("110", "46", "Parshuram", "পরশুরাম")
,("111", "46", "Fhulgazi", "ফুলগাজি")
,("112", "46", "Sonagazi", "সোনাগাজি")
,("113", "47", "Dighinala Upazila", "দিঘিনালা ")
,("114", "47", "Khagrachhari Upazila", "খাগড়াছড়ি")
,("115", "47", "Lakshmichhari Upazila", "লক্ষ্মীছড়ি")
,("116", "47", "Mahalchhari Upazila", "মহলছড়ি")
,("117", "47", "Manikchhari Upazila", "মানিকছড়ি")
,("118", "47", "Matiranga Upazila", "মাটিরাঙ্গা")
,("119", "47", "Panchhari Upazila", "পানছড়ি")
,("120", "47", "Ramgarh Upazila", "রামগড়")
,("121", "48", "Lakshmipur Sadar Upazila", "লক্ষ্মীপুর সদর")
,("122", "48", "Raipur Upazila", "রায়পুর")
,("123", "48", "Ramganj Upazila", "রামগঞ্জ")
,("124", "48", "Ramgati Upazila", "রামগতি")
,("125", "48", "Komol Nagar Upazila", "কমল নগর")
,("126", "49", "Noakhali Sadar Upazila", "নোয়াখালী সদর")
,("127", "49", "Begumganj Upazila", "বেগমগঞ্জ")
,("128", "49", "Chatkhil Upazila", "চাটখিল")
,("129", "49", "Companyganj Upazila", "কোম্পানীগঞ্জ")
,("130", "49", "Shenbag Upazila", "শেনবাগ")
,("131", "49", "Hatia Upazila", "হাতিয়া")
,("132", "49", "Kobirhat Upazila", "কবিরহাট ")
,("133", "49", "Sonaimuri Upazila", "সোনাইমুরি")
,("134", "49", "Suborno Char Upazila", "সুবর্ণ চর ")
,("135", "50", "Rangamati Sadar Upazila", "রাঙ্গামাটি সদর")
,("136", "50", "Belaichhari Upazila", "বেলাইছড়ি")
,("137", "50", "Bagaichhari Upazila", "বাঘাইছড়ি")
,("138", "50", "Barkal Upazila", "বরকল")
,("139", "50", "Juraichhari Upazila", "জুরাইছড়ি")
,("140", "50", "Rajasthali Upazila", "রাজাস্থলি")
,("141", "50", "Kaptai Upazila", "কাপ্তাই")
,("142", "50", "Langadu Upazila", "লাঙ্গাডু")
,("143", "50", "Nannerchar Upazila", "নান্নেরচর ")
,("144", "50", "Kaukhali Upazila", "কাউখালি")
,("145", "1", "Dhamrai Upazila", "ধামরাই")
,("146", "1", "Dohar Upazila", "দোহার")
,("147", "1", "Keraniganj Upazila", "কেরানীগঞ্জ")
,("148", "1", "Nawabganj Upazila", "নবাবগঞ্জ")
,("149", "1", "Savar Upazila", "সাভার")
,("150", "2", "Faridpur Sadar Upazila", "ফরিদপুর সদর")
,("151", "2", "Boalmari Upazila", "বোয়ালমারী")
,("152", "2", "Alfadanga Upazila", "আলফাডাঙ্গা")
,("153", "2", "Madhukhali Upazila", "মধুখালি")
,("154", "2", "Bhanga Upazila", "ভাঙ্গা")
,("155", "2", "Nagarkanda Upazila", "নগরকান্ড")
,("156", "2", "Charbhadrasan Upazila", "চরভদ্রাসন ")
,("157", "2", "Sadarpur Upazila", "সদরপুর")
,("158", "2", "Shaltha Upazila", "শালথা")
,("159", "3", "Gazipur Sadar-Joydebpur", "গাজীপুর সদর")
,("160", "3", "Kaliakior", "কালিয়াকৈর")
,("161", "3", "Kapasia", "কাপাসিয়া")
,("162", "3", "Sripur", "শ্রীপুর")
,("163", "3", "Kaliganj", "কালীগঞ্জ")
,("164", "3", "Tongi", "টঙ্গি")
,("165", "4", "Gopalganj Sadar Upazila", "গোপালগঞ্জ সদর")
,("166", "4", "Kashiani Upazila", "কাশিয়ানি")
,("167", "4", "Kotalipara Upazila", "কোটালিপাড়া")
,("168", "4", "Muksudpur Upazila", "মুকসুদপুর")
,("169", "4", "Tungipara Upazila", "টুঙ্গিপাড়া")
,("170", "5", "Dewanganj Upazila", "দেওয়ানগঞ্জ")
,("171", "5", "Baksiganj Upazila", "বকসিগঞ্জ")
,("172", "5", "Islampur Upazila", "ইসলামপুর")
,("173", "5", "Jamalpur Sadar Upazila", "জামালপুর সদর")
,("174", "5", "Madarganj Upazila", "মাদারগঞ্জ")
,("175", "5", "Melandaha Upazila", "মেলানদাহা")
,("176", "5", "Sarishabari Upazila", "সরিষাবাড়ি ")
,("177", "5", "Narundi Police I.C", "নারুন্দি")
,("178", "6", "Astagram Upazila", "অষ্টগ্রাম")
,("179", "6", "Bajitpur Upazila", "বাজিতপুর")
,("180", "6", "Bhairab Upazila", "ভৈরব")
,("181", "6", "Hossainpur Upazila", "হোসেনপুর ")
,("182", "6", "Itna Upazila", "ইটনা")
,("183", "6", "Karimganj Upazila", "করিমগঞ্জ")
,("184", "6", "Katiadi Upazila", "কতিয়াদি")
,("185", "6", "Kishoreganj Sadar Upazila", "কিশোরগঞ্জ সদর")
,("186", "6", "Kuliarchar Upazila", "কুলিয়ারচর")
,("187", "6", "Mithamain Upazila", "মিঠামাইন")
,("188", "6", "Nikli Upazila", "নিকলি")
,("189", "6", "Pakundia Upazila", "পাকুন্ডা")
,("190", "6", "Tarail Upazila", "তাড়াইল")
,("191", "7", "Madaripur Sadar", "মাদারীপুর সদর")
,("192", "7", "Kalkini", "কালকিনি")
,("193", "7", "Rajoir", "রাজইর")
,("194", "7", "Shibchar", "শিবচর")
,("195", "8", "Manikganj Sadar Upazila", "মানিকগঞ্জ সদর")
,("196", "8", "Singair Upazila", "সিঙ্গাইর")
,("197", "8", "Shibalaya Upazila", "শিবালয়")
,("198", "8", "Saturia Upazila", "সাঠুরিয়া")
,("199", "8", "Harirampur Upazila", "হরিরামপুর")
,("200", "8", "Ghior Upazila", "ঘিওর")
,("201", "8", "Daulatpur Upazila", "দৌলতপুর")
,("202", "9", "Lohajang Upazila", "লোহাজং")
,("203", "9", "Sreenagar Upazila", "শ্রীনগর")
,("204", "9", "Munshiganj Sadar Upazila", "মুন্সিগঞ্জ সদর")
,("205", "9", "Sirajdikhan Upazila", "সিরাজদিখান")
,("206", "9", "Tongibari Upazila", "টঙ্গিবাড়ি")
,("207", "9", "Gazaria Upazila", "গজারিয়া")
,("208", "10", "Bhaluka", "ভালুকা")
,("209", "10", "Trishal", "ত্রিশাল")
,("210", "10", "Haluaghat", "হালুয়াঘাট")
,("211", "10", "Muktagachha", "মুক্তাগাছা")
,("212", "10", "Dhobaura", "ধবারুয়া")
,("213", "10", "Fulbaria", "ফুলবাড়িয়া")
,("214", "10", "Gaffargaon", "গফরগাঁও")
,("215", "10", "Gauripur", "গৌরিপুর")
,("216", "10", "Ishwarganj", "ঈশ্বরগঞ্জ")
,("217", "10", "Mymensingh Sadar", "ময়মনসিং সদর")
,("218", "10", "Nandail", "নন্দাইল")
,("219", "10", "Phulpur", "ফুলপুর")
,("220", "11", "Araihazar Upazila", "আড়াইহাজার")
,("221", "11", "Sonargaon Upazila", "সোনারগাঁও")
,("222", "11", "Bandar", "বান্দার")
,("223", "11", "Naryanganj Sadar Upazila", "নারায়ানগঞ্জ সদর")
,("224", "11", "Rupganj Upazila", "রূপগঞ্জ")
,("225", "11", "Siddirgonj Upazila", "সিদ্ধিরগঞ্জ")
,("226", "12", "Belabo Upazila", "বেলাবো")
,("227", "12", "Monohardi Upazila", "মনোহরদি")
,("228", "12", "Narsingdi Sadar Upazila", "নরসিংদী সদর")
,("229", "12", "Palash Upazila", "পলাশ")
,("230", "12", "Raipura Upazila, Narsingdi", "রায়পুর")
,("231", "12", "Shibpur Upazila", "শিবপুর")
,("232", "13", "Kendua Upazilla", "কেন্দুয়া")
,("233", "13", "Atpara Upazilla", "আটপাড়া")
,("234", "13", "Barhatta Upazilla", "বরহাট্টা")
,("235", "13", "Durgapur Upazilla", "দুর্গাপুর")
,("236", "13", "Kalmakanda Upazilla", "কলমাকান্দা")
,("237", "13", "Madan Upazilla", "মদন")
,("238", "13", "Mohanganj Upazilla", "মোহনগঞ্জ")
,("239", "13", "Netrakona-S Upazilla", "নেত্রকোনা সদর")
,("240", "13", "Purbadhala Upazilla", "পূর্বধলা")
,("241", "13", "Khaliajuri Upazilla", "খালিয়াজুরি")
,("242", "14", "Baliakandi Upazila", "বালিয়াকান্দি")
,("243", "14", "Goalandaghat Upazila", "গোয়ালন্দ ঘাট")
,("244", "14", "Pangsha Upazila", "পাংশা")
,("245", "14", "Kalukhali Upazila", "কালুখালি")
,("246", "14", "Rajbari Sadar Upazila", "রাজবাড়ি সদর")
,("247", "15", "Shariatpur Sadar -Palong", "শরীয়তপুর সদর ")
,("248", "15", "Damudya Upazila", "দামুদিয়া")
,("249", "15", "Naria Upazila", "নড়িয়া")
,("250", "15", "Jajira Upazila", "জাজিরা")
,("251", "15", "Bhedarganj Upazila", "ভেদারগঞ্জ")
,("252", "15", "Gosairhat Upazila", "গোসাইর হাট ")
,("253", "16", "Jhenaigati Upazila", "ঝিনাইগাতি")
,("254", "16", "Nakla Upazila", "নাকলা")
,("255", "16", "Nalitabari Upazila", "নালিতাবাড়ি")
,("256", "16", "Sherpur Sadar Upazila", "শেরপুর সদর")
,("257", "16", "Sreebardi Upazila", "শ্রীবরদি")
,("258", "17", "Tangail Sadar Upazila", "টাঙ্গাইল সদর")
,("259", "17", "Sakhipur Upazila", "সখিপুর")
,("260", "17", "Basail Upazila", "বসাইল")
,("261", "17", "Madhupur Upazila", "মধুপুর")
,("262", "17", "Ghatail Upazila", "ঘাটাইল")
,("263", "17", "Kalihati Upazila", "কালিহাতি")
,("264", "17", "Nagarpur Upazila", "নগরপুর")
,("265", "17", "Mirzapur Upazila", "মির্জাপুর")
,("266", "17", "Gopalpur Upazila", "গোপালপুর")
,("267", "17", "Delduar Upazila", "দেলদুয়ার")
,("268", "17", "Bhuapur Upazila", "ভুয়াপুর")
,("269", "17", "Dhanbari Upazila", "ধানবাড়ি")
,("270", "55", "Bagerhat Sadar Upazila", "বাগেরহাট সদর")
,("271", "55", "Chitalmari Upazila", "চিতলমাড়ি")
,("272", "55", "Fakirhat Upazila", "ফকিরহাট")
,("273", "55", "Kachua Upazila", "কচুয়া")
,("274", "55", "Mollahat Upazila", "মোল্লাহাট ")
,("275", "55", "Mongla Upazila", "মংলা")
,("276", "55", "Morrelganj Upazila", "মরেলগঞ্জ")
,("277", "55", "Rampal Upazila", "রামপাল")
,("278", "55", "Sarankhola Upazila", "স্মরণখোলা")
,("279", "56", "Damurhuda Upazila", "দামুরহুদা")
,("280", "56", "Chuadanga-S Upazila", "চুয়াডাঙ্গা সদর")
,("281", "56", "Jibannagar Upazila", "জীবন নগর ")
,("282", "56", "Alamdanga Upazila", "আলমডাঙ্গা")
,("283", "57", "Abhaynagar Upazila", "অভয়নগর")
,("284", "57", "Keshabpur Upazila", "কেশবপুর")
,("285", "57", "Bagherpara Upazila", "বাঘের পাড়া ")
,("286", "57", "Jessore Sadar Upazila", "যশোর সদর")
,("287", "57", "Chaugachha Upazila", "চৌগাছা")
,("288", "57", "Manirampur Upazila", "মনিরামপুর ")
,("289", "57", "Jhikargachha Upazila", "ঝিকরগাছা")
,("290", "57", "Sharsha Upazila", "সারশা")
,("291", "58", "Jhenaidah Sadar Upazila", "ঝিনাইদহ সদর")
,("292", "58", "Maheshpur Upazila", "মহেশপুর")
,("293", "58", "Kaliganj Upazila", "কালীগঞ্জ")
,("294", "58", "Kotchandpur Upazila", "কোট চাঁদপুর ")
,("295", "58", "Shailkupa Upazila", "শৈলকুপা")
,("296", "58", "Harinakunda Upazila", "হাড়িনাকুন্দা")
,("297", "59", "Terokhada Upazila", "তেরোখাদা")
,("298", "59", "Batiaghata Upazila", "বাটিয়াঘাটা ")
,("299", "59", "Dacope Upazila", "ডাকপে")
,("300", "59", "Dumuria Upazila", "ডুমুরিয়া")
,("301", "59", "Dighalia Upazila", "দিঘলিয়া")
,("302", "59", "Koyra Upazila", "কয়ড়া")
,("303", "59", "Paikgachha Upazila", "পাইকগাছা")
,("304", "59", "Phultala Upazila", "ফুলতলা")
,("305", "59", "Rupsa Upazila", "রূপসা")
,("306", "60", "Kushtia Sadar", "কুষ্টিয়া সদর")
,("307", "60", "Kumarkhali", "কুমারখালি")
,("308", "60", "Daulatpur", "দৌলতপুর")
,("309", "60", "Mirpur", "মিরপুর")
,("310", "60", "Bheramara", "ভেরামারা")
,("311", "60", "Khoksa", "খোকসা")
,("312", "61", "Magura Sadar Upazila", "মাগুরা সদর")
,("313", "61", "Mohammadpur Upazila", "মোহাম্মাদপুর")
,("314", "61", "Shalikha Upazila", "শালিখা")
,("315", "61", "Sreepur Upazila", "শ্রীপুর")
,("316", "62", "angni Upazila", "আংনি")
,("317", "62", "Mujib Nagar Upazila", "মুজিব নগর")
,("318", "62", "Meherpur-S Upazila", "মেহেরপুর সদর")
,("319", "63", "Narail-S Upazilla", "নড়াইল সদর")
,("320", "63", "Lohagara Upazilla", "লোহাগাড়া")
,("321", "63", "Kalia Upazilla", "কালিয়া")
,("322", "64", "Satkhira Sadar Upazila", "সাতক্ষীরা সদর")
,("323", "64", "Assasuni Upazila", "আসসাশুনি ")
,("324", "64", "Debhata Upazila", "দেভাটা")
,("325", "64", "Tala Upazila", "তালা")
,("326", "64", "Kalaroa Upazila", "কলরোয়া")
,("327", "64", "Kaliganj Upazila", "কালীগঞ্জ")
,("328", "64", "Shyamnagar Upazila", "শ্যামনগর")
,("329", "18", "Adamdighi", "আদমদিঘী")
,("330", "18", "Bogra Sadar", "বগুড়া সদর")
,("331", "18", "Sherpur", "শেরপুর")
,("332", "18", "Dhunat", "ধুনট")
,("333", "18", "Dhupchanchia", "দুপচাচিয়া")
,("334", "18", "Gabtali", "গাবতলি")
,("335", "18", "Kahaloo", "কাহালু")
,("336", "18", "Nandigram", "নন্দিগ্রাম")
,("337", "18", "Sahajanpur", "শাহজাহানপুর")
,("338", "18", "Sariakandi", "সারিয়াকান্দি")
,("339", "18", "Shibganj", "শিবগঞ্জ")
,("340", "18", "Sonatala", "সোনাতলা")
,("341", "19", "Joypurhat S", "জয়পুরহাট সদর")
,("342", "19", "Akkelpur", "আক্কেলপুর")
,("343", "19", "Kalai", "কালাই")
,("344", "19", "Khetlal", "খেতলাল")
,("345", "19", "Panchbibi", "পাঁচবিবি")
,("346", "20", "Naogaon Sadar Upazila", "নওগাঁ সদর")
,("347", "20", "Mohadevpur Upazila", "মহাদেবপুর")
,("348", "20", "Manda Upazila", "মান্দা")
,("349", "20", "Niamatpur Upazila", "নিয়ামতপুর")
,("350", "20", "Atrai Upazila", "আত্রাই")
,("351", "20", "Raninagar Upazila", "রাণীনগর")
,("352", "20", "Patnitala Upazila", "পত্নীতলা")
,("353", "20", "Dhamoirhat Upazila", "ধামইরহাট ")
,("354", "20", "Sapahar Upazila", "সাপাহার")
,("355", "20", "Porsha Upazila", "পোরশা")
,("356", "20", "Badalgachhi Upazila", "বদলগাছি")
,("357", "21", "Natore Sadar Upazila", "নাটোর সদর")
,("358", "21", "Baraigram Upazila", "বড়াইগ্রাম")
,("359", "21", "Bagatipara Upazila", "বাগাতিপাড়া")
,("360", "21", "Lalpur Upazila", "লালপুর")
,("361", "21", "Natore Sadar Upazila", "নাটোর সদর")
,("362", "21", "Baraigram Upazila", "বড়াই গ্রাম")
,("363", "22", "Bholahat Upazila", "ভোলাহাট")
,("364", "22", "Gomastapur Upazila", "গোমস্তাপুর")
,("365", "22", "Nachole Upazila", "নাচোল")
,("366", "22", "Nawabganj Sadar Upazila", "নবাবগঞ্জ সদর")
,("367", "22", "Shibganj Upazila", "শিবগঞ্জ")
,("368", "23", "Atgharia Upazila", "আটঘরিয়া")
,("369", "23", "Bera Upazila", "বেড়া")
,("370", "23", "Bhangura Upazila", "ভাঙ্গুরা")
,("371", "23", "Chatmohar Upazila", "চাটমোহর")
,("372", "23", "Faridpur Upazila", "ফরিদপুর")
,("373", "23", "Ishwardi Upazila", "ঈশ্বরদী")
,("374", "23", "Pabna Sadar Upazila", "পাবনা সদর")
,("375", "23", "Santhia Upazila", "সাথিয়া")
,("376", "23", "Sujanagar Upazila", "সুজানগর")
,("377", "24", "Bagha", "বাঘা")
,("378", "24", "Bagmara", "বাগমারা")
,("379", "24", "Charghat", "চারঘাট")
,("380", "24", "Durgapur", "দুর্গাপুর")
,("381", "24", "Godagari", "গোদাগারি")
,("382", "24", "Mohanpur", "মোহনপুর")
,("383", "24", "Paba", "পবা")
,("384", "24", "Puthia", "পুঠিয়া")
,("385", "24", "Tanore", "তানোর")
,("386", "25", "Sirajganj Sadar Upazila", "সিরাজগঞ্জ সদর")
,("387", "25", "Belkuchi Upazila", "বেলকুচি")
,("388", "25", "Chauhali Upazila", "চৌহালি")
,("389", "25", "Kamarkhanda Upazila", "কামারখান্দা")
,("390", "25", "Kazipur Upazila", "কাজীপুর")
,("391", "25", "Raiganj Upazila", "রায়গঞ্জ")
,("392", "25", "Shahjadpur Upazila", "শাহজাদপুর")
,("393", "25", "Tarash Upazila", "তারাশ")
,("394", "25", "Ullahpara Upazila", "উল্লাপাড়া")
,("395", "26", "Birampur Upazila", "বিরামপুর")
,("396", "26", "Birganj", "বীরগঞ্জ")
,("397", "26", "Biral Upazila", "বিড়াল")
,("398", "26", "Bochaganj Upazila", "বোচাগঞ্জ")
,("399", "26", "Chirirbandar Upazila", "চিরিরবন্দর")
,("400", "26", "Phulbari Upazila", "ফুলবাড়ি")
,("401", "26", "Ghoraghat Upazila", "ঘোড়াঘাট")
,("402", "26", "Hakimpur Upazila", "হাকিমপুর")
,("403", "26", "Kaharole Upazila", "কাহারোল")
,("404", "26", "Khansama Upazila", "খানসামা")
,("405", "26", "Dinajpur Sadar Upazila", "দিনাজপুর সদর")
,("406", "26", "Nawabganj", "নবাবগঞ্জ")
,("407", "26", "Parbatipur Upazila", "পার্বতীপুর")
,("408", "27", "Fulchhari", "ফুলছড়ি")
,("409", "27", "Gaibandha sadar", "গাইবান্ধা সদর")
,("410", "27", "Gobindaganj", "গোবিন্দগঞ্জ")
,("411", "27", "Palashbari", "পলাশবাড়ী")
,("412", "27", "Sadullapur", "সাদুল্যাপুর")
,("413", "27", "Saghata", "সাঘাটা")
,("414", "27", "Sundarganj", "সুন্দরগঞ্জ")
,("415", "28", "Kurigram Sadar", "কুড়িগ্রাম সদর")
,("416", "28", "Nageshwari", "নাগেশ্বরী")
,("417", "28", "Bhurungamari", "ভুরুঙ্গামারি")
,("418", "28", "Phulbari", "ফুলবাড়ি")
,("419", "28", "Rajarhat", "রাজারহাট")
,("420", "28", "Ulipur", "উলিপুর")
,("421", "28", "Chilmari", "চিলমারি")
,("422", "28", "Rowmari", "রউমারি")
,("423", "28", "Char Rajibpur", "চর রাজিবপুর")
,("424", "29", "Lalmanirhat Sadar", "লালমনিরহাট সদর")
,("425", "29", "Aditmari", "আদিতমারি")
,("426", "29", "Kaliganj", "কালীগঞ্জ")
,("427", "29", "Hatibandha", "হাতিবান্ধা")
,("428", "29", "Patgram", "পাটগ্রাম")
,("429", "30", "Nilphamari Sadar", "নীলফামারী সদর")
,("430", "30", "Saidpur", "সৈয়দপুর")
,("431", "30", "Jaldhaka", "জলঢাকা")
,("432", "30", "Kishoreganj", "কিশোরগঞ্জ")
,("433", "30", "Domar", "ডোমার")
,("434", "30", "Dimla", "ডিমলা")
,("435", "31", "Panchagarh Sadar", "পঞ্চগড় সদর")
,("436", "31", "Debiganj", "দেবীগঞ্জ")
,("437", "31", "Boda", "বোদা")
,("438", "31", "Atwari", "আটোয়ারি")
,("439", "31", "Tetulia", "তেতুলিয়া")
,("440", "32", "Badarganj", "বদরগঞ্জ")
,("441", "32", "Mithapukur", "মিঠাপুকুর")
,("442", "32", "Gangachara", "গঙ্গাচরা")
,("443", "32", "Kaunia", "কাউনিয়া")
,("444", "32", "Rangpur Sadar", "রংপুর সদর")
,("445", "32", "Pirgachha", "পীরগাছা")
,("446", "32", "Pirganj", "পীরগঞ্জ")
,("447", "32", "Taraganj", "তারাগঞ্জ")
,("448", "33", "Thakurgaon Sadar Upazila", "ঠাকুরগাঁও সদর")
,("449", "33", "Pirganj Upazila", "পীরগঞ্জ")
,("450", "33", "Baliadangi Upazila", "বালিয়াডাঙ্গি")
,("451", "33", "Haripur Upazila", "হরিপুর")
,("452", "33", "Ranisankail Upazila", "রাণীসংকইল")
,("453", "51", "Ajmiriganj", "আজমিরিগঞ্জ")
,("454", "51", "Baniachang", "বানিয়াচং")
,("455", "51", "Bahubal", "বাহুবল")
,("456", "51", "Chunarughat", "চুনারুঘাট")
,("457", "51", "Habiganj Sadar", "হবিগঞ্জ সদর")
,("458", "51", "Lakhai", "লাক্ষাই")
,("459", "51", "Madhabpur", "মাধবপুর")
,("460", "51", "Nabiganj", "নবীগঞ্জ")
,("461", "51", "Shaistagonj Upazila", "শায়েস্তাগঞ্জ")
,("462", "52", "Moulvibazar Sadar", "মৌলভীবাজার")
,("463", "52", "Barlekha", "বড়লেখা")
,("464", "52", "Juri", "জুড়ি")
,("465", "52", "Kamalganj", "কামালগঞ্জ")
,("466", "52", "Kulaura", "কুলাউরা")
,("467", "52", "Rajnagar", "রাজনগর")
,("468", "52", "Sreemangal", "শ্রীমঙ্গল")
,("469", "53", "Bishwamvarpur", "বিসশম্ভারপুর")
,("470", "53", "Chhatak", "ছাতক")
,("471", "53", "Derai", "দেড়াই")
,("472", "53", "Dharampasha", "ধরমপাশা")
,("473", "53", "Dowarabazar", "দোয়ারাবাজার")
,("474", "53", "Jagannathpur", "জগন্নাথপুর")
,("475", "53", "Jamalganj", "জামালগঞ্জ")
,("476", "53", "Sulla", "সুল্লা")
,("477", "53", "Sunamganj Sadar", "সুনামগঞ্জ সদর")
,("478", "53", "Shanthiganj", "শান্তিগঞ্জ")
,("479", "53", "Tahirpur", "তাহিরপুর")
,("480", "54", "Sylhet Sadar", "সিলেট সদর")
,("481", "54", "Beanibazar", "বেয়ানিবাজার")
,("482", "54", "Bishwanath", "বিশ্বনাথ")
,("483", "54", "Dakshin Surma Upazila", "দক্ষিণ সুরমা")
,("484", "54", "Balaganj", "বালাগঞ্জ")
,("485", "54", "Companiganj", "কোম্পানিগঞ্জ")
,("486", "54", "Fenchuganj", "ফেঞ্চুগঞ্জ")
,("487", "54", "Golapganj", "গোলাপগঞ্জ")
,("488", "54", "Gowainghat", "গোয়াইনঘাট")
,("489", "54", "Jaintiapur", "জয়ন্তপুর")
,("490", "54", "Kanaighat", "কানাইঘাট")
,("491", "54", "Zakiganj", "জাকিগঞ্জ")
,("492", "54", "Nobigonj", "নবীগঞ্জ")
;

#
# TABLE STRUCTURE FOR: tbl_users
#

DROP TABLE IF EXISTS `tbl_users`;

CREATE TABLE `tbl_users` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL COMMENT 'Unique',
  `roles` varchar(10) NOT NULL COMMENT 'SuperAdmin, Admin, Editor',
  `username` varchar(25) NOT NULL COMMENT 'Unique',
  `encode_password` varchar(100) NOT NULL COMMENT 'My Custom Hash Password',
  `status` tinyint(1) NOT NULL COMMENT '1 for Active, 0 for Inactive',
  `last_login` datetime NOT NULL COMMENT 'Last login time',
  `last_logout` datetime NOT NULL COMMENT 'Last logout time',
  `created_at` datetime NOT NULL COMMENT 'Created time',
  `modified_at` datetime NOT NULL COMMENT 'Modified time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `tbl_users` (`id`, `name`, `email`, `roles`, `username`, `encode_password`, `status`, `last_login`, `last_logout`, `created_at`, `modified_at`)
VALUES ("1", "Mohammad Lukman Hussain", "engr.lukman@gmail.com", "SuperAdmin", "Lukman", "$2y$10$eH4YTL6wQxpaNV2uVnsJMu6AZANAMFPirHE7wsoXmA1//aN4ok/gW", "1", "2018-04-29 16:37:32", "2018-04-29 16:25:32", "2018-01-17 11:45:20", "2018-01-22 09:11:23")
,("2", "Admin", "info@kajkhujee.com", "Admin", "Admin", "$2y$10$H3N82we5U3D6mHLVsk8H1ujdnOyFY8ER07BVMwhwuwz5ETjrhJx2m", "1", "2018-04-29 16:25:44", "2018-04-29 16:37:21", "2018-01-17 11:59:19", "2018-04-29 16:24:32")
,("3", "Editor", "editor@kajkhujee.com", "Editor", "Editor", "$2y$10$0Ua7SfQACDE2DYUY.pngJ.COjB.kDemKO5fcvDxKp4luGrm8dVm0q", "1", "2018-03-25 11:12:55", "2018-03-25 11:13:50", "2018-01-18 10:04:39", "2018-02-19 10:05:15")
;

#
# TABLE STRUCTURE FOR: view_job_seeker
#

DROP TABLE IF EXISTS `view_job_seeker`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_job_seeker` AS select `js`.`id` AS `id`,`js`.`name` AS `name`,`js`.`gender` AS `gender`,`js`.`date_of_birth` AS `date_of_birth`,`js`.`address` AS `address`,`js`.`educational_qualification` AS `educational_qualification`,`js`.`experience_year` AS `experience_year`,`js`.`experience_details` AS `experience_details`,`js`.`general_category_id` AS `general_category_id`,`js`.`skill_level_id` AS `skill_level_id`,`js`.`professional_category_id` AS `professional_category_id`,`js`.`district_id` AS `district_id`,`js`.`upazila_id` AS `upazila_id`,`js`.`contact_no` AS `contact_no`,`js`.`email` AS `email`,`js`.`category_type` AS `category_type`,`js`.`file_name` AS `file_name`,`js`.`status` AS `status`,`js`.`created_at` AS `created_at`,`d`.`district_name` AS `district_name`,`d`.`bn_district_name` AS `bn_district_name`,`u`.`upazila_name` AS `upazila_name`,`u`.`bn_upazila_name` AS `bn_upazila_name`,`gc`.`category_name` AS `gc_name`,`gc`.`bn_category_name` AS `gcb_name`,`pc`.`category_name` AS `pc_name`,`pc`.`bn_category_name` AS `pcb_name`,`sl`.`position` AS `position`,`sl`.`bn_position` AS `bn_position` from (((((`tbl_job_seeker` `js` left join `tbl_district` `d` on((`js`.`district_id` = `d`.`id`))) left join `tbl_upazila` `u` on((`js`.`upazila_id` = `u`.`id`))) left join `tbl_general_category` `gc` on((`js`.`general_category_id` = `gc`.`id`))) left join `tbl_professional_category` `pc` on((`js`.`professional_category_id` = `pc`.`id`))) left join `tbl_skill_level` `sl` on((`js`.`skill_level_id` = `sl`.`id`)));

utf8mb4_general_ci;

INSERT INTO `view_job_seeker` (`id`, `name`, `gender`, `date_of_birth`, `address`, `educational_qualification`, `experience_year`, `experience_details`, `general_category_id`, `skill_level_id`, `professional_category_id`, `district_id`, `upazila_id`, `contact_no`, `email`, `category_type`, `file_name`, `status`, `created_at`, `district_name`, `bn_district_name`, `upazila_name`, `bn_upazila_name`, `gc_name`, `gcb_name`, `pc_name`, `pcb_name`, `position`, `bn_position`)
VALUES ("10", "Hasan", "পুরুষ", "35", "Barisal", "", "", "", "0", "0", "9", "35", "13", "0172312345", "", "Professional", "", "Verified", "2018-03-05 00:32:59", "Barisal", "বরিশাল", "Gaurnadi Upazila", "গৌরনদী", NULL, NULL, "Trailer Master", "টেইলার মাস্টার", NULL, NULL)
,("11", "Kabir", "Male", "12.02.1996", "Narayengonj", "MA", "3 Year", "Three years", "2", "1", "0", "1", "0", "01711356235", "mnbbghghhghhh", "General", "1523350654.jpg", "Verified", "2018-04-10 14:57:34", "Dhaka", "ঢাকা", NULL, NULL, "Administration", "এডমিনিস্ট্রেশন", NULL, NULL, "Top Level", "উচ্চপদস্থ")
,("12", "Kabir", "Male", "20.12.1985", "Narayengonj", "MA", "3 Year", "Three yers", "8", "1", "0", "1", "0", "01711525252", "mjjgugfv", "General", "1523350946.jpg", "Verified", "2018-04-10 15:02:26", "Dhaka", "ঢাকা", NULL, NULL, "Commercial", "কমার্শিয়াল", NULL, NULL, "Top Level", "উচ্চপদস্থ")
;

