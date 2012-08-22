<g:hiddenField name="couponCount" value="1" />
<a title="Coupons" href="javascript:toggleDisplay('coupondiv')"><img border="0" src="../images/plus.png" id=imagePM>Coupons</a>
                <br/>
                <div style="display:none;" id="coupondiv">
                    <fieldset>
                    <legend>Coupons</legend>
                    <table id="coupontable" class="table table-condensed">
                        <thead>
                             <tr colspan=2><input type="button" class="btn" onClick="addCouponRow('coupontable');" value="Add Coupon"/></tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <label for="couponNumber">Coupon Number:</label>
                                </td>
                                <td>
                                    <input type="text" id="couponSpecs[0].couponNumber" name="couponSpecs[0].couponNumber" value="${transactionSpecInstance?.couponSpecs?.couponNumber}"/>
                                </td>
                            </tr> 
                        </tbody>
                    </table>
                    </fieldset>
                </div>
                <br/>