package com.jda.portfolio.domain

class AssociateSpec {

    static constraints = {
       	associateNumber(blank:false)		
    }
	
    String associateNumber
    
    String toString() {
        "associateNumber:" + associateNumber
    }

	
}
