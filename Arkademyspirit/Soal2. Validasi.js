<script type="text/javascript">

function validatePassword() {
    var myPassword = document.getElementById('password').value;
    var regex  = /^(?=.*[0-9])(?=.*[!@#\$%\^\&*\)\(+=._-]).+$/;
    console.log(myPassword);
    if(myPassword.length ==9){
        alert("passwordmu kurang dari 9 karakter"); 
        return false;
    }else if(!regex.test(myPassword)) {
        alert("Password harus 9 alphanumeric dengan kombinasi minimal 1 simbol dan 1 angka.");
        return false;
    }else{
        alert("passwordmu valid");
    }

    var myUsername = document.getElementById('username').value;
    var regex  = /^(?=.*[a-z])(?=.*[+=._]).+$/;
    console.log(myUsername);
    if(myUsername.length <=12){
        alert("Usernamemu kurang dari 12 karakter"); 
        return false;
    }else if(!regex.test(myPassword)) {
        alert("Username harus diawali sebuah huruf kecil, tidak boleh ada huruf besar, tidak boleh sebuah karakter spesial kecuali  "." dan "_".");
        return false;
    }else{
        alert("Usernamemu valid");
    }
}