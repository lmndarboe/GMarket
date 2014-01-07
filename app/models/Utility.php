<?php

class Utility {
	public static function commonRules(){
		return array(
			'category_id' => 'required',
			'title'       => 'required',
			'product_for' => 'required',
			'description' => 'required',
			'price'       => 'required',
			'image_path'  => 'required' 
		);
	}

public static function ago($time){
 				$today = time();    
                 $createdday= strtotime($time); //mysql timestamp of when post was created  
                 $datediff = abs($today - $createdday);  
                 $difftext="";  
                 $years = floor($datediff / (365*60*60*24));  
                 $months = floor(($datediff - $years * 365*60*60*24) / (30*60*60*24));  
                 $days = floor(($datediff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));  
                 $hours= floor($datediff/3600);  
                 $minutes= floor($datediff/60);  
                 $seconds= floor($datediff);  
                 //year checker  
                 if($difftext=="")  
                 {  
                   if($years>1)  
                    $difftext=$years." years ago";  
                   elseif($years==1)  
                    $difftext=$years." year ago";  
                 }  
                 //month checker  
                 if($difftext=="")  
                 {  
                    if($months>1)  
                    $difftext=$months." months ago";  
                    elseif($months==1)  
                    $difftext=$months." month ago";  
                 }  
                 //month checker  
                 if($difftext=="")  
                 {  
                    if($days>1)  
                    $difftext=$days." days ago";  
                    elseif($days==1)  
                    $difftext=$days." day ago";  
                 }  
                 //hour checker  
                 if($difftext=="")  
                 {  
                    if($hours>1)  
                    $difftext=$hours." hours ago";  
                    elseif($hours==1)  
                    $difftext=$hours." hour ago";  
                 }  
                 //minutes checker  
                 if($difftext=="")  
                 {  
                    if($minutes>1)  
                    $difftext=$minutes." minutes ago";  
                    elseif($minutes==1)  
                    $difftext=$minutes." minute ago";  
                 }  
                 //seconds checker  
                 if($difftext=="")  
                 {  
                    if($seconds>1)  
                    $difftext=$seconds." seconds ago";  
                    elseif($seconds==1)  
                    $difftext=$seconds." second ago";  
                 }  
                 echo " | ".$difftext;  
	}

 
}




