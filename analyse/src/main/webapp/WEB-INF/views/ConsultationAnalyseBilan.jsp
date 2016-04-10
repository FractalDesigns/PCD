<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>

  
  <body>

		<table>
    <tr>
        <th style="color:#696969">Annee</th>
        <th style="color:#696969">Fond de Roulement</th>
        <th style="color:#696969">Besoin en Fond de Roulement d'Exploitation </th>  
        <th style="color:#696969">Besoin en Fond de Roulement hors Exploitation</th>
        <th style="color:#696969">Besoin en Fond de Roulement</th>
        <th style="color:#696969">Tresorerie nette</th>
 
        
    </tr>
    <c:forEach var="analyseBilan" items="${listAnalyseBilan}">
    <tr>
        <td style="text-align:center;">
            <c:out value="${analyseBilan.annee}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${analyseBilan.fondroulement}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${analyseBilan.bfre}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${analyseBilan.bfrhe}" />
        </td>
        
        <td style="text-align:center;">
            <c:out value="${analyseBilan.bfr}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${analyseBilan.tn}" /> 
        </td>
      
    </tr>
    </c:forEach>
    </table>
       </body>
</html>