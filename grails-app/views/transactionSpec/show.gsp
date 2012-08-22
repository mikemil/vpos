
<%@ page import="com.jda.portfolio.domain.TransactionSpec" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <r:require module="bootstrap"/>
        <title>VPOS Request/Response</title>
    </head>
    <body>
        <div class="container">
            <h1>Request</h1>
            <div id="request" class="hero-unit">
                <table>
                   <tbody>
                       <tr>
                           <td><xmp>${XMLRequest}</xmp></td>
                       </tr>
                   </tbody>
                </table>
            </div>

            <h1>Response</h1>
            <div id="response" class="hero-unit">
              <table>
                   <tbody>
                       <tr>
                           <td><xmp>${XMLResponse}</xmp></td>
                       </tr>
                   </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
