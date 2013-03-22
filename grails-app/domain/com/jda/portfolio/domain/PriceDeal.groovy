package com.jda.portfolio.domain

class PriceDeal {

	String dealType
	String effectiveDate
	String eventName
	String eventNumber
	String priceType
	String priceValue
	String buyDescription
	String buyOrder
	String buyQty
	String getDescription
	String getOrder
	String getQty
	String limitQty
	String qualifier
	String getter

	String toString() {
		'eventName: '+eventName+' eventNumber: '+eventNumber+' effectiveDate: '+effectiveDate+' dealType: '+dealType
	}

	Integer getPriceValueAmt() {
		priceValue ?  new Float(priceValue).intValue() : 0
	}

}