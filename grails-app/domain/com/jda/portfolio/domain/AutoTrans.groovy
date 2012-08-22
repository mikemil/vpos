package com.jda.portfolio.domain

class AutoTrans {

    static constraints = {
    }
	
    String multiChannelSaleAck
    String calculationStats
    String maskedIdentNumber
    String encodedIdentNumber
    String identType
    boolean seqNumRolledOver
    long transTypeId
    int status
    Date startDateTime
    Date endDateTime
    boolean training
    Date businessDate
    Date postingDateTime
    long sequenceNumber
    
    String toString() {
        "seqNum:" + sequenceNumber
    }

	
}
