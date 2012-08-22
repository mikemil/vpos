 <g:hiddenField name="discountCount" value="1" />
<a title="Discounts" href="javascript:toggleDisplay('discountdiv')"><img border="0" src="../images/plus.png" id=imagePM>Discounts</a>
                <br/>
                <div style="display:none;" id="discountdiv">
                    <fieldset>
                    <legend>Discounts</legend>
                    <table id="discounttable" class="table table-condensed">
                        <thead>
                            <tr colspan="2"><input type="button" class="btn" onClick="addDiscountRow('discounttable');" value="Add Discount"/></tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <label for="discountCode">Discount Code:</label>
                                </td>
                                <td>
                                    <input type="text" id="discountSpecs[0].discountCode" name="discountSpecs[0].discountCode" value="${transactionSpecInstance?.discountSpecs?.discountCode}"/>
                                </td>
                                <td>
                                    <label for="amount">Amount:</label>
                                </td>
                                <td>
                                    <input type="text" id="discountSpecs[0].amount" name="discountSpecs[0].amount" value="${transactionSpecInstance?.discountSpecs?.amount}"/>
                                </td>
                                <td>
                                    <label for="precision">Precision:</label>
                                </td>
                                <td>
                                    <input type="text" id="discountSpecs[0].precision" name="discountSpecs[0].precision" value="${transactionSpecInstance?.discountSpecs?.precision}"/>
                                </td>
                            </tr> 
                        </tbody>
                    </table>
                    </fieldset>
                </div>
