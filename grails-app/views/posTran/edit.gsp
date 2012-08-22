
<%@ page import="com.jda.portfolio.domain.PosTran" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <r:require module="bootstrap"/>
        <title>Edit PosTran</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">PosTran List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New PosTran</g:link></span>
        </div>
        <div class="body">
            <h1>Edit PosTran</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${posTranInstance}">
            <div class="errors">
                <g:renderErrors bean="${posTranInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${posTranInstance?.id}" />
                <input type="hidden" name="version" value="${posTranInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="storeID">Store ID:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:posTranInstance,field:'storeID','errors')}">
                                    <input type="text" maxlength="4" id="storeID" name="storeID" value="${fieldValue(bean:posTranInstance,field:'storeID')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="regID">Reg ID:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:posTranInstance,field:'regID','errors')}">
                                    <input type="text" maxlength="4" id="regID" name="regID" value="${fieldValue(bean:posTranInstance,field:'regID')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sequence">Sequence:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:posTranInstance,field:'sequence','errors')}">
                                    <input type="text" id="sequence" name="sequence" value="${fieldValue(bean:posTranInstance,field:'sequence')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="priceOverride">Price Override:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:posTranInstance,field:'priceOverride','errors')}">
                                    <input type="text" id="priceOverride" name="priceOverride" value="${fieldValue(bean:posTranInstance,field:'priceOverride')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="employeeID">Employee ID:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:posTranInstance,field:'employeeID','errors')}">
                                    <g:select from="${1..9999}" id="employeeID" name="employeeID" value="${posTranInstance?.employeeID}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="timeStamp">Time Stamp:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:posTranInstance,field:'timeStamp','errors')}">
                                    <g:datePicker name="timeStamp" value="${posTranInstance?.timeStamp}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="discounts">Discounts:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:posTranInstance,field:'discounts','errors')}">
                                    
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="items">Items:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:posTranInstance,field:'items','errors')}">
                                    
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
