<?php

header('Content-type: application/json; charset=utf-8');

//Buat variable data dan array
//String data php
$name = 'Treido Alde Ristivan';
$address = 'Jl Menteng 72a, Kec.Senen, Jakarta Pusat';
//Array PHP
$hobies =  array('Bermain komputer','membaca', 'belajar', 'travelling');
//Objek pada PHP
class schoolObj {
    function highSchool(){
        return 'SMK NASIONAL Malang';
    }
    
}
$school = new schoolObj;
//Obj Array pada PHP
$skillArr = array('0'=>'HTML5, Javascript, CSS, PHP, Kotlin, Netwotking, Maintenace computer');
$skill = new ArrayObject($skillArr);
function myBio($strName, $strAddress, $strHobies, $strMarried, $strSchool, $strSkill){
    $json = array(
        'strName' => $strName,
        'strAddress' => $strAddress,
        'strHobies' => $strHobies,
        'strMarried' => ($strMarried =TRUE)? 'Menikah': 'Belum menikah',
        'strSchool' => $strSchool,
        'strSkill' => $strSkill
    );
    return json_encode($json);
}

