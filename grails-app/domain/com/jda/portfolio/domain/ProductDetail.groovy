package com.jda.portfolio.domain

class ProductDetail {

	String sku
	String description
	Integer price
	List<PriceDeal> priceDeals

    static constraints = {
    }

    Integer getPriceValue() {
        price ? (price / 100) : 0;
    }

    String toString() {
    	return 'sku: '+ sku + ' description: '+description
    }
}
