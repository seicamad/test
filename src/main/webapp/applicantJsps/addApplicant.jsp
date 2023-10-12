<%@ page import="model.Applicant, repository.ApplicantRepository" %>



<%
  String name = request.getParameter("name");
  String email = request.getParameter("email");

  Applicant applicant = new Applicant(name, email);

  ApplicantRepository repository = new ApplicantRepository();


  repository.addApplicant(patient);

%>

  <meta http-equiv="Refresh" content="0; url='applicantCatalog.jsp" />