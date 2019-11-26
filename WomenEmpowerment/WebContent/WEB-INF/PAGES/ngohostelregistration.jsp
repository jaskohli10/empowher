<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="skeleton.css">
	<link rel="stylesheet" type="text/css" href="stepregistration.css" />
    <title>NGO Hostel Registration</title>
    <script>
            $(document).ready(function () {
                
                $("input[name='child']").change(function () {
                    if ($(this).val() == "yes") {
                        
                        $(".daycaredetails").show();
                    }
                    else {
                        
                        $(".daycaredetails").hide();
                    }
                });
            });
        </script>
</head>
<body>
        <div class="header">
                <div style="text-align: left">
                    <img id="logo" src="mwcd.jpg" height="110" width="110">
                </div>
                <h1 class="headerhtags">MINISTRY OF WOMEN AND CHILD DEVELOPMENT</h1>
                <p>A GOVERNMENT OF INDIA INITIATIVE</p>
            </div>
        
            <div class="topnav">
                <a href="homepage.jsp">HOME</a>
                <a href="stepguide.jsp">STEP GUIDELINES
                </a>
                <a href="stepregistration.jsp">STEP REGISTRATION</a>
                <div style="float: right">
                    <a href="homepage.jsp">LOGOUT</a>
                </div>
            </div>
            <h1 align="center">NGO Hostel Registration Form</h1>
    <form>
        <label>NGO REGISTRATION ID</label>
        <input type="text" value="" placeholder="NGO ID" id="ngoid" name="ngoid"><br>

        <label>NGO Name</label>
        <input type="text" value="" placeholder="NGO Name" id="ngoname" name="ngoname"><br>

        <label>Hostel Name</label>
            <input type="text" value="" placeholder="Hostel Name" id="hostelname" name="hostelname" /><br>

        <label>State</label>
        <input type="text" value="" placeholder="" id="hostelstate" name="hostelstate"><br>

        <label>City</label>
        <input type="text" value="" id="hostelcity" name="hostelcity"><br>

        <label>Zipcode</label>
        <input type="text" value="" id="hostelzip" name="hostelzip"><br>

        <label>Do You Provide Daycare Facility?</label>
        <input type="radio" name="child" id="yes" value="yes"> Yes
        <input type="radio" name="child" id="no" value="no" > No
        <br>

        <div class="daycaredetails" hidden=true>

        <label>Daycare ID</label><br>
            <input type="text" value= "" placeholder="" id="daycareid" name="daycareid" /><br>
        
            <label>Daycare Name</label><br>
            <input type="text" value="" placeholder="Daycare Name" id="daycarename" name="daycarename" /><br><br>

            <label>No of Teachers</label><br>
            <input type="text" value="" placeholder="No of Teachers" id="noofteachers" name="noofteachers" /><br><br>
        
            <label>Capacity</label><br>
            <input type="text" value="" placeholder="Capacity" id="capacity" name="capacity" /><br><br>
            </div>
    </form>
</body>
</html>