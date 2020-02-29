<script type="text/javascript">

  function checkForm(username)
{
  var username = /^(?=.*[a-z]._-).{5,12}$/; //regex untuk username
  if(checkForm.test(username)){
     alert("Username Sukses!");
      form.username.focus();
    return true;
  }
   alert("Error: Username terdiri dari Huruf Kecil, Minimal 5 dan Maksimal 12, Tidak Boleh Karakter Spesial kecuali '_' ");
      form.username.focus();
  return false;

}
 
   function checkPassword(pwd)
  {
    
    var password = /(?=.*\d)(?=.*[A-Z])(?=.*[0-9]).{7}/;//regex untuk password
     if(!checkPassword.test(password)) {
      alert("Password Sukses!");
      form.username.focus();
      return true;
    }
     alert("Error: Password Harus ada huruf besar,Karakter Spesial, Karakter Maksimal 7");
      form.username.focus();
    return false;
  }

</script>
