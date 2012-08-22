package com.jda.portfolio.controller

import com.jda.portfolio.domain.Configuration
import com.jda.portfolio.domain.OverrideReasonCode
import com.jda.portfolio.domain.TransactionSpec


class TransactionSpecController {
	
	def PRICELOOKUP_CONFIG_ID = 2
	def TXNCREATE_CONFIG_ID   = 1
	
	def autoTransService
	
	def create = {
		['transactionSpecInstance': createSpec(), reasonCodes:OverrideReasonCode.list()]
	}
	
	def createLookup = {
		['transactionSpecInstance': createSpec(), reasonCodes:OverrideReasonCode.list()]
	}
	
	def createSpec() {
		return ['transactionSpecInstance': new TransactionSpec(params)]   
	}
	
	def txncreate = {
		def conf = Configuration.get(TXNCREATE_CONFIG_ID)
		if (conf != null) {
			def transactionSpecInstance = new TransactionSpec(params)
			postValidate(transactionSpecInstance)
			params.XMLRequest  = autoTransService.getXML(transactionSpecInstance)
			params.XMLResponse = autoTransService.autoService(transactionSpecInstance, conf, params.userid, params.pswd)
		}
		render (view:"show", model:params)
	}
	
	def pricelookup = {
		def conf = Configuration.get(PRICELOOKUP_CONFIG_ID)
		if (conf != null) {
			def transactionSpecInstance = new TransactionSpec(params)
			postValidate(transactionSpecInstance)
			params.XMLRequest  = autoTransService.getXML(transactionSpecInstance)
			params.XMLResponse = autoTransService.autoService(transactionSpecInstance, conf, params.userid, params.pswd)
		}
		render (view:"show", model:params)
	}
	
	def postValidate(transSpec)  {
		def removeList = []
		for ( coupon in transSpec.couponSpecs) {
			if (coupon.couponNumber == null || coupon.couponNumber.size() == 0)
				removeList.add(coupon)
		}
		if (!removeList.isEmpty()) 
			removeList.each { transSpec.couponSpecs.remove(it) }
		if (transSpec.couponSpecs.isEmpty())
			transSpec.couponSpecs = null;
		
		removeList.clear()
		for ( discount in transSpec.discountSpecs) {
			if ((discount.discountCode == null || discount.discountCode.size() == 0) &&
			discount.amount == 0 && discount.precision == 0)
				removeList.add(discount)
		}
		if (!removeList.isEmpty())
			removeList.each { transSpec.discountSpecs.remove(it) }
		if (transSpec.discountSpecs.isEmpty())
			transSpec.discountSpecs = null;    
		
		removeList.clear()
		for ( tender in transSpec.tenderSpecs) {
			//todo - check all fields or just a few to figure out 'empty' object
			if (tender.tenderCode == null || tender.tenderCode.size() == 0)
				removeList.add(tender)
		}
		if (!removeList.isEmpty())
			removeList.each { transSpec.tenderSpecs.remove(it) }
		if (transSpec.tenderSpecs.isEmpty())
			transSpec.tenderSpecs = null;
		
		removeList.clear()
		for ( item in transSpec.lineItemSpecs) {
			//todo - check all fields or just a few to figure out 'empty' object
			if ((item.sku == null || item.sku.size() == 0) &&
			item.quantity == 0 )
				removeList.add(item)
		}
		if (!removeList.isEmpty())
			removeList.each { transSpec.lineItemSpecs.remove(it) }
		if (transSpec.lineItemSpecs.isEmpty())
			transSpec.lineItemSpecs = null;
		
		if (!transSpec.customerSpec?.customerNumber && !transSpec.customerSpec?.taxExemptNumber)
			transSpec.customerSpec = null;
		
	}
	
	//************** Ajax related closures ************************
	
	def txncreateAjax = {
		def transactionSpecInstance = bindTxnSpec(params)
		params.XMLRequest  = autoTransService.getXML(transactionSpecInstance)
		render (view:"showAjax", model:params)
	}
	
	def callTxnCreate = {
		def XMLRequest = params.XMLRequest
		def XMLReponse = "result should be here!!!"
		render (view:"showAjax", model:params)
	}
}
