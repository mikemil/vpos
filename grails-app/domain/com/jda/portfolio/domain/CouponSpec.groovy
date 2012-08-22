package com.jda.portfolio.domain

class CouponSpec {

    static constraints = {
       	couponNumber(blank:false)		
    }
	
    String couponNumber
    
    String toString() {
        "couponNumber:" + couponNumber
    }

	
}
