package com.jda.portfolio.domain

class DiscountSpec {

    static constraints = {
       	discountCode(blank:false)
       	amount(blank:false)
       	precision(blank:false)
    }
	
    String discountCode
    long amount
    int precision
    
    String toString() {
        "discount code:" + discountCode + " amount:" + amount + " precision:" + precision
    }

	
}
