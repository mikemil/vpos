
<%@ page import="com.jda.portfolio.domain.TransactionSpec" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>VPOS Request/Response</title>
    </head>
    <%--<body onLoad="${remoteFunction(action:'callTxnCreate',update:'response')}"> --%>
    <body onLoad="${remoteFunction(action:'callTxnCreate',update:'response', params:XMLRequest)}">
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="shopping_cart" action="create">Txn Create</g:link></span>
            <span class="menuButton"><g:link class="search" action="createLookup">Price Lookup</g:link></span>
        </div>
        <div class="body">
            <h1>Request</h1>
            <div id="request" class="dialog">
                <table>
                   <tbody>
                       <tr class="prop">
                           <td><xmp>${XMLRequest}</xmp></td>
                       </tr>
                   </tbody>
                </table>
            </div>

            <h1>Response</h1>
            <div id="response" class="dialog">
               <img src="${createLinkTo(dir:'images',file:'spinner.gif')}" alt="Spinner" />
               <g:remoteLink action="callTxnCreate" update="response]");">Call Service</g:remoteLink>
            </div>
        </div>
    </body>
</html>
