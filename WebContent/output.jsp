<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Zork On The Web</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" 
integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" 
crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" 
integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" 
crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" 
integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" 
crossorigin="anonymous"></script>


</head>
<body>

<div class="container">
  <div class="jumbotron">
    <h1>Room Information</h1>
   
  </div>
  <p>Room : ${messages}</p>
   
</div>
<form action="zorkcontroller" method="post">
            <h1></h1>
            <p>
               
                <input type="hidden" id="name" name="room" value="${messages.name}">
          //      <span class="error">${messages.name}</span>
              
            </p>
            <p>
               
                <input type="hidden" id="name" name="roomnum" value="${messages.roomnum}">
          //      <span class="error">${messages.name}</span>
              
            </p>
             <p>
                <label for="direction">What direction do you choose? </label>
                <input id="direction" name="direction" value="${param.direction}">
    //            <span class="error">${messages.name}</span>
            </p>
            
            
            <p>
                <input type="submit">
                <span class="success">${messages.success}</span>
            </p>
        </form>

</body>
</html>







