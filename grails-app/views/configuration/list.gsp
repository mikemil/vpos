
<%@ page import="com.jda.portfolio.domain.Configuration" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <r:require module="bootstrap"/>
        <title>Configuration List</title>
    </head>
    <body>
        <div class="container">
            <h1>Configuration List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <table class="table table-striped">
                <thead>
                    <tr>
               	        <g:sortableColumn property="id" title="Id" />
               	        <g:sortableColumn property="protocol" title="Protocol" />
               	        <g:sortableColumn property="server" title="Server" />
               	        <g:sortableColumn property="port" title="Port" />
               	        <g:sortableColumn property="context" title="Context" />
               	        <g:sortableColumn property="url" title="Url" />
                    </tr>
                </thead>
                <tbody>
                <g:each in="${configurationInstanceList}" status="i" var="configurationInstance">
                    <tr>
                        <td><g:link action="show" id="${configurationInstance.id}">${fieldValue(bean:configurationInstance, field:'id')}</g:link></td>
                        <td>${fieldValue(bean:configurationInstance, field:'protocol')}</td>
                        <td>${fieldValue(bean:configurationInstance, field:'server')}</td>
                        <td>${fieldValue(bean:configurationInstance, field:'port')}</td>
                        <td>${fieldValue(bean:configurationInstance, field:'context')}</td>
                        <td>${fieldValue(bean:configurationInstance, field:'url')}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    </body>
</html>
