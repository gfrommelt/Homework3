<%-- 
    Document   : index
    Created on : Sep 28, 2017, 3:54:57 PM
    Author     : Greg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Homework Three</title>
    <h1>Salary Calculator</h1>
    
    <form name="salaryCalculator" action="results.jsp" method="post">
        <table>
            <tbody>
                <tr>
                    <td>
                   Hours Worked:
                    </td>
                    <td>
                        <input type="text" name="hours" value="" size="50">
                    </td>
                </tr>
                <tr>
                    <td>
                   Hourly Pay:
                    </td>
                    <td>
                        <input type="text" name="pay" value="" size="50">
                    </td>
                </tr>
                <tr>
                    <td>
                   Pre-tax Deduct:
                    </td>
                    <td>
                        <input type="text" name="pretax" value="" size="50">
                    </td>
                </tr>
                <tr>
                    <td>
                   Post-tax deduct:
                    </td>
                    <td>
                        <input type="text" name="posttax" value="" size="50">
                    </td>
                </tr>
            </tbody>
            
        </table>
       <input type="reset" value="Clear" id="clear">
       <input type="submit" value="Submit" id="submit"> 
    </form>
    </head>
    <body>
    </body>
</html>
