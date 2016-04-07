<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>

  <body>
		
		<table>
    <tr>
        <th>Username</th>
        <th>Lastname</th>
        <th>Password</th>
        <th>Email</th>
        
        <th>Update</th>
        <th>Delete</th>
        
    </tr>
    <c:forEach var="user" items="${listUtilisateurs}">
    <tr>
        <td style="text-align:center;">
            <c:out value="${user.username}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${user.lastname}" />
        </td>
        
        <td style="text-align:center;">
            <c:out value="${user.password}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${user.email}" />
        </td>
        <td style="text-align:center;">
        <a href="#modifierUtilisateur">update</a>
        </td>
        <td style="text-align:center;">
        <a href="#supprimerUtilisateur">delete</a>
        </td>
    </tr>
    </c:forEach>
    </table>

		
    </body>
</html>