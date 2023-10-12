<html>
<head>
<style>

#menu{
    float: left;
    background: darkblue;
    width: 100%;
    height: 45px;
    margin-top: 10px;
}
ul{
list-style: none;
}
ul li a{
float: left;
color: white;
padding: 0px 40px;
}
#quote{
background-color: rgba(255, 0, 0, 0.4);
font-size: 180%;
text-align: center;
font-family: courier;
}

body {
  height: 100%;
  background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Home Page</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
</head>
<body>
<div id="menu">
    <ul>
    <li><a href="employeeJsps/employeeCatalog.jsp">Employee Catalog</a></li>
    <li><a href="applicantJsps/applicantCatalog.jsp">Applicant Catalog</a></li>
    <li><a href="joblistingJsps/joblistingCatalog.jsp">JobListing Catalog</a></li>
</div>

<p style=" display: flex; justify-content: center; align-items: center; height: 200px; border: 3px solid red;" id="quote"><i><b> Join our development team.</b></i></p>
</body>
</html>
