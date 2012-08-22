package com.jda.portfolio.domain

class Configuration {

    static TYPE_LOOKUP = new Integer(1)
    static TYPE_TXN_CREATE = new Integer(2)

    static constraints = {
        protocol(blank:false)
        server(blank:false)
        port(blank:false)
        context(blank:false)
        url(blank:false)
    }

    String protocol
    String server
    String port
    String context
    String url
    Integer type

    
    String toString() {
        protocol + server + ":" + port + context + url
    }



}
