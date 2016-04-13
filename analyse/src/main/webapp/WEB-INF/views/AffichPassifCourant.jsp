<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>

  <body>

		
		
	
		<table>
    <tr>
        <th style="color:#696969;height:80px;">Annee</th>
        <th style="color:#696969;height:80px;">Dette Fournisseurs</th>
        <th style="color:#696969;height:80px;">Dette Fiscales</th>
        <th style="color:#696969;height:80px;">Diverses Passifs Courants</th>
        <th style="color:#696969;height:80px;">Concour Bancaire</th>
        <th style="color:#696969;height:80px;">Dette Salaries</th>
        <th style="color:#696969;height:80px;color:		#F5DEB3;">Somme Des Passifs Courants</th>
        
    </tr>
    <c:forEach var="pc" items="${listPassifCourant}">
    <tr>
    
        <td style="text-align:center;">
            <c:out value="${pc.annee}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${pc.detteFournisseurs}" />
        </td>
        
        <td style="text-align:center;">
            <c:out value="${pc.detteFiscales}" />
        </td>
        
         <td style="text-align:center;">
            <c:out value="${pc.diversePassifCourant}" />
        </td>
         <td style="text-align:center;">
            <c:out value="${pc.concourBancaire}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${pc.detteSalaries}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${pc.sommePassifCourant()}" />
        </td>
         
    </tr>
    </c:forEach>
    </table>
    
    
    </body>
</html>