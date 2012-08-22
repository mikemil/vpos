
<%@ page import="com.jda.portfolio.domain.Configuration" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <r:require module="bootstrap"/>
        <title>Show Configuration</title>
    </head>
    <body>
        <div class="body">
            <h1>Show Configuration</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            <td valign="top" class="value">${fieldValue(bean:configurationInstance, field:'id')}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Protocol:</td>
                            <td valign="top" class="value">${fieldValue(bean:configurationInstance, field:'protocol')}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Server:</td>
                            <td valign="top" class="value">${fieldValue(bean:configurationInstance, field:'server')}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Port:</td>
                            <td valign="top" class="value">${fieldValue(bean:configurationInstance, field:'port')}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Context:</td>
                            <td valign="top" class="value">${fieldValue(bean:configurationInstance, field:'context')}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Url:</td>
                            <td valign="top" class="value">${fieldValue(bean:configurationInstance, field:'url')}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Type:</td>
                            <td valign="top" class="value">${fieldValue(bean:configurationInstance, field:'type')}</td>
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${configurationInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
