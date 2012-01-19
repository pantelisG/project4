<%-- 
    Document   : success
    Created on : Jan 8, 2012, 2:33:40 PM
    Author     : burn6
--%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String x = request.getParameter("name");
    String y = request.getParameter("email");
    if (x != null && y != null) {
        session.setAttribute("sessname", x);
        session.setAttribute("sessemail", y);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login success</title>
    </head>
    <body>

        <h1 align="center">My basket</h1>
        <br/>
        <br/>
        <!get parameters and sessions body>

    <jsp:useBean id="bean1" scope="session" class="handlers.priceHandler" />
    <jsp:setProperty name="bean1" property="cafe" param="quancafe" />
    <jsp:setProperty name="bean1" property="sugar" param="quansugar" />         
    <jsp:setProperty name="bean1" property="water" param="quanwater" />   
    <jsp:useBean id="bean2" scope="session" class="handlers.itemHandler" />
    <jsp:setProperty name="bean2" property="cafe" param="quancafe" />
    <jsp:setProperty name="bean2" property="sugar" param="quansugar" />         
    <jsp:setProperty name="bean2" property="water" param="quanwater" />   

    <form action="success.jsp" align="center">
        <table border="1" align ="center">
            <thead>
                <tr>
                    <th>Item</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Cafe</td>
                    <td>18.5</td>
                    <td><input type="text" name="quancafe" value=<jsp:getProperty name="bean2" property="cafe" />
                               />
                    </td>
                    <td>

                        <jsp:getProperty name="bean1" property="cafe" />

                    </td>
                </tr>
                <tr>
                    <td>Sugar</td>
                    <td>6.95</td>
                    <td><input type="text" name="quansugar" value=<jsp:getProperty name="bean2" property="sugar" />
                               />
                    </td>
                    <td>
                        <jsp:getProperty name="bean1" property="sugar" />
                    </td>
                </tr>
                <tr>
                    <td>Water</td>
                    <td>1.29</td>
                    <td><input type="text" name="quanwater" value=<jsp:getProperty name="bean2" property="water" />
                               />
                    </td>
                    <td>
                        <jsp:getProperty name="bean1" property="water" />
                    </td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td></td>
                    <td></td>
                    <td><jsp:getProperty name="bean1" property="sum" /></td>
                </tr>
            </tbody>
        </table>

        <br/>

        <input type="submit" value="Checkout" />
        <br/>
        <INPUT TYPE="BUTTON" VALUE="Report" ONCLICK="window.location='http://burn6.wordpress.com/ '"/>
        <INPUT TYPE="BUTTON" VALUE="Code" ONCLICK="window.location='https://github.com/pantelisG/proj3/zipball/master '"/>
    </form>
    <p align="center"><img src="http://spot4-u.appspot.com/Images/POI/SuperMarket-5c4d131d.png" align="center" /></p>
    <p>Your name is:<%out.print(session.getAttribute("sessname"));%></p>
    <p>Your email is:<%out.print(session.getAttribute("sessemail"));%></p>
</body>
</html>
