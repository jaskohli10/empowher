// function printError(elemId, hintMsg) {
//     document.getElementById(elemId).innerHTML = hintMsg;
// }

// function validateForm() {
//     // Retrieving the values of form elements 
//     var username=document.getElementById("username").value;
//   console.log(username);
//     var password = document.userform.password.value;
//     var cpassword = document.userform.cpassword.value;
//     var firstname = document.userform.firstname.value;
//     var middlename = document.userform.middlename.value;
//     var  lastname= document.userform.lastname.value;
//     var emailid = document.userform.emailid.value;
//     var contactno = document.userform.contactno.value;
//     var dateofbirth = document.userform.dateofbirth.value;

   
    

    
//  var username = password = cpassword = firstname = middlename = lastname = emailid = contactno = dateofbirth =true;

//  if(username == "") {
//     printError("username", "Please enter your username");
// } else {
//     var regex = /^[a-zA-Z\s]+$/;                
//     if(regex.test(name) === false) {
//         printError("username", "Please enter a valid username");
//     } else {
//         printError("username", "");
//         username  = false;
//     }
// }


// if(emailid == "") {
//     printError("emailid", "Please enter your email address");
// } else {
//     // Regular expression for basic email validation
//     var regex = /^\S+@\S+\.\S+$/;
//     if(regex.test(emailid) === false) {
//         printError("emailid", "Please enter a valid email address");
//     } else{
//         printError("emailid", "");
//         emailid = false;
//     }
// }


// if(contactno == "") {
//     printError("contactno", "Please enter your contact number");
// } else {
//     var regex = /^[1-9]\d{9}$/;
//     if(regex.test(contactno) === false) {
//         printError("contactno", "Please enter a valid 10 digit mobile number");
//     } else{
//         printError("contactno", "");
//         contactnoe = false;
//     }
// }




//     if((username || password || cpassword  ||firstname || middlename || lastname  ||emailid || contactno  ||dateofbirth) ==  true){
//     return false;
//  } else {
//      // Creating a string from input data for preview
//      var dataPreview = "Your have successfully registered" ;
                     
     
     
//      alert(dataPreview);
//  }


 // };




function validate()
{
    //alert("Function running")
    var userName=document.getElementById("username").value;
    var pass=document.getElementById("password").value;
    
    if(userName=="")
    {
        document.getElementById("userErr").innerHTML="Username not Entered";
        return false;
        
    }
    else if(pass==""){
        document.getElementById("passwordErr").innerHTML="Password not Entered";
        
        return false;
    }
    else{
        var form= document.getElementById("frm");
        form.action = "userregistration.jsp";
        form.submit();
    }

}


