
<%@ page import="com.jda.portfolio.domain.PriceLookupBean" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <r:require module="bootstrap"/>
        <title>Edit PriceLookupBean</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">PriceLookupBean List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New PriceLookupBean</g:link></span>
        </div>
        <div class="body">
            <h1>Edit PriceLookupBean</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${priceLookupBeanInstance}">
            <div class="errors">
                <g:renderErrors bean="${priceLookupBeanInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${priceLookupBeanInstance?.id}" />
                <input type="hidden" name="version" value="${priceLookupBeanInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="storeId">Store Id:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:priceLookupBeanInstance,field:'storeId','errors')}">
                                    <input type="text" maxlength="4" id="storeId" name="storeId" value="${fieldValue(bean:priceLookupBeanInstance,field:'storeId')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="registerId">Register Id:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:priceLookupBeanInstance,field:'registerId','errors')}">
                                    <input type="text" maxlength="4" id="registerId" name="registerId" value="${fieldValue(bean:priceLookupBeanInstance,field:'registerId')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sequence">Sequence:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:priceLookupBeanInstance,field:'sequence','errors')}">
                                    <input type="text" id="sequence" name="sequence" value="${fieldValue(bean:priceLookupBeanInstance,field:'sequence')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="msgDateTime">Msg Date Time:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:priceLookupBeanInstance,field:'msgDateTime','errors')}">
                                    <g:datePicker name="msgDateTime" value="${priceLookupBeanInstance?.msgDateTime}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="discounts">Discounts:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:priceLookupBeanInstance,field:'discounts','errors')}">
                                    
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="skus">Skus:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:priceLookupBeanInstance,field:'skus','errors')}">
                                    
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
