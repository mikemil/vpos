package com.jda.portfolio.service

import com.jda.portfolio.domain.Configuration
import com.jda.portfolio.domain.PriceLookupBean

import groovyx.net.http.RESTClient
import groovyx.net.http.HTTPBuilder
import static groovyx.net.http.ContentType.XML
import static groovyx.net.http.ContentType.TEXT
import static groovyx.net.http.Method.PUT

class PriceLookupService {
    boolean transactional = false

    def getPriceLookupXML(PriceLookupBean lookupBean) {

        def writer = new StringWriter()
        def builder = new groovy.xml.MarkupBuilder(writer)
        builder.pricelookup {
           delegate.storeId lookupBean.storeId
           delegate.registerId lookupBean.registerId
           delegate.msgSequence lookupBean.msgSequence
           delegate.msgDateTime lookupBean.msgDateTime
           skus {
              for(x in lookupBean.skus)
                sku(x)
           }
           discounts {
              for(y in lookupBean.discounts)
                discount(y)
           }
        }
        writer.toString()
    }

    def priceLookup(PriceLookupBean lookupBean) {

        def conf = Configuration.get(1)
        
        if (conf != null) {
           def ppos = new HTTPBuilder( conf.protocol+"//"+conf.server+":"+conf.port, TEXT )
           ppos.headers.Accept = 'application/xml'
           
           try {
           
             ppos.request( PUT ) {
                   uri.path = conf.context + conf.url
                   headers = [Accept:'application/xml']
                   send( XML ) {
                       pricelookup {
                           delegate.storeId lookupBean.storeId
                           delegate.registerId lookupBean.registerId
                           delegate.msgSequence lookupBean.msgSequence
                           delegate.msgDateTime lookupBean.msgDateTime
                           skus {
                              for(x in lookupBean.skus)
                                  sku(x)
                           }
                           discounts {
                              for(y in lookupBean.discounts)
                                  discount(y)
                           }
                       }
                   }
                 
                   response.success = { resp, reader ->
                         return reader.text
                         //def strXml = reader.text
                         //println strXml
                         //return strXml
                   }
                   
                   response.failure = { resp ->
                      println 'request failed'
                      return 'Response status='+resp.status
                   }
             }
           } catch(Exception e) {
               log.error("Caught exception:", e)
               return e.toString()
           }
        }
    }

    def priceLookupUsingRESTClient(PriceLookupBean lookupBean) {

        def conf = Configuration.get(1)
        
        if (conf != null) {

           def ppos = new RESTClient( conf.protocol+"//"+conf.server+":"+conf.port)

           def resp = ppos.put( path: conf.context + conf.url, 
                                contentType:TEXT,
                                headers : [Accept : 'application/xml'],
                                //contentType:XML,
                                requestContentType: XML,
                                body: {
                                   pricelookup {
                                       delegate.storeId lookupBean.storeId
                                       delegate.registerId lookupBean.registerId
                                       delegate.msgSequence lookupBean.msgSequence
                                       delegate.msgDateTime lookupBean.msgDateTime
                                       skus {
                                          for(x in lookupBean.skus)
                                             sku(x)
                                       }
                                       discounts {
                                          for(y in lookupBean.discounts)
                                              discount(y)
                                       }
                                   }
                                }
                              )

           println "Status="+resp.status
           if (resp.status == 200) {
               println resp.data.getClass().getName()
               
               if (resp.data.ready()) 
                  println resp.data.text
               else
                  println "InputStream not ready!!!"
           }

        }

    }
}