package com.jda.portfolio.domain

class SaleItem {

    static constraints = {
       	SKU(blank:false)
       	itemQty(blank:false, size:1..4)
    }
	
    String SKU
    int itemQty

    String toString() {
        "sku:"+SKU+" qty:"+itemQty
    }
	
}
