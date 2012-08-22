package com.jda.portfolio.domain

import org.apache.commons.collections.FactoryUtils
import org.apache.commons.collections.list.LazyList

class TransactionSpec {

    static constraints = {
        transClassName(blank:false)
        locationNumber(blank:false)
        terminalName(blank:false)
        training()
        currencyCode()
        associateSpec(nullable:true)
        customerSpec(nullable:true)
    }
	
    String transClassName
    String locationNumber
    String currencyCode
    AssociateSpec associateSpec
    String terminalName
    CustomerSpec customerSpec
    boolean training
	boolean suspend
    
    List<LineItemSpec> lineItemSpecs = LazyList.decorate(new ArrayList(), 
            FactoryUtils.instantiateFactory(LineItemSpec.class))
    List<CouponSpec> couponSpecs = LazyList.decorate(new ArrayList(),
            FactoryUtils.instantiateFactory(CouponSpec.class))
    List<DiscountSpec> discountSpecs = LazyList.decorate(new ArrayList(),
            FactoryUtils.instantiateFactory(DiscountSpec.class))
    List<TenderSpec> tenderSpecs = LazyList.decorate(new ArrayList(),
            FactoryUtils.instantiateFactory(TenderSpec.class))
    
    String toString() {
        " transClassName:" + transClassName + " locationNumber:" + locationNumber + " terminal:"+terminalName 
        //+ " currencyCode:" + currencyCode? + " AssociateSpec: " + associateSpec? +
        //+ " customerSpec:" + customerSpec? + " lineItemSpecs:" + lineItemSpecs
        
    }

}
