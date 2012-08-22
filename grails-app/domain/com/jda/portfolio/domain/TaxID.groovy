package com.jda.portfolio.domain

class TaxID {

    static constraints = {
       	num(blank:false)
       	type(blank:false)
    }
	
    String num
    String type
    
    String toString() {
        "taxid num:" + num + " type: " + type
    }

	
}
