<?php
/*
/кодирования почт от ботов
/пример использования  [[spiderhide? &input=`[*siteemail*]`]]
/ или [[spiderhide? &input=`info@site.ru"`]]  
*/
if(!function_exists('obfuscate_numeric')){
  function obfuscate_numeric($plaintext) { 
    $i=0; 
    $obfuscated="";
    while ($i<strlen($plaintext)) { 
       if (rand(0,2)) { 
         $obfuscated.='&#'.ord($plaintext{$i}).';'; 
       } else { 
           $obfuscated.=$plaintext{$i}; 
       } 
      $i++;       
    } 
    return $obfuscated; 
  }
}   
return obfuscate_numeric($input);
?>