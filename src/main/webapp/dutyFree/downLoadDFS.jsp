<%
	java.io.InputStream inputStream = Thread.currentThread().getContextClassLoader().getResourceAsStream("static/Duty Free Shops.csv");
	response.setCharacterEncoding("GBK");
	response.setContentType("text/csv");
	response.setHeader("Content-Disposition", "attachment;filename=Duty Free Shops.csv");

	org.apache.commons.io.IOUtils.copy(inputStream, response.getOutputStream());
%>
