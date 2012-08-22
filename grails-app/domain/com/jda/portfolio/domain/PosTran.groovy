package com.jda.portfolio.domain

class PosTran {

    static constraints = {
       	storeID(size:1..4, blank:false, range:1..9999)
       	regID(blank:false, size:1..4, range:20..30)
       	sequence(blank:false, range:1..9999)
       	priceOverride(blank:false)
       	employeeID(size:1..4, blank:false, range:1..9999)
    }
	
    String storeID
    String regID
    String sequence
    Date timeStamp
    String priceOverride
    int employeeID
    
    List<SaleItem> items
    List<Discount> discounts
    
    String toString() {
        "storeID:" + storeID + " regID: " + regID +
        " sequence: " + sequence + " date/time: " + timeStamp 
        " priceOverride: " + priceOverride + " employeeID: " + employeeID
    }

	
}
