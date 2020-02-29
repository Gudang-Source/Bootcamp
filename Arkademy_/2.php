<?php
     function username($username){
          return preg_match("/^[a-z]{5,9}$/",$username);
     }
     if (username("treido")){
         echo "True ";
     } else {
         echo "False ";
     }


     function password($password){
         return preg_match("/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/",$password);
     }
     if (password("Treido1!")){
         echo "True";
     } else{
         echo "False";
     }
?>
