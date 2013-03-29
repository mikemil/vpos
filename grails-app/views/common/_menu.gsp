<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container">
       <a class="brand" href="${createLink(uri: '/')}">VPOS Tester</a>
       <ul class="nav">
          <li class=""><a href="${createLink (controller:'configuration')}">Configuration</a></li>
          <li class=""><a href="${createLink (controller:'transactionSpec', action:'createLookup')}">Price Lookup</a></li>
          <li class=""><a href="${createLink (controller:'transactionSpec', action:'create')}">Txn Create</a></li>
          <li class=""><a href="${createLink (controller:'transactionSpec', action:'product')}">Product Lookup</a></li>
       </ul>
    </div>
  </div>
</div>  
<div class="hdrmsg" style="display:none;">
  <h1>Request submitted...</h1><img src="${createLinkTo(dir:'images',file:'spinner.gif')}" alt="Spinner" />
</div> 
   
   
   
 
