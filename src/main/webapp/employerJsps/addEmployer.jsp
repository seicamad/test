<%@ page import="model.Employer, repository.EmployerRepository" %>



<%
  String name = request.getParameter("name");
  String email = request.getParameter("email");

  Employer employer = new Employer(name, email);

  EmployerRepository repository = new EmployerRepository();


  repository.addEmployer(patient);

%>

  <meta http-equiv="Refresh" content="0; url='employerCatalog.jsp" />