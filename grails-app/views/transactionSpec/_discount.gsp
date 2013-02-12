<a title="Discounts" href="javascript:toggleDisplay('discountdiv')"><img border="0" src="../images/plus.png" id=imagePM>Discounts</a>
    <div style="display:none;" id="discountdiv">
        <fieldset>
            <legend>Discounts</legend>
            <div id="discounttable">
                <div class="row-fluid">
					<div class="span4">
						<input id="discountBtn" type="button" class="btn btn-info" value="Add Discount"/>
					</div>
                </div>
				<div id="discount0" class="discount">		
					<div class="row-fluid">
						
						<div class="span4">
							<div class="control-group">
                           		<label class="control-label" for="discountCode">Discount Code:</label>
								<div class="controls">
									<input type="text" id="discountSpecs[0].discountCode" name="discountSpecs[0].discountCode" value="${transactionSpecInstance?.discountSpecs?.discountCode}"/>
								</div>
							</div>
						</div>	
							
						<div class="span4">
							<div class="control-group">							
            	                <label class="control-label" for="amount">Amount:</label>
								<div class="controls">							
									<input type="text" id="discountSpecs[0].amount" name="discountSpecs[0].amount" value="${transactionSpecInstance?.discountSpecs?.amount}"/>
								</div>
							</div>	
						</div>

						<div class="span4">
							<div class="control-group">														
                            	<label class="control-label" for="precision">Precision:</label>
								<div class="control-group">																
									<input type="text" id="discountSpecs[0].precision" name="discountSpecs[0].precision" value="${transactionSpecInstance?.discountSpecs?.precision}"/>
								</div>
							</div>
						</div>
					</div>		
                </div>
            </div>
        </fieldset>
    </div>
<br/>
