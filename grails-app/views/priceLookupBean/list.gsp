
<%@ page import="com.jda.portfolio.domain.PriceLookupBean" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <r:require module="bootstrap"/>
        <title>PriceLookupBean List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New PriceLookupBean</g:link></span>
        </div>
        <div class="body">
            <h1>PriceLookupBean List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="storeId" title="Store Id" />
                        
                   	        <g:sortableColumn property="registerId" title="Register Id" />
                        
                   	        <g:sortableColumn property="sequence" title="Sequence" />
                        
                   	        <g:sortableColumn property="msgDateTime" title="Msg Date Time" />
                        
                   	        <g:sortableColumn property="discounts" title="Discounts" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${priceLookupBeanInstanceList}" status="i" var="priceLookupBeanInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${priceLookupBeanInstance.id}">${fieldValue(bean:priceLookupBeanInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:priceLookupBeanInstance, field:'storeId')}</td>
                        
                            <td>${fieldValue(bean:priceLookupBeanInstance, field:'registerId')}</td>
                        
                            <td>${fieldValue(bean:priceLookupBeanInstance, field:'sequence')}</td>
                        
                            <td>${fieldValue(bean:priceLookupBeanInstance, field:'msgDateTime')}</td>
                        
                            <td>${fieldValue(bean:priceLookupBeanInstance, field:'discounts')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${priceLookupBeanInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
