<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<c:import url="header.jsp" >
	<c:param name="title" value="Picture Squirrel Home"></c:param>
</c:import>

<sql:setDataSource var="ds" dataSource="jdbc/webshop" />

<sql:query dataSource="${ds}" sql="select * from images limit 10" var="results" />

<c:forEach var="image" items="${results.rows}">

	<c:set scope="page" var="imgname" value="${image.stem}.${image.image_extension}"></c:set>

	<p><img src="${pageContext.request.contextPath}/pics/${imgname}" /></p>
 
</c:forEach>
 

<c:import url="footer.jsp" />






























