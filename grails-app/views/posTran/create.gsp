<%@ taglib prefix="g" uri="/web-app/WEB-INF/tld/grails.tld" %>
<%@ page import="com.jda.portfolio.domain.PosTran" %>
<HTML>
  <HEAD>
     <title>JDA Store Create Transaction</title>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
     <meta name="layout" content="main" />
     <r:require module="bootstrap"/>
     <link href="css/main.css" rel="stylesheet" type="text/css">
     <script language="javascript">
 
function setDefaults()
{
 alert("Set defaults for all fields!!!");
}
       
     
function addSKURow(tblId)
{
  var tblBody = document.getElementById(tblId).tBodies[0];
  var newNode = tblBody.rows[0].cloneNode(true);
  var cells = newNode.cells;
  for (var i=0; i<cells.length; i++) {
      if (cells[i].firstChild.id == "sku") {
          cells[i].firstChild.value = "--Enter SKU--";
          cells[i].firstChild.focus();
      } else if (cells[i].firstChild.id == "itemQty") {
    	  cells[i].firstChild.value = "--Enter Qty--";
      }
  }
  tblBody.appendChild(newNode);
}

function addDiscountRow(tblId)
{
  var tblBody = document.getElementById(tblId).tBodies[0];
  var newNode = tblBody.rows[0].cloneNode(true);
  var cells = newNode.cells;
  for (var i=0; i<cells.length; i++) {
      if (cells[i].firstChild.id == "discount") {
          cells[i].firstChild.value = "--Enter discount--";
          cells[i].firstChild.focus();
      }
  }

  tblBody.appendChild(newNode);
}

</script>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLinkTo(dir:'', file:'index.html')}">Home</a></span>
</div>
<center>
<br/>
<g:form method="POST" action="createTrans">
<table cellspacing="1" cellpadding="1" border="1">
  <thead>
    <th align=left colspan=2>Header</th>
  </thead>
  <tbody>
  <tr>
	 <td bgcolor="DEEPSKYBLUE" width="30%">Store Id:</td> 
     <td><input id="storeID" name="storeID" type="text" size="6" maxlength="4" value="8001"/></td>
  </tr>	 
  <tr>
    <td bgcolor="deepskyblue" width="30%">Register</td>
    <td><input id="regID" name="regID" type="text" size="6" maxlength="2" value="01"/></td>
  </tr>
  <tr>
    <td bgcolor="deepskyblue" width="30%">Message Sequence</td>
    <td><input name="sequence" type="text" size="6" maxlength="4" value="0001"/></td>
  </tr>
  <tr>
    <td bgcolor="deepskyblue" width="30%">Price Override</td>
    <td><g:select name="priceOverride" from="${['CUSTSATISFACTION', 'PRICEMATCH', 'STOREUSEFULLSERVICE']}" noSelection="${['null':'Select One...']}"/></td>
  </tr>
  <tr>
    <td bgcolor="deepskyblue" width="30%">Employee ID</td>
    <td><input name="employeeID" type="text" size="6" maxlength="4" value="0001"/></td>
  </tr>
  </tbody> 
</table>
<br/>
<br/>
<table id="mytendertable" cellpadding=1 cellspacing=1 border=1>
  <thead>
    <th align=left colspan=4>Tender</th>
  </thead>
  <tbody>
    <tr>
     <td bgcolor="deepskyblue" width="30%">Name:</td>
     <td><input id="tender.name" Name="tender.name" type="text"/></td>
     <td bgcolor="deepskyblue" width="30%">Track 2:</td>
     <td><input id="tender.track2" Name="tender.track2" type="text"/></td>
    </tr>
    <tr>
     <td bgcolor="deepskyblue" width="30%">PO Number:</td>
     <td><input id="tender.poNumber" Name="tender.poNumber" type="text"/></td>
     <!--  should prob be checkbox -->
     <td bgcolor="deepskyblue" width="30%">Gift Card:</td>
     <td><g:checkBox name="tender.giftCard" value="${false}" /></td>
    </tr>
     <tr>
     <td bgcolor="deepskyblue" width="30%">PreLock Num:</td>
     <td><input id="tender.preLockNum" Name="tender.preLockNum" type="text"/></td>
     <td bgcolor="deepskyblue" width="30%">PreLock Amt:</td>
     <td><input id="tender.preLockAmt" Name="tender.preLockAmt" type="text"/></td>
    </tr>
     <tr>
     <td bgcolor="deepskyblue" width="30%">Loyalty ID:</td>
     <td><input id="tender.loyaltyID" Name="tender.loyaltyID" type="text"/></td>
     <td bgcolor="deepskyblue" width="30%">Tax ID Num:</td>
     <td><input id="tender.taxid.num" Name="tender.taxid.num" type="text"/></td>
    </tr>
    <tr>
     <!--  should be selection of STATE, OTHER -->
     <td bgcolor="deepskyblue" width="30%">Tax ID Type:</td>
     <td><g:select name="tender.taxid.type" from="${['STATE', 'OTHER']}" noSelection="${['null':'Select One...']}"/></td>
     <td bgcolor="deepskyblue" width="30%">Other Tender Name:</td>
     <td><input id="tender.other.name" Name="tender.other.name" type="text"/></td>
    </tr>
    <tr>
     <td bgcolor="deepskyblue" width="30%">Other Tender Track2:</td>
     <td><input id="tender.other.track2" Name="tender.other.track2" type="text"/></td>
     <td bgcolor="deepskyblue" width="30%">Other Tender PO Number:</td>
     <td><input id="tender.other.poNumber" Name="tender.other.poNumber" type="text"/></td>
    </tr>
  </tbody>
</table>
<P>
<br/>
<table id="myskutable" cellpadding=1 cellspacing=1 border=1>
  <thead>
    <th align=left>SaleItems</th>
    <th ALIGN=left colspan=3><input type="button" onClick="addSKURow('myskutable');" value="Add SaleItem"/></th>
  </thead>
  <tbody>
    <tr>
	    <td bgcolor="deepskyblue" width="30%">SKU:</td>
        <td><input id="sku" Name="skus" type="text"/></td>
        <td bgcolor="deepskyblue" width="30%">Qty:</td>
        <td><input id="itemQty" Name="itemQty" type="text"/></td>
    </tr>         
  </tbody>
</table>
<br/>
<br/>
<table id="mydiscounttable" cellpadding=1 cellspacing=1 border=1>
  <thead>
    <th align=left>Discounts</th>
    <th ALIGN="LEFT"><input type="button" onClick="addDiscountRow('mydiscounttable');" value="Add Discount"/></th>
  </thead>
  <tbody>
    <tr>
	    <td bgcolor="deepskyblue" width="30%">Discount:</td>
        <td><input id="discount" Name="discounts" type="text"/></td>
    </tr>          
  </tbody>
</table>
<br/>
<input type="button" onClick="setDefaults();" value="setDefaults"/>
<input type="submit" value="Submit"/>
</g:form>
</center>
</body>
</html>
