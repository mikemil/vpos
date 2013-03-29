package com.jda.portfolio.domain

class ProductDetail {

	String sku
	String description
	Integer price
    //Byte[] productImage
    String productImage
	List<PriceDeal> priceDeals

    static constraints = {
    }

    Integer getPriceValue() {
        price ? (price / 100) : 0;
    }

//	String imageByteString() {
//		StringBuffer sb = new StringBuffer()
//		productImage.eachByte { sb.append(it) }
//		return sb.toString()
//	}
//	
    String toString() {
    	return 'sku: '+ sku + ' description: '+description
    }
}
