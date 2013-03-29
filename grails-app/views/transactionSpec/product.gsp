
<%@ page import="com.jda.portfolio.domain.TransactionSpec" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Product Lookup</title>         
        <r:require module="bootstrap"/>
    </head>
    <body>
        <div class="container-fluid">
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${transactionSpecInstance}">
            <div class="errors">
                <g:renderErrors bean="${transactionSpecInstance}" as="list" />
            </div>
            </g:hasErrors>
            <br/>
            <g:form action="productLookup" method="post">
                <g:render template="auth" />
                <g:render template="header" />
                <g:render template="lineitem" />
                <div>
                    <button class="btn btn-primary" type="submit" id="submitBtn">Submit</button>
                    %{-- <button class="btn btn-primary" type="button" id="submitBtn">Submit</button> doesn't submit because type not submit --}%
                    %{-- <input class="btn btn-primary" type="submit" value="Submit"/> this works!!! --}%
                </div>
            </g:form>
        </div>
        <script type="text/javascript" src="../js/autotrans.js"></script>
    </body>
</html>
