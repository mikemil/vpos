package com.jda.portfolio.domain

class Version {
	
	static constraints = {
		versionId(blank:false)
		description(blank:false)
	}
	
	String versionId
	String description
}
