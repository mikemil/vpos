<fieldset>
<legend>Tenders</legend>
    <div id="tenders">
		<div class="row-fluid">
        	<div class="span4">
				<button id="btnTenderClone" class="btn btn-info">Add Tender</button>
			</div>
        </div>
        <div id="tender0" class="tender">
		    <div class="row-fluid">
			    <div class="span4">
			    	<div class="control-group">
			    		<label class="control-label" for="tenderCode">Code:*</label>
			    		<input type="text" size=5  id="tenderSpecs-tenderCode-0" name="tenderSpecs[0].tenderCode" value="${transactionSpecInstance?.tenderSpecs?.tenderCode}"     required />    
			    	</div>    
			    </div>    
		    
		    	<div class="span4">
		    	   	<div class="control-group">
		    	   		<label class="control-label" for="cardToken">Card Token#:*</label>
		    	   		<input type="text" size=5  id="tenderSpecs-cardToken-0" name="tenderSpecs[0].cardToken" value="${transactionSpecInstance?.tenderSpecs?.cardToken}"     required />    
			    	</div>    
			    </div>    
	    
	    		<div class="span4">
	    		  	<div class="control-group">
	    		   		<label class="control-label" for="cardType">CardType:*</label>
	    		   		<g:select id="tenderSpecs-cardType-0" name="tenderSpecs[0].cardType" from="${[0, 100, 200, 300, 400, 500, 600,700, 800]}"/>    
			    </div>
			</div>
		    
		    <div class="row-fluid">
			    <div class="span4">
			    	<div class="control-group">
			    		<label class="control-label" for="cardSubType">CardSubType:*</label>
			    		<g:select id="tenderSpecs-cardSubType-0" name="tenderSpecs[0].cardSubType" from="${[0, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 2001, 2002, 2003, 3001, 4001, 5001, 6001, 6002, 7001, 7002, 7003, 8001]}"/>    
			    	</div>    
			    </div>	    	    
			    		    
			    <div class="span4">    
			    	<div class="control-group">    
                            <label class="control-label" class="control-label" for="preLockNumber">PreLock #:</label>    
			    		<div class="controls">    
                            <input type="text" size="5"  id="tenderSpecs-preLockNumber-0" 
                            name="tenderSpecs[0].preLockNumber" value="${transactionSpecInstance?.tenderSpecs?.preLockNumber}"/>    
                        </div>    
			    	</div>    
			    </div>    
			    
			    <div class="span4">
			    	<div class="control-group">
                        <label class="control-label" for="preLockAmount">PreLock Amt:</label>
			    		<div class="controls">
                            <input type="text" size=5  id="tenderSpecs-preLockAmount-0" name="tenderSpecs[0].preLockAmount" value="${transactionSpecInstance?.tenderSpecs?.preLockAmount}"/>    
                        </div>    
   			    	</div>
			    </div>
		    </div> 
    
    		<div class="row-fluid">
	            <div class="span4">
					<div class="control-group">
        	            <label class="control-label" for="amount">Amount:</label>
						<div class="controls">
							<input type="text" size=5  id="tenderSpecs-amount-0" 
							  name="tenderSpecs[0].amount" 
							  value="${transactionSpecInstance?.tenderSpecs?.amount}"/>
						</div>
                	</div>
				</div>	  
						  
            	<div class="span4">
					<div class="control-group">              
						<label class="control-label" for="precision">Precision:</label>
						<div class="controls">
               	         	<input type="text" size=5  id="tenderSpecs-precision-0" 
               	          		name="tenderSpecs[0].precision" 
               	          		value="${transactionSpecInstance?.tenderSpecs?.precision}"/>
               	    	</div>
					</div>		  
				</div>
			
	            <div class="span4">
					<div class="control-group">
        	            <label class="control-label" for="PONumber">PO Number:</label>
						<div class="controls">
							<input type="text" size=5  id="tenderSpecs-purchaseOrderNumber-0" 
							  name="tenderSpecs[0].purchaseOrderNumber" 
							  value="${transactionSpecInstance?.tenderSpecs?.purchaseOrderNumber}"/>
                 	    </div>
					</div>		  
				</div> 
    		</div>
    
		    <div class="row-fluid">
            	<div class="span4">
					<div class="control-group">
                   		<label class="control-label" for="custLookup">Customer Lookup:</label>
						<div class="controls">
                        	<g:checkBox id="tenderSpecs-custLookup-0" name="tenderSpecs[0].custLookup" />
	                    </div>
					</div>
				</div>
			</div>	
		</div>
	</div>
</fieldset>                    
<br/>
