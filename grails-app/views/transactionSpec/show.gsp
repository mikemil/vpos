
<%@ page import="com.jda.portfolio.domain.TransactionSpec" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <g:javascript library="jquery-ui" />
        <r:require module="bootstrap"/>
        <title>VPOS Request/Response</title>
    </head>
    <body>
        <div id="tabs" class="container">
          <ul class="nav nav-tabs">
            <li><a href="#tabs-1">Details</a></li>
            <li><a href="#tabs-2">XML</a></li>
            <li><a href="#tabs-3">Timings</a></li>
          </ul>
          <div id="tabs-1">
            <h1>Price Lookup Results</h1>
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
          </div>
          <div id="tabs-2">
            <h1>Request</h1>
            <div id="request" class="hero-unit" style="background-color:#B8B8B8;">
                <table>
                   <tbody>
                       <tr>
                          <td><xmp>${XMLRequest}</xmp></td>
                       </tr>
                   </tbody>
                </table>
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
        <script>
            $(function() {
              $( "#tabs" ).tabs();
            });
        </script>
    </body>
</html>
