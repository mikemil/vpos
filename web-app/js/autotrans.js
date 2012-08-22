function setDefaults()
{
	document.getElementById('userid').value = '102';
	document.getElementById('pswd').value = '102';
	document.getElementById('transClassName').value = 'com.jda.portfolio.pos.base.transaction.RetailTransaction';
	document.getElementById('locationNumber').value = '8001';
	document.getElementById('terminalName').value = '20';
	document.getElementById('associateSpec.associateNumber').value = '102';
	document.getElementById('lineItemSpecs[0].sku').value = '210';
	document.getElementById('lineItemSpecs[0].quantity').value = '1';
	document.getElementById('tenderSpecs[0].tenderCode').value = 'VI';
	document.getElementById('tenderSpecs[0].cardToken').value = 'ababababababab';
	document.getElementById('tenderSpecs[0].cardType').value = '100';
	document.getElementById('tenderSpecs[0].cardSubType').value = '1001';
    document.getElementById('submit').focus();
}

function setODDefaults()
{
	// office depot settings
	document.getElementById('userid').value = '102';
	document.getElementById('pswd').value = 'Password1';
	document.getElementById('transClassName').value = 'com.jda.portfolio.pos.base.transaction.RetailTransaction';
	document.getElementById('locationNumber').value = '409';
	document.getElementById('terminalName').value = '1';
	document.getElementById('associateSpec.associateNumber').value = '102';
	document.getElementById('lineItemSpecs[0].sku').value = '163061';
	document.getElementById('lineItemSpecs[0].quantity').value = '2';
	document.getElementById('tenderSpecs[0].tenderCode').value = 'DC';
	document.getElementById('tenderSpecs[0].cardToken').value = 'ababababababab';
	document.getElementById('tenderSpecs[0].cardType').value = '100';
	document.getElementById('tenderSpecs[0].cardSubType').value = '1001';
    document.getElementById('submit').focus();
}


function browserIsIE() {
	var isIE = false;
	var agt = navigator.userAgent.toLowerCase();
	//alert("agent="+agt);
	if (agt.indexOf("msie") != -1) isIE = true;
    return isIE;
}

function addItemRow(tblId)
{
  if (browserIsIE()) {
	  alert("Please use Firefox or Chrome, this function currently broken in IE");
	  return;
  }
  var tblBody = document.getElementById(tblId).tBodies[0];
  var newNode = tblBody.rows[0].cloneNode(true);
  var itemCount = parseInt(document.getElementById("itemCount").value);
  itemCount++;
  document.getElementById("itemCount").value = itemCount;
  var cells = newNode.cells;
  for (var i=0; i<cells.length; i++) {
      if (cells[i].firstElementChild.id.indexOf("sku") != -1) {
          cells[i].firstElementChild.id = "lineItemSpecs["+(itemCount-1)+"].sku";
          cells[i].firstElementChild.name = "lineItemSpecs["+(itemCount-1)+"].sku";
      } else if (cells[i].firstElementChild.id.indexOf("quantity") != -1) {
          cells[i].firstElementChild.id = "lineItemSpecs["+(itemCount-1)+"].quantity";
          cells[i].firstElementChild.name = "lineItemSpecs["+(itemCount-1)+"].quantity";
      } else if (cells[i].firstElementChild.id.indexOf("overrideReasonCode") != -1) {
          cells[i].firstElementChild.id   = "lineItemSpecs["+(itemCount-1)+"].overrideReasonCode";
          cells[i].firstElementChild.name = "lineItemSpecs["+(itemCount-1)+"].overrideReasonCode";
      } else if (cells[i].firstElementChild.id.indexOf("overridePrice") != -1) {
          cells[i].firstElementChild.id   = "lineItemSpecs["+(itemCount-1)+"].overridePrice";
          cells[i].firstElementChild.name = "lineItemSpecs["+(itemCount-1)+"].overridePrice";
      } else if (cells[i].firstElementChild.id.indexOf("pricePrecision") != -1) {
          cells[i].firstElementChild.id   = "lineItemSpecs["+(itemCount-1)+"].pricePrecision";
          cells[i].firstElementChild.name = "lineItemSpecs["+(itemCount-1)+"].pricePrecision";
      } else if (cells[i].firstElementChild.id.indexOf("overrideAssociateNumber") != -1) {
          cells[i].firstElementChild.id   = "lineItemSpecs["+(itemCount-1)+"].overrideAssociateNumber";
          cells[i].firstElementChild.name = "lineItemSpecs["+(itemCount-1)+"].overrideAssociateNumber";
      }
  }
  
  tblBody.appendChild(newNode);
}

function addTenderRow(tblId)
{
	 if (browserIsIE()) {
		  alert("Please use Firefox or Chrome, this function currently broken in IE");
		  return;
	  }
	var tblBody = document.getElementById(tblId).tBodies[0];
    var newNode = tblBody.rows[0].cloneNode(true);
    var newNode2 = tblBody.rows[1].cloneNode(true);
	var tenderCount = parseInt(document.getElementById("tenderCount").value);
	tenderCount++;
	document.getElementById("tenderCount").value = tenderCount;
	var cells = newNode.cells;
	for (var i=0; i<cells.length; i++) {
	    if (cells[i].firstElementChild.id.indexOf("cardToken") != -1) {
	        cells[i].firstElementChild.id = "tenderSpecs["+(tenderCount-1)+"].cardToken";
	        cells[i].firstElementChild.name = "tenderSpecs["+(tenderCount-1)+"].cardToken";
	    } else if (cells[i].firstElementChild.id.indexOf("cardType") != -1) {
	        cells[i].firstElementChild.id = "tenderSpecs["+(tenderCount-1)+"].cardType";
	        cells[i].firstElementChild.name = "tenderSpecs["+(tenderCount-1)+"].cardType";
	    }  else if (cells[i].firstElementChild.id.indexOf("cardSubType") != -1) {
           cells[i].firstElementChild.id = "tenderSpecs["+(tenderCount-1)+"].cardSubType";
           cells[i].firstElementChild.name = "tenderSpecs["+(tenderCount-1)+"].cardSubType";
        } else if (cells[i].firstElementChild.id.indexOf("tenderCode") != -1) {
            cells[i].firstElementChild.id = "tenderSpecs["+(tenderCount-1)+"].tenderCode";
            cells[i].firstElementChild.name = "tenderSpecs["+(tenderCount-1)+"].tenderCode";
        }
     }
	cells = newNode2.cells;
    for (var i=0; i<cells.length; i++) {
        if (cells[i].firstElementChild.id.indexOf("preLockNumber") != -1) {
            cells[i].firstElementChild.id   = "tenderSpecs["+(tenderCount-1)+"].preLockNumber";
            cells[i].firstElementChild.name = "tenderSpecs["+(tenderCount-1)+"].preLockNumber";
        } else if (cells[i].firstElementChild.id.indexOf("preLockAmount") != -1) {
            cells[i].firstElementChild.id   = "tenderSpecs["+(tenderCount-1)+"].preLockAmount";
            cells[i].firstElementChild.name = "tenderSpecs["+(tenderCount-1)+"].preLockAmount";
        }  else if (cells[i].firstElementChild.id.indexOf("amount") != -1) {
           cells[i].firstElementChild.id   = "tenderSpecs["+(tenderCount-1)+"].amount";
           cells[i].firstElementChild.name = "tenderSpecs["+(tenderCount-1)+"].amount";
        } else if (cells[i].firstElementChild.id.indexOf("precision") != -1) {
            cells[i].firstElementChild.id   = "tenderSpecs["+(tenderCount-1)+"].precision";
            cells[i].firstElementChild.name = "tenderSpecs["+(tenderCount-1)+"].precision";
        } else if (cells[i].firstElementChild.id.indexOf("purchaseOrderNumber") != -1) {
            cells[i].firstElementChild.id   = "tenderSpecs["+(tenderCount-1)+"].purchaseOrderNumber";
            cells[i].firstElementChild.name = "tenderSpecs["+(tenderCount-1)+"].purchaseOrderNumber";
        } else if (cells[i].firstElementChild.id.indexOf("custLookup") != -1) {
            cells[i].firstElementChild.id   = "tenderSpecs["+(tenderCount-1)+"].custLookup";
            cells[i].firstElementChild.name = "tenderSpecs["+(tenderCount-1)+"].custLookup";
        } 
     }
    tblBody.appendChild(newNode);
	tblBody.appendChild(newNode2);
}
function addCouponRow(tblId)
{
	 if (browserIsIE()) {
		  alert("Please use Firefox or Chrome, this function currently broken in IE");
		  return;
	  }
  var tblBody = document.getElementById(tblId).tBodies[0];
  var newNode = tblBody.rows[0].cloneNode(true);
  var couponCount = parseInt(document.getElementById("couponCount").value);
  couponCount++;
  document.getElementById("couponCount").value = couponCount;
  var cells = newNode.cells;
  for (var i=0; i<cells.length; i++) {
     if (cells[i].firstElementChild.id.indexOf("couponNumber") != -1) {
         cells[i].firstElementChild.id = "couponSpecs["+(couponCount-1)+"].couponNumber";
         cells[i].firstElementChild.name = "couponSpecs["+(couponCount-1)+"].couponNumber";
     }
  } 
 tblBody.appendChild(newNode);
}

function addDiscountRow(tblId)
{
	 if (browserIsIE()) {
		  alert("Please use Firefox or Chrome, this function currently broken in IE");
		  return;
	  }
  var tblBody = document.getElementById(tblId).tBodies[0];
  var newNode = tblBody.rows[0].cloneNode(true);
  var count = parseInt(document.getElementById("discountCount").value);
  count++;
  document.getElementById("discountCount").value = count;
  var cells = newNode.cells;
  for (var i=0; i<cells.length; i++) {
      if (cells[i].firstElementChild.id.indexOf("discountCode") != -1) {
          cells[i].firstElementChild.id = "discountSpecs["+(count-1)+"].discountCode";
          cells[i].firstElementChild.name = "discountSpecs["+(count-1)+"].discountCode";
      } else if (cells[i].firstElementChild.id.indexOf("amount") != -1) {
          cells[i].firstElementChild.id = "discountSpecs["+(count-1)+"].amount";
          cells[i].firstElementChild.name = "discountSpecs["+(count-1)+"].amount";
      } else if (cells[i].firstElementChild.id.indexOf("precision") != -1) {
          cells[i].firstElementChild.id = "discountSpecs["+(count-1)+"].precision";
          cells[i].firstElementChild.name = "discountSpecs["+(count-1)+"].precision";
      }
  }
  tblBody.appendChild(newNode);
}