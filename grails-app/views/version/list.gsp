
<%@ page import="com.jda.portfolio.domain.Version" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <r:require module="bootstrap"/>
        <title>Version List</title>
    </head>
    <body>
        <div class="container">
            <h1>Version List</h1>
            <g:if test="${flash.message}">
                <div class="message">${flash.message}</div>
            </g:if>
            <div>
                <table class="table table-striped table-condensed">
                    <thead>
                        <tr>
                   	        <g:sortableColumn property="versionId" title="Version Id" />
                   	        <g:sortableColumn property="description" title="Description" />
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${versionInstanceList}" status="i" var="versionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td>${fieldValue(bean:versionInstance, field:'versionId')}</td>
                            <td>${fieldValue(bean:versionInstance, field:'description')}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
