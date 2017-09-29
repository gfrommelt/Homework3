
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
    String hoursWorked = request.getParameter("hours");
    String hourlyPay = request.getParameter("pay");
    String pretaxDeduct = request.getParameter("pretax");
    String posttaxDeduct = request.getParameter("posttax");

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
                        
                    </td>
                </tr>
                 <tr>
                    <td>
                      Overtime Hourly Rate:  
                    </td>
                    <td>
                        
                    </td>
                </tr>
                 <tr>
                    <td>
                      Gross Pay:  
                    </td>
                    <td>
                        
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
                        
                    </td>
                </tr>
                 <tr>
                    <td>
                      Tax Amount:  
                    </td>
                    <td>
                        
                    </td>
                </tr>
                 <tr>
                    <td>
                      Post-tax Pay:  
                    </td>
                    <td>
                        
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
                        
                    </td>
                </tr>
               
            </tbody>
        </table> 
    </body>
</html>
