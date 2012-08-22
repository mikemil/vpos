package com.jda.portfolio.domain

class Discount {

    static constraints = {
        discountCode(blank:false)
    }
    
    String discountCode
    
    String toString() {
        "discount code:" + discountCode 
	}

    
}
