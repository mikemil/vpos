package com.jda.portfolio.domain

class OverrideReasonCode {
	
	static constraints = {
		reasonCode(blank:false)
		description(blank:false)
	}
	
	String reasonCode
	String description
    
    String toString() {
		description
    }
    
}
