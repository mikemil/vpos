<fieldset>
	<legend>Header</legend>
	<table class="table table-condensed">
		<tbody>
			<tr>
				<td><label for="transClassName">Trans Class Name:*</label></td>
				<td><input type="text" id="transClassName"
					name="transClassName" size="30" /></td>
				<td><label for="locationNumber">Location Number:*</label></td>
				<td><input type="text" id="locationNumber"
					name="locationNumber"
					value="${transactionSpecInstance?.locationNumber}" /></td>
			</tr>
			<tr>
				<td><label for="terminalName">Terminal Name:*</label></td>
				<td><input type="text" id="terminalName" name="terminalName"
					value="${transactionSpecInstance?.terminalName}" /></td>
				<td><label for="training">Training:</label></td>
				<td><g:checkBox name="training"
						value="${transactionSpecInstance?.training}" /></td>
			</tr>
			<tr>
				<td><label for="currencyCode">Currency Code:</label></td>
				<td><input type="text" id="currencyCode" name="currencyCode"
					value="${transactionSpecInstance?.currencyCode}" /></td>
				<td><label for="associateNumber">Associate Number:*</label></td>
				<td><input type="text" id="associateSpec.associateNumber"
					name="associateSpec.associateNumber"
					value="${transactionSpecInstance?.associateSpec?.associateNumber}" />
				</td>
			</tr>

			<tr>
				<td><label for="customerSpec">Customer Number:</label></td>
				<td><input type="text" id="customerSpec.customerNumber"
					name="customerSpec.customerNumber"
					value="${transactionSpecInstance?.customerSpec?.customerNumber}" />
				</td>

				<td><label for="customerSpec">Tax Exempt Number:</label></td>
				<td><input type="text" id="customerSpec.taxExemptNumber"
					name="customerSpec.taxExemptNumber"
					value="${transactionSpecInstance?.customerSpec?.taxExemptNumber}" />
				</td>
			</tr>

			<tr>
				<td><label for="suspend">Suspend:</label></td>
				<td><g:checkBox name="suspend"
						value="${transactionSpecInstance?.suspend}" /></td>
			</tr>
		</tbody>
	</table>
</fieldset>
<br />
