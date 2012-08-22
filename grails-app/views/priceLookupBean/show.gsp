
<%@ page import="com.jda.portfolio.domain.PriceLookupBean" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <r:require module="bootstrap"/>
        <title>Show PriceLookupBean</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="lookup">Price Lookup</g:link></span>
        </div>
        <div class="body">
            <h1>Price Lookup Request</h1>
            <div id="request" class="dialog">
                <table>
                   <tbody>
                       <tr class="prop">
                           <td><xmp>${XMLRequest}</xmp></td>
                       </tr>
                   </tbody>
                </table>
            </div>

            <h1>Price Lookup Response</h1>
            <div id="response" class="dialog">
              <table>
                   <tbody>
                       <tr class="prop">
                           <td><xmp>${XMLResponse}</xmp></td>
                       </tr>
                   </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
