
<%@ page import="com.jda.portfolio.domain.TransactionSpec" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit TransactionSpec</title>
        <r:require module="bootstrap"/>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">TransactionSpec List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New TransactionSpec</g:link></span>
        </div>
        <div class="body">
            <h1>Edit TransactionSpec</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${transactionSpecInstance}">
            <div class="errors">
                <g:renderErrors bean="${transactionSpecInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${transactionSpecInstance?.id}" />
                <input type="hidden" name="version" value="${transactionSpecInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="transClassName">Trans Class Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionSpecInstance,field:'transClassName','errors')}">
                                    <input type="text" id="transClassName" name="transClassName" value="${fieldValue(bean:transactionSpecInstance,field:'transClassName')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="locationNumber">Location Number:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionSpecInstance,field:'locationNumber','errors')}">
                                    <input type="text" id="locationNumber" name="locationNumber" value="${fieldValue(bean:transactionSpecInstance,field:'locationNumber')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="terminalName">Terminal Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionSpecInstance,field:'terminalName','errors')}">
                                    <input type="text" id="terminalName" name="terminalName" value="${fieldValue(bean:transactionSpecInstance,field:'terminalName')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="training">Training:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionSpecInstance,field:'training','errors')}">
                                    <g:checkBox name="training" value="${transactionSpecInstance?.training}" ></g:checkBox>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="currencyCode">Currency Code:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionSpecInstance,field:'currencyCode','errors')}">
                                    <input type="text" id="currencyCode" name="currencyCode" value="${fieldValue(bean:transactionSpecInstance,field:'currencyCode')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="associateSpec">Associate Spec:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionSpecInstance,field:'associateSpec','errors')}">
                                    <g:select optionKey="id" from="${com.jda.portfolio.domain.AssociateSpec.list()}" name="associateSpec.id" value="${transactionSpecInstance?.associateSpec?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="customerSpec">Customer Spec:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionSpecInstance,field:'customerSpec','errors')}">
                                    <g:select optionKey="id" from="${com.jda.portfolio.domain.CustomerSpec.list()}" name="customerSpec.id" value="${transactionSpecInstance?.customerSpec?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="couponSpecs">Coupon Specs:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionSpecInstance,field:'couponSpecs','errors')}">
                                    
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="discountSpecs">Discount Specs:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionSpecInstance,field:'discountSpecs','errors')}">
                                    
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lineItemSpecs">Line Item Specs:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionSpecInstance,field:'lineItemSpecs','errors')}">
                                    
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tenderSpecs">Tender Specs:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:transactionSpecInstance,field:'tenderSpecs','errors')}">
                                    
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
