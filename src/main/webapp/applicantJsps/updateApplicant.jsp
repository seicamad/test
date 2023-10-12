<%@ page import="model.Applicant, repository.ApplicantRepository" %>
<%@ page import="java.lang.*" %>

<%
    String idString = request.getParameter("id");
    int id = Integer.parseInt(idString);
  String name = request.getParameter("name");
  String email = request.getParameter("email");

    Applicant applicant = new Applicant(id, name, email);


  ApplicantRepository repository = new ApplicantRepository();


  repository.updateApplicant(applicant);

%>

  <meta http-equiv="Refresh" content="0; url='applicantCatalog.jsp" />