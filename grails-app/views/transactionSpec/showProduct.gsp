
<%@ page import="com.jda.portfolio.domain.TransactionSpec" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
        
        <r:require module="bootstrap"/>
        <title>VPOS Request/Response</title>
    </head>
    <body>
        <br/>
        <div id="tabs" class="container">
          <ul class="nav nav-tabs">
            <li><a href="#tabs-1">Details</a></li>
            <li><a href="#tabs-2">XML</a></li>
          </ul>
          <div id="tabs-1">
            <h1>Product Details</h1>
              <table style="width:40%">
                <thead>
                  <tr>
                    <th>Sku</th>
                    <th>Description</th>
                    <th>Total Price</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>${productDetail?.sku}</td>
                    <td>${productDetail?.description}</td>
                    <td>${productDetail?.price}</td>
                  </tr>
                </tbody>
              </table>
              <br/>
              %{-- Temporary  table below til we get real data --}%
              <g:if test="${productDetail?.priceEvents}">
                <table style="width:50%">
                      <thead>
                          <tr>
                              <th>Event Name</th>
                              <th>Event Number</th>
                              <th>Priority</th>
                              <th>Prices</th>
                          </tr>
                      </thead>
                      <tbody>
                      <g:each in="${productDetail.priceEvents}" status="i" var="event">
                          <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                              <td>${fieldValue(bean:event, field:'name')}</td>
                              <td>${fieldValue(bean:event, field:'eventNumber')}</td>
                              <td>${fieldValue(bean:event, field:'multipleQuantityPrices')}</td>
                          </tr>
                      </g:each>
                      </tbody>
                </table>  
              </g:if>
          </div>
          <div id="tabs-2">
              <h1>Request</h1>
              <div id="request" class="hero-unit" style="background-color:#B8B8B8;">
                <xmp>${XMLRequest}</xmp>
              </div>
              <h1>Response</h1>
              <div id="response" class="hero-unit" style="background-color:#B8B8B8;">
                <xmp>${XMLResponse}</xmp>
              </div>
            </div>
          </div>
        </div>
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
        <script>
            $(function() {
              $( "#tabs" ).tabs();
            });
        </script>
    </body>
</html>
