<g:hiddenField name="couponCount" value="1" />
<a title="Coupons" href="javascript:toggleDisplay('coupondiv')"><img border="0" src="../images/plus.png" id="imagePM">Coupons</a>
                <br/>
                <div style="display:none;" id="coupondiv">
                    <fieldset>
                        <legend>Coupons</legend>
                        <div id="coupontable" class="table table-condensed">
                            
                            <div classl="row-fluid">
                                <div classl="span4">
                                    <div class="control-group">
                                        <div class="controls">
                                            <input id="couponBtn" type="button" class="btn btn-info" value="Add Coupon"/></tr>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div id="coupon0" class="row-fluid coupon">
                                <div classl="span4">
                                    <div class="control-group">
                                        <label  class="control-label" for="couponNumber">Coupon Number:</label>
                                        <div class="controls">
                                            <input type="text" id="couponSpecs-couponNumber-0" name="couponSpecs[0].couponNumber" value="${transactionSpecInstance?.couponSpecs?.couponNumber}"/>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </fieldset>
                </div>
                <br/>