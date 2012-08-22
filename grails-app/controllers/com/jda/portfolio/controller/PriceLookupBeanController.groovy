package com.jda.portfolio.controller

import com.jda.portfolio.domain.PriceLookupBean

class PriceLookupBeanController {
    
    def priceLookupService

    def index = { redirect(action:lookup,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def lookup = {
	    render(view:"lookup")
    }
      
    def pricelookup = {

        if (params.skus instanceof java.lang.String) {
            def skuList = []
            skuList += params.skus
            params.skus = skuList
        }
        if (params.discounts instanceof java.lang.String) {
            def discountList = []
            discountList += params.discounts
            params.discounts = discountList
        }

        // set the msg datetime internally
        params.msgDateTime = new Date()  

        def priceLookupBean = new PriceLookupBean()
        priceLookupBean.properties = params

        priceLookupBean.skus = params.skus.toList()
        priceLookupBean.discounts = params.discounts.toList()

        params.XMLRequest  = priceLookupService.getPriceLookupXML(priceLookupBean)
        params.XMLResponse = priceLookupService.priceLookup(priceLookupBean)

        render (view:"show", model:params)
    }


    def show = {
        def priceLookupBeanInstance = PriceLookupBean.get( params.id )

        if(!priceLookupBeanInstance) {
            flash.message = "PriceLookupBean not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ priceLookupBeanInstance : priceLookupBeanInstance ] }
    }


}
