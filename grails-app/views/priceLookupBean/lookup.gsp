<%@ taglib prefix="g" uri="/web-app/WEB-INF/tld/grails.tld" %>
<%@ page import="com.jda.portfolio.domain.PriceLookupBean" %>
<HTML>
  <HEAD>
     <title>JDA Store Price Lookup</title>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
     <meta name="layout" content="main" />
     <r:require module="bootstrap"/>
     <link href="css/main.css" rel="stylesheet" type="text/css">
     <script language="javascript">
 

function addSKURow(tblId)
{
  var tblBody = document.getElementById(tblId).tBodies[0];
  var newNode = tblBody.rows[0].cloneNode(true);
  var cells = newNode.cells;
  for (var i=0; i<cells.length; i++) {
      if (cells[i].firstChild.id == "sku") {
          cells[i].firstChild.value = "--Enter SKU--";
          cells[i].firstChild.focus();
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

function deleteRow(r)
{
   var i=r.parentNode.parentNode.rowIndex;
   document.getElementById('mytable').deleteRow(i);
}

</script>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
</div>

<center>
<h2>Header</h2>

<g:form method="POST" action="pricelookup">
<table cellspacing="1" cellpadding="1" border="1">
  <tr>
	 <td bgcolor="DEEPSKYBLUE" width="30%">Store Id:</td> 
     <td><input id="storeId" name="storeId" type="text" size="6" maxlength="4" value="8001"/></td>
  </tr>	 
  <tr>
    <td bgcolor="deepskyblue" width="30%">Register</td>
    <td><input id="registerId" name="registerId" type="text" size="6" maxlength="2" value="01"/></td>
  </tr>
  <tr>
    <td bgcolor="deepskyblue" width="30%">Message Sequence</td>
    <td><input name="msgSequence" type="text" size="6" maxlength="4" value="0001"/></td>
  </tr> 
</table>
<br/>
<br/>
<h2>Details</h2>
<br/>
<table id="myskutable" cellpadding=1 cellspacing=1 border=1>
  <thead>
    <th align=left>SKU List</th>
    <th ALIGN=left><input type="button" onClick="addSKURow('myskutable');" value="Add SKU"/></th>
  </thead>
  <tbody>
    <tr>
	    <td bgcolor="deepskyblue" width="30%">SKU:</td>
        <td><input id="sku" Name="skus" type="text"/></td>
    </tr>         
  </tbody>
</table>
<br/>
<br/>
<table id="mydiscounttable" cellpadding=1 cellspacing=1 border=1>
  <thead>
    <th align=left>Discount List</th>
    <TH ALIGN="LEFT"><input type="button" onClick="addDiscountRow('mydiscounttable');" value="Add Discount"/></TH>
  </thead>
  <tbody>
    <tr>
	    <td bgcolor="deepskyblue" width="30%">Discount:</td>
        <td><input id="discount" Name="discounts" type="text"/></td>
    </tr>          
  </tbody>
</table>
<P>
<P>
<P>
<input type="submit" value="Submit"/>

</g:form>
</CENTER>
</body>
</html>
