<?php
function pigLatin($str){
    if($str == ''){
        return '';
    } else {
        $arr2 = [];
        foreach(explode(' ', $str) as $x){
            if(preg_match("/a|e|i|o|u|y/i",$x)){
                $str2 = substr($x,strpos(preg_replace('/a|e|i|o|u|y/i', '\\', $x),'\\')) . substr($x,0,strpos(preg_replace('/a|e|i|o|u|y/i', '\\', $x),'\\'));
                if(strpos(preg_replace("/a|e|i|o|u|y/","\\", $x),"\\") == 0){
                    $str2 .= 'way';
                } else {
                    $str2 .= 'ay';
                }
            } else {
                $str2 = $x . 'ay';           
            }
            $str3 = $str2;
            $str2 = preg_replace("/[^A-z ]/",'',$str2);
            if(preg_match_all("/[?.!,]/",$str3,$punc)){
                $str2 .= implode('',$punc[0]);
            }
            if(ucfirst($x) == $x){
                $str2 = ucfirst($str2);
            }
            array_push($arr2,$str2);
        }
        return join(' ',$arr2);
    }
}
?>