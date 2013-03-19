package com.jda.portfolio.domain

class ProductDetail {

	String sku
	String description
	Integer price
	List<PriceEvent> priceEvents

    static constraints = {
    }

    void createDummyPriceEvents() {
    	priceEvents = []
    	priceEvents << new PriceEvent(name:'Regular Price', eventNumber:'123', priority:2)
        def pe2 = new PriceEvent(name:'Contractor', eventNumber:'234', priority:3)
    	priceEvents << pe2

        def mqps = []
        mqps << new MultipleQuantityPrice(threshold:6, priceValue: 2599, pricePrecision:2)
        mqps << new MultipleQuantityPrice(threshold:4, priceValue: 2799, pricePrecision:2)
        mqps << new MultipleQuantityPrice(threshold:2, priceValue: 2999, pricePrecision:2)
        pe2.multipleQuantityPrices = mqps

        def pe3 = new PriceEvent(name:'Premium Contractor', eventNumber:'567', priority:99)
    	priceEvents << pe3

        def mqps2 = []
        mqps2 << new MultipleQuantityPrice(threshold:6, priceValue: 2199, pricePrecision:2)
        mqps2 << new MultipleQuantityPrice(threshold:4, priceValue: 2399, pricePrecision:2)
        mqps2 << new MultipleQuantityPrice(threshold:2, priceValue: 2599, pricePrecision:2)
        pe3.multipleQuantityPrices = mqps2        

    }

    String toString() {
    	return 'sku: '+ sku + ' description: '+description
    }
}
