package com.jda.portfolio.domain

class SPCOtherTender {

    static constraints = {
        name(blank:false)
        track2(blank:false)
    }

    String name
    String track2
    String poNumber

    String toString() {
        "name: " + name + " track2: "+track2 + " poNumber: "+poNumber
    }

	
}
