
<%@ page import="com.jda.portfolio.domain.Configuration" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <r:require module="bootstrap"/>
        <title>Create Configuration</title>         
    </head>
    <body>
        <div class="body">
            <h1>Create Configuration</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${configurationInstance}">
            <div class="errors">
                <g:renderErrors bean="${configurationInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="protocol">Protocol:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:configurationInstance,field:'protocol','errors')}">
                                    <input type="text" id="protocol" name="protocol" value="${fieldValue(bean:configurationInstance,field:'protocol')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="server">Server:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:configurationInstance,field:'server','errors')}">
                                    <input type="text" id="server" name="server" value="${fieldValue(bean:configurationInstance,field:'server')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="port">Port:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:configurationInstance,field:'port','errors')}">
                                    <input type="text" id="port" name="port" value="${fieldValue(bean:configurationInstance,field:'port')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="context">Context:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:configurationInstance,field:'context','errors')}">
                                    <input type="text" id="context" name="context" value="${fieldValue(bean:configurationInstance,field:'context')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="url">Url:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:configurationInstance,field:'url','errors')}">
                                    <input type="text" id="url" name="url" value="${fieldValue(bean:configurationInstance,field:'url')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="type">Type:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:configurationInstance,field:'type','errors')}">
                                    <input type="text" id="type" name="type" value="${fieldValue(bean:configurationInstance,field:'type')}" />
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
