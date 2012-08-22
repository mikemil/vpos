
<%@ page import="com.jda.portfolio.domain.PosTran" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <r:require module="bootstrap"/>
        <title>PosTran List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New PosTran</g:link></span>
        </div>
        <div class="body">
            <h1>PosTran List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="storeID" title="Store ID" />
                        
                   	        <g:sortableColumn property="regID" title="Reg ID" />
                        
                   	        <g:sortableColumn property="sequence" title="Sequence" />
                        
                   	        <g:sortableColumn property="priceOverride" title="Price Override" />
                        
                   	        <g:sortableColumn property="employeeID" title="Employee ID" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${posTranInstanceList}" status="i" var="posTranInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${posTranInstance.id}">${fieldValue(bean:posTranInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:posTranInstance, field:'storeID')}</td>
                        
                            <td>${fieldValue(bean:posTranInstance, field:'regID')}</td>
                        
                            <td>${fieldValue(bean:posTranInstance, field:'sequence')}</td>
                        
                            <td>${fieldValue(bean:posTranInstance, field:'priceOverride')}</td>
                        
                            <td>${fieldValue(bean:posTranInstance, field:'employeeID')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${posTranInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
