<%@ page language="java" import="org.apache.log4j.Logger"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<jsp:include page="../fragments/headTag.jsp" />

<body>
	<div class="container">
		<jsp:include page="../fragments/bodyHeader.jsp" />

		<%
			Exception exception = (Exception) request.getAttribute("exception");
			final Logger logger = Logger.getLogger("xmlInfo");
			logger.error(exception.getMessage(), exception);
		%>
		Error!
		<%-- <p>${exception.message}</p> --%>
		<p>
			Exception: ${exception.message}.
			<c:forEach items="${exception.stackTrace}" var="stackTrace"> 
				${stackTrace} 
			</c:forEach>
		</p>

		<jsp:include page="../fragments/footer.jsp" />
	</div>
</body>

</html>