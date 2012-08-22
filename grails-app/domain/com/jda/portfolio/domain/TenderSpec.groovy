package com.jda.portfolio.domain

class TenderSpec {

    static constraints = {
       	tenderCode(blank:false)		
    }
	
    String tenderCode
    String cardToken
	Integer cardType
	Integer cardSubType
	String purchaseOrderNumber
    long preLockNumber
    long preLockAmount
    long amount
    int precision
	boolean custLookup
    
    String toString() {
        "tenderCode:" + tenderCode
    }

	
}
