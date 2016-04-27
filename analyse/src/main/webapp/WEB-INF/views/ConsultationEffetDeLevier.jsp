<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>

  <body>

		<table>
    <tr>
        <th style="color:#696969">Annee</th>  
        <th style="color:#696969">Benefice Avant Interet Et Impot</th>
        <th style="color:#696969">Benefice Avant Impot</th>
        <th style="color:#696969">Benefice Net</th> 
        <th style="color:#696969">Capital Investi</th>
        <th style="color:#696969">Chiffre Affaire</th>        
        <th style="color:#696969">Chiffre Affaire Critique</th>
        <th style="color:#696969">Coefficient Effet De Levier</th>
        <th style="color:#696969">Cout Fixe</th>
        <th style="color:#696969">Cout Variable</th>  
        <th style="color:#696969">Effet De Levier</th> 
        <th style="color:#696969">Production Point Mort</th>
        <th style="color:#696969">Production Pour Benefice</th>   
        <th style="color:#696969">Taux Rentabilite Economique</th>
        <th style="color:#696969">Taux Rentabilite Financiere</th>
               
    </tr>
    
    <c:forEach var="cashFlow" items="${listDonneesEffetDeLevier}">
    <tr>
        <td style="text-align:center;">
            <c:out value="${cashFlow.annee}" />
        </td>
         <td style="text-align:center;">
            <c:out value="${cashFlow.beneficeAvantInteretEtImpot}" />
        </td>
         <td style="text-align:center;">
            <c:out value="${cashFlow.beneficeAvantImpot}" />
        </td>  
        <td style="text-align:center;">
            <c:out value="${cashFlow.beneficeNet}" />
        </td>    
            
        <td style="text-align:center;">
            <c:out value="${cashFlow.capitalInvesti}" />
        </td>
         <td style="text-align:center;">
            <c:out value="${cashFlow.chiffreAffaire}" />
        </td>
          <td style="text-align:center;">
            <c:out value="${cashFlow.chiffreAffaireCritique}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${cashFlow.coefficientEffetDeLevier}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${cashFlow.coutFixe}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${cashFlow.coutVariable}" />
        </td> 
         
        <td style="text-align:center;">
            <c:out value="${cashFlow.effetDeLevier}" />
        </td> 
        <td style="text-align:center;">
            <c:out value="${cashFlow.productionPointMort}" />
        </td>
         <td style="text-align:center;">
            <c:out value="${cashFlow.productionPourBenefice}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${cashFlow.tauxRentabiliteEconomique}" />
        </td>
        
        <td style="text-align:center;">
            <c:out value="${cashFlow.tauxRentabiliteFinanciere}" />
        </td>
       
       
    </tr>
    </c:forEach>
    </table>
    


    </body>
</html>