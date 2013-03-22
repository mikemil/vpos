
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
				<!-- next two not really required -->
                <!-- <g:render template="tender" /> -->
                <!-- <g:render template="coupon" /> -->
                <div>
                    <button class="btn btn-primary" type="submit" id="submit">Submit</button>
                </div>
            </g:form>
        </div>
        <script type="text/javascript" src="../js/autotrans.js"></script>
        <script type="text/javascript" src="../js/showhide.js"></script> 
    </body>
</html>
