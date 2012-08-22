
<%@ page import="com.jda.portfolio.domain.TransactionSpec" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <r:require module="bootstrap"/>
        <title>TransactionSpec List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New TransactionSpec</g:link></span>
        </div>
        <div class="body">
            <h1>TransactionSpec List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="transClassName" title="Trans Class Name" />
                        
                   	        <g:sortableColumn property="locationNumber" title="Location Number" />
                        
                   	        <g:sortableColumn property="terminalName" title="Terminal Name" />
                        
                   	        <g:sortableColumn property="training" title="Training" />
                        
                   	        <g:sortableColumn property="currencyCode" title="Currency Code" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${transactionSpecInstanceList}" status="i" var="transactionSpecInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${transactionSpecInstance.id}">${fieldValue(bean:transactionSpecInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:transactionSpecInstance, field:'transClassName')}</td>
                        
                            <td>${fieldValue(bean:transactionSpecInstance, field:'locationNumber')}</td>
                        
                            <td>${fieldValue(bean:transactionSpecInstance, field:'terminalName')}</td>
                        
                            <td>${fieldValue(bean:transactionSpecInstance, field:'training')}</td>
                        
                            <td>${fieldValue(bean:transactionSpecInstance, field:'currencyCode')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${transactionSpecInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
