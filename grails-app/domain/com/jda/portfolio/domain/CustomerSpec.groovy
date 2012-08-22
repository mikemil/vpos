package com.jda.portfolio.domain

class CustomerSpec {

    static constraints = {
       	customerNumber(blank:false)		
    }
	
    String customerNumber
    String taxExemptNumber
    
    String toString() {
        "customerNumber:" + customerNumber
    }

	
}
