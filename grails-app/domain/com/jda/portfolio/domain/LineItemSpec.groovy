package com.jda.portfolio.domain

class LineItemSpec {

    static constraints = {
       	sku(blank:false)
       	quantity(blank:false)
    }
    
	String sku
	String overrideReasonCode
	long quantity
	long overridePrice
	int pricePrecision
	String overrideAssociateNumber
    
	List<DiscountSpec> discountSpecs
	
    String toString() {
        "sku:" + sku + " qty:" + quantity + " overridePrice:" + overridePrice;
    }

	
}
