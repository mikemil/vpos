
<%@ page import="com.jda.portfolio.domain.TransactionSpec" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        %{-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" /> --}%
        <r:require module="bootstrap"/>
        <title>VPOS Request/Response</title>
    </head>
    <body>
        <br/>
        <div id="tabs" class="container">
          <ul class="nav nav-tabs">
            <li><a href="#tabs-1">Details</a></li>
            <li><a href="#tabs-2">XML</a></li>
            <li><a href="#tabs-3">Timings</a></li>
          </ul>
          <div id="tabs-1">
            <h1>Product Details</h1>
              <table class="table" style="width:60%">
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
                    <td>${formatNumber(number:productDetail?.priceValue, type:'currency',currencyCode:'USD', minimumFractionDigits='2')}</td>
                  </tr>
                </tbody>
              </table>
              <br/>
              <g:if test="${productDetail?.priceDeals}">
              <h1>Potential Deals</h1>
                <table class="table table-striped table-bordered table-condensed" style="width:100%">
                      <thead>
                          <tr>
                              <th>Deal Type</th>
                              <th>Event Name</th>
                              <th>Effective Date</th>
                              <th>Event Number</th>
                              <th>Price Type</th>
                              <th>Price Value</th>
                              <th>Limit</th>
                              <th>Qualifier</th>
                              <th>Getter</th>
                              <th>Buy<br/>Desc/Qty</th>
                              <th>Get<br/>Desc/Qty</th>
                          </tr>
                      </thead>
                      <tbody>
                      <g:each in="${productDetail.priceDeals}" status="i" var="deal">
                          %{-- <tr class="${(i % 2) == 0 ? 'odd' : 'even'}"> --}%
                          <tr>
                              <td>${fieldValue(bean:deal, field:'dealType')}</td>
                              <td>${fieldValue(bean:deal, field:'eventName')}</td>
                              <td>${fieldValue(bean:deal, field:'effectiveDate')}</td>
                              <td>${fieldValue(bean:deal, field:'eventNumber')}</td>
                              <td>${fieldValue(bean:deal, field:'priceType')}</td>
                              <g:if test="${deal.priceType == 'PCTDISC'}">
                                <td>${fieldValue(bean:deal, field:'priceValueAmt')}%</td>
                              </g:if>
                              <g:else>
                                <td>${formatNumber(number:deal.priceValueAmt, type:'currency',currencyCode:'USD', minimumFractionDigits='2')}</td>
                              </g:else>
                              <td>${fieldValue(bean:deal, field:'limitQty')}</td>
                              <td>${fieldValue(bean:deal, field:'qualifier')}</td>
                              <td>${fieldValue(bean:deal, field:'getter')}</td>
                              <td>${fieldValue(bean:deal, field:'buyDescription')} / ${fieldValue(bean:deal, field:'buyQty')}</td>
                              <td>${fieldValue(bean:deal, field:'getDescription')} / ${fieldValue(bean:deal, field:'getQty')}</td>
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
          <div id="tabs-3">
            <h1>Timings(in millis)</h1>
            <ul>
              <li>XML Generation: ${generateXMLMillis}</li>
              <li>Web Service: ${serviceMillis}</li>
              <li>XML Slurp: ${slurpMillis}</li>
            </ul>
          </div>
        </div>
        %{-- <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script> --}%
        <script>
            $(function() {
              $( "#tabs" ).tabs();
            });
        </script>
    </body>
</html>
