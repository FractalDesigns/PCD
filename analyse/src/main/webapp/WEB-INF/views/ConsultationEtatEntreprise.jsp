<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>

  <body>

		<table>
    <tr>
        <th style="color:#696969">Annee</th>       
        <th style="color:#696969">Degre de Liquidite</th>
        <th style="color:#696969">Liquidite Generale</th>
        <th style="color:#696969">Liquidite Reduite</th>
        <th style="color:#696969">Liquidite Immediate</th>
        <th style="color:#696969">Solvabilite Generale</th>
        <th style="color:#696969">Autonomie Decisionnelle</th>
        
    </tr>
    <c:forEach var="analyseRatios" items="${listAnalyseRatios}">
    <tr>
        <td style="text-align:center;">
            <c:out value="${analyseRatios.annee}" />
        </td>
        
      
        <td style="text-align:center;">
            <c:out value="${analyseRatios.degreLiquidite}" />
        </td>
        
        <td style="text-align:center;">
            <c:out value="${analyseRatios.liquiditeGenerale}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${analyseRatios.liquiditeReduite}" />
        </td>
         <td style="text-align:center;">
            <c:out value="${analyseRatios.liquiditeImmediate}" />
        </td>
         <td style="text-align:center;">
            <c:out value="${analyseRatios.solvabiliteGenerale}" />
        </td>
         <td style="text-align:center;">
            <c:out value="${analyseRatios.autonomieDecisionnelle}" />
        </td>
      
    </tr>
    </c:forEach>
    </table>
    
    </body>
</html>