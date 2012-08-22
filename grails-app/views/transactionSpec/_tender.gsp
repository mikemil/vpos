 <g:hiddenField name="tenderCount" value="1" />
<fieldset>
<legend>Tenders</legend>
              <table id="tendertable" class="table table-condensed">
                  <thead>
                       <tr><input type="button" class="btn" onClick="addTenderRow('tendertable');" value="Add Tender"/></tr>
                  </thead>
                  <tbody>
                      <tr>
                          <td>
                              <label for="tenderCode">Code:*</label>
                          </td>
                          <td>
                              <input type="text" size=5  id="tenderSpecs[0].tenderCode" name="tenderSpecs[0].tenderCode" value="${transactionSpecInstance?.tenderSpecs?.tenderCode}"/>
                          </td>
		
	                      <td>
                              <label for="cardToken">Card Token#:*</label>
                          </td>
                          <td>
                              <input type="text" size=5  id="tenderSpecs[0].cardToken" name="tenderSpecs[0].cardToken" value="${transactionSpecInstance?.tenderSpecs?.cardToken}"/>
                          </td>
		
		                  <td>
                              <label for="cardType">CardType:*</label>
                          </td>
                          <td>
                              <!-- <input type="text" size=5  id="tenderSpecs[0].cardType" name="tenderSpecs[0].cardType" value="${transactionSpecInstance?.tenderSpecs?.cardType}"/> -->
                 			<g:select name="tenderSpecs[0].cardType" from="${[0, 100, 200, 300, 400, 500, 600,700, 800]}"/>
                          </td>
		
	                    	<td>
                              <label for="cardSubType">CardSubType:*</label>
                          </td>
                          <td>
                              <!--<input type="text" size=5  id="tenderSpecs[0].cardSubType" name="tenderSpecs[0].cardSubType" value="${transactionSpecInstance?.tenderSpecs?.cardSubType}"/>-->
			<g:select name="tenderSpecs[0].cardSubType" from="${[0, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 2001, 2002, 2003, 3001, 4001, 5001, 6001, 6002, 7001, 7002, 7003, 8001]}"/>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <label for="preLockNumber">PreLock #:</label>
                          </td>
                          <td>
                              <input type="text" size=5  id="tenderSpecs[0].preLockNumber" name="tenderSpecs[0].preLockNumber" value="${transactionSpecInstance?.tenderSpecs?.preLockNumber}"/>
                          </td>
                      
                          <td>
                              <label for="preLockAmount">PreLock Amt:</label>
                          </td>
                          <td>
                              <input type="text" size=5  id="tenderSpecs[0].preLockAmount" name="tenderSpecs[0].preLockAmount" value="${transactionSpecInstance?.tenderSpecs?.preLockAmount}"/>
                          </td>
                  
                          <td>
                              <label for="amount">Amount:</label>
                          </td>
                          <td>
                              <input type="text" size=5  id="tenderSpecs[0].amount" name="tenderSpecs[0].amount" value="${transactionSpecInstance?.tenderSpecs?.amount}"/>
                          </td>
                          <td>
                              <label for="precision">Precision:</label>
                          </td>
                          <td>
                              <input type="text" size=5  id="tenderSpecs[0].precision" name="tenderSpecs[0].precision" value="${transactionSpecInstance?.tenderSpecs?.precision}"/>
                          </td>
                          <td>
                              <label for="PONumber">PO Number:</label>
                          </td>
                          <td>
                              <input type="text" size=5  id="tenderSpecs[0].purchaseOrderNumber" name="tenderSpecs[0].purchaseOrderNumber" value="${transactionSpecInstance?.tenderSpecs?.purchaseOrderNumber}"/>
                          </td>
                          <td>
                              <label for="custLookup">Customer Lookup:</label>
                          </td>
                          <td>
                              <g:checkBox name="tenderSpecs[0].custLookup" />
                          </td>
                      </tr> 
                  </tbody>
              </table>
</fieldset>                    
<br/>