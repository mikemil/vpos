<g:hiddenField name="itemCount" value="1" />
<fieldset>
	<legend>Line Items</legend>
	<div id="lineitems">
		<div class="row-fluid">
			<div class="span3">
				<button class="btn btn-info cloneLineItem">Add Item</button>
			</div>
		</div>
		<div id="lineItem0" class="lineitem">
			<div class="row-fluid">
				<div class="span3">
					<label for="sku">SKU:*</label>
					<input type="text" id="lineItemSpecs-sku-0"
						name="lineItemSpecs[0].sku" required
						value="${transactionSpecInstance?.lineItemSpecs?.sku}" />	
				</div>	
						
				<div class="span3">	
						<label for="quantity">Quantity:*</label>	
						<input type="text" id="lineItemSpecs-quantity-0"	
							name="lineItemSpecs[0].quantity" required	
							value="${transactionSpecInstance?.lineItemSpecs?.quantity}" />	
				</div>	
							
				<div class="span3">	
						<label for="overrideReasonCode">Reason:</label>
						<g:select name=	"lineItemSpecs[0].overrideReasonCode"
							id="lineItemSpecs-overrideReasonCode-0" from="${reasonCodes}"
								noSelection	="['':'--Choose a reason--']" optionKey="reasonCode"	 />	
				</div>
			</div>
			
			<div class="row-fluid">
				<div class="span3">
						<label for="overridePrice">Price:</label>
						<input type="text" id="lineItemSpecs-overridePrice-0"
							name="lineItemSpecs[0].overridePrice" />
				</div>
	
				<div class="span3">
							<label for="pricePrecision">Precision:</label>
							<input type="text" 
								id="lineItemSpecs-pricePrecision-0"
								name="lineItemSpecs[0].pricePrecision" />
				</div>
	
				<div class="span3">
							<label for="overrideAssociateNumber">Assoc. #:</label>
							<input type="text" 
								id="lineItemSpecs-overrideAssociateNumber-0"
								name="lineItemSpecs[0].overrideAssociateNumber" />
				</div>
			</div>
		</div>
	</div>
</fieldset>
<br />