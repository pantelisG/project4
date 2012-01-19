<%-- 
    Document   : login
    Created on : Jan 8, 2012, 1:46:19 PM
    Author     : burn6
--%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login form</title>
        <style type="text/css">
        body
        {
            
        text-align:center;
        }
        
        </style>
    </head>
    <body>
        <h1>My market!</h1>
        <html:form action="/login" >

            <table border="0" align="center">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td colspan="2">
                            <bean:write name="LoginForm" property="error" filter="false"/>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>Enter your name:</td>
                        <td><html:text property="name" /></td>
                    </tr>
                    <tr>
                        <td>Enter your email: </td>
                        <td><html:text property="email" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><html:submit value="Login" /></td>
                    </tr>
                </tbody>
            </table>

        </html:form>
        <img src="http://spot4-u.appspot.com/Images/POI/SuperMarket-5c4d131d.png" />

    </body>
</html>
