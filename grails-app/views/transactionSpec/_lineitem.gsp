<g:hiddenField name="itemCount" value="1" />
<fieldset>
	<legend>Line Items</legend>
	<table id="lineitemtable" class="table table-condensed">
		<thead>
			<tr>
				<input type="button" class="btn" onClick="addItemRow('lineitemtable');"	value="Add Item" />
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><label for="sku">SKU:*</label></td>
				<td><input type="text" id="lineItemSpecs[0].sku"
					name="lineItemSpecs[0].sku"
					value="${transactionSpecInstance?.lineItemSpecs?.sku}" /></td>

				<td><label for="quantity">Quantity:*</label></td>
				<td><input type="text" id="lineItemSpecs[0].quantity"
					name="lineItemSpecs[0].quantity"
					value="${transactionSpecInstance?.lineItemSpecs?.quantity}" /></td>

				<td><label for="overrideReasonCode">Reason:</label></td>
				<td>
					<g:select name="lineItemSpecs[0].overrideReasonCode"
						id="lineItemSpecs[0].overrideReasonCode" from="${reasonCodes}"
						noSelection="['':'--Choose a reason--']" optionKey="reasonCode" />

				</td>

				<td><label for="overridePrice">Price:</label></td>
				<td><input type="text" id="lineItemSpecs[0].overridePrice"
					name="lineItemSpecs[0].overridePrice" /></td>

				<td><label for="pricePrecision">Precision:</label></td>
				<td><input type="text" 
					id="lineItemSpecs[0].pricePrecision"
					name="lineItemSpecs[0].pricePrecision" /></td>

				<td><label for="overrideAssociateNumber">Assoc. #:</label></td>
				<td><input type="text" 
					id="lineItemSpecs[0].overrideAssociateNumber"
					name="lineItemSpecs[0].overrideAssociateNumber" /></td>

			</tr>
		</tbody>
	</table>
</fieldset>
<br />