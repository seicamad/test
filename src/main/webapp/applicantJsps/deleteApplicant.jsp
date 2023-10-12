<%@ page import="model.Applicant, repository.ApplicantRepository" %>
<%@ page import="java.lang.*" %>

<%

   String idString=request.getParameter("id");
   int id = Integer.parseInt(idString);


  ApplicantRepository repository = new ApplicantRepository();

  repository.deleteApplicant(id);

%>

  <meta http-equiv="Refresh" content="0; url='applicantCatalog.jsp" />