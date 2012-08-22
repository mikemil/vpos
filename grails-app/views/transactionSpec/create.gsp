
<%@ page import="com.jda.portfolio.domain.TransactionSpec" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create TransactionSpec</title> 
        <script type="text/javascript" src="../js/autotrans.js"></script>
        <script type="text/javascript" src="../js/showhide.js"></script>        
        <r:require module="bootstrap"/>
    </head>
    <body onLoad="setDefaults()">
        <div class="container">
            <g:if test="${flash.message}">
               <div class="message">${flash.message}</div>
            </g:if>
            <br/>
            <g:form action="txncreate" method="post" >
                <g:render template="auth" />
                <g:render template="header" />
                <g:render template="lineitem" />
                <g:render template="tender" />
                <g:render template="coupon" />
                <g:render template="discount" />
                
                <div>
                    <input class="btn" type="button" value="Set Defaults" onclick="setDefaults();"/>
                    <input class="btn" type="submit" value="Submit" id="submit"/>
                </div>
            </g:form>
        </div>
    </body>
</html>
