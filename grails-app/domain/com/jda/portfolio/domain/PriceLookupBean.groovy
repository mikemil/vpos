package com.jda.portfolio.domain

class PriceLookupBean {

    static constraints = {
       	storeId(size:1..4, blank:false, range:1..9999)
       	registerId(blank:false, size:1..4 )
       	msgSequence(blank:false, range:1..9999)		
    }
	
    String storeId
    String registerId
    String msgSequence
    Date msgDateTime
    
    List skus
    List discounts
    

    String toString() {
        "storeId:" + storeId + " registerId: " + registerId +
        " sequence: " + msgSequence + " date/time: " + msgDateTime +
        " skus: " + skus + " discounts: " + discounts
    }

	
}
