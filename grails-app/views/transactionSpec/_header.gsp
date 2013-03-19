<fieldset>
	<legend>Header</legend>
		<div class="row-fluid">
			<div class="span3">
				<div class="control-group">
					<label class="control-label" for="transClassName">Trans Class Name:*</label>
					<div class="controls">
						<input type="text" id="transClassName" name="transClassName" size="60" required />
					</div>	
				</div>
			</div>
				
			<div class="span3">
				<div class="control-group">
					<label class="control-label" for="locationNumber">Location Number:*</label>
					<input type="text" id="locationNumber"	name="locationNumber" value="${transactionSpecInstance?.locationNumber}" required />
				</div>
			</div>
			
			<div class="span3">
				<div class="control-group">
					<label class="control-label" for="terminalName">Terminal Name:*</label>
					<div class="controls">
						<input type="text" id="terminalName" name="terminalName" value="${transactionSpecInstance?.terminalName}" required />
					</div>	
				</div>		
			</div>
		</div>
			
		<div class="row-fluid">	
		
			<div class="span3">
				<div class="control-group">
					<label class="control-label" for="training">Training:</label>
					<div class="control">
						<g:checkBox name="training"	value="${transactionSpecInstance?.training}" />
					</div>
				</div>
			</div>
			
			<div class="span3">
				<div class="control-group">
					<label class="control-label" for="currencyCode">Currency Code:</label>
					<div class="control">
						<input type="text" id="currencyCode" name="currencyCode" value="${transactionSpecInstance?.currencyCode}" />
					</div>	
				</div>		
			</div>			
						
			<div class="span3">
				<div class="control-group">
					<label class="control-label" for="associateNumber">Associate Number:*</label>
					<div class="control">
						<input type="text" id="associateSpecassociateNumber" name="associateSpec.associateNumber"	
							value="${transactionSpecInstance?.associateSpec?.associateNumber}" required />
					</div>
				</div>
			</div>
			
		</div>	
		
		<div class="row-fluid">

			<div class="span3">
				<div class="control-group">
					<label class="control-label" for="customerSpec">Customer Number:</label>
					<div class="controls">
						<input type="text" id="customerSpec.customerNumber"	name="customerSpec.customerNumber"
							value="${transactionSpecInstance?.customerSpec?.customerNumber}" />
					</div>
				</div>	
			</div>		
					
			<div class="span3">
				<div class="control-group">
					<label class="control-label" for="customerSpec">Tax Exempt Number:</label>
					<div class="control">
						<input type="text" id="customerSpec.taxExemptNumber"
							name="customerSpec.taxExemptNumber"
							value="${transactionSpecInstance?.customerSpec?.taxExemptNumber}" />
					</div>
				</div>
			</div>
			
			<div class="span3">
				<div class="control-group">
					<label class="control-label" for="suspend">Suspend:</label>
					<g:checkBox name="suspend"
						value="${transactionSpecInstance?.suspend}" />
				</div>
			</div>
		</div>
</fieldset>

