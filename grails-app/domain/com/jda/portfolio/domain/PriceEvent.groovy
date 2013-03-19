package com.jda.portfolio.domain

class PriceEvent {

	String name
	Integer eventNumber
	Integer priority	
	List multipleQuantityPrices

    static constraints = {
    }

    String toString () {
    	return name
    }
}
