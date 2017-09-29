
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
    </head>
    <%
    
    Integer hoursWorked = Integer.parseInt(request.getParameter("hours"));
    Double hourlyPay = Double.parseDouble(request.getParameter("pay"));
    Double overtimeRate = hourlyPay*1.5;  
    Double pretaxDeduct = Double.parseDouble(request.getParameter("pretax"));
    Double posttaxDeduct = Double.parseDouble(request.getParameter("posttax"));
    Double regularPay=0.0;
    Double grossPay=0.0;
    Double overtimeHours=0.0;
   
if(hoursWorked>40){
    overtimeHours = hoursWorked-40.0;

    regularPay = 40*hourlyPay;
    grossPay = overtimeHours*overtimeRate + regularPay;
}
else{
    grossPay = hoursWorked*hourlyPay;
}

Double preTaxPay=grossPay-pretaxDeduct;
Double taxAmount=0.0;
if(grossPay>500){
    taxAmount=preTaxPay*.22;
}
else{
    taxAmount=preTaxPay*.18;
    
}

Double postTaxAmount=preTaxPay-taxAmount;
Double netPay=postTaxAmount-posttaxDeduct;

    %>
    <body>
        <h1>Salary Info</h1>
        <table>
            <tbody>
                <tr>
                    <td>
                     Total Hours Worked:  
                    </td>
                    <td>
                       <%=hoursWorked%> 
                    </td>
                </tr>
                 <tr>
                    <td>
                      Hourly Rate:  
                    </td>
                     
                    <td>
                      <%=hourlyPay%>  
                    </td>
                </tr>
                 <tr>
                    <td>
                      # Hours Overtime:  
                    </td>
                    <td>
                        <%=overtimeHours%>
                    </td>
                </tr>
                 <tr>
                    <td>
                      Overtime Hourly Rate:  
                    </td>
                    <td>
                         <%=overtimeRate%>
                    </td>
                </tr>
                 <tr>
                    <td>
                      Gross Pay:  
                    </td>
                    <td>
                        <%=grossPay%>
                    </td>
                </tr>
                 <tr>
                    <td>
                      Pre-Tax Deduct:  
                    </td>
                    <td>
                       <%=pretaxDeduct%>  
                    </td>
                </tr>
                 <tr>
                    <td>
                      Pre-Tax Pay:  
                    </td>
                    <td>
                        <%=preTaxPay%> 
                    </td>
                </tr>
                 <tr>
                    <td>
                      Tax Amount:  
                    </td>
                    <td>
                       <%=taxAmount%>  
                    </td>
                </tr>
                 <tr>
                    <td>
                      Post-tax Pay:  
                    </td>
                    <td>
                        <%=postTaxAmount%> 
                    </td>
                </tr>
                 <tr>
                    <td>
                      Post-tax Deduct:  
                    </td>
                    <td>
                         <%=posttaxDeduct%>
                    </td>
                </tr>
                 <tr>
                    <td>
                      Net Pay:  
                    </td>
                    <td>
                        <%=netPay%>
                    </td>
                </tr>
               
            </tbody>
        </table> 
    </body>
</html>
