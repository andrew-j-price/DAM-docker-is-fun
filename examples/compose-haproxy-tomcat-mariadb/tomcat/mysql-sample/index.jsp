<%@page import="java.net.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/TestDB">
select id, foo, bar from testdata
</sql:query>

<html>
  <head>
    <title>DB Test</title>
  </head>
  <body>
    <h2>Served by Apache Tomcat!</h2>
    <h2>On Container: <%=InetAddress.getLocalHost()%></h2>
    <h2>Database Results:</h2>
  	<c:forEach var="row" items="${rs.rows}">
      Foo ${row.foo}<br/>
      Bar ${row.bar}<br/>
  </c:forEach>
  </body>
</html>
