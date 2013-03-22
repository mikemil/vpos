package com.jda.portfolio.controller

import com.jda.portfolio.domain.Configuration
import com.jda.portfolio.domain.OverrideReasonCode
import com.jda.portfolio.domain.ProductDetail
import com.jda.portfolio.domain.PriceDeal
import com.jda.portfolio.domain.TransactionSpec


// figure out why I need to set the qty whenever I create a second, third, etc lineitem, tender, etc

// todo: handle multiple TransLineSpecs coming back - need to create a list of 
//       product details and repeat the results on the page

// try color coding the line for qualifier vs getter


class TransactionSpecController {
	
	def PRODUCTLOOKUP_CONFIG_ID = 3
	def PRICELOOKUP_CONFIG_ID = 2
	def TXNCREATE_CONFIG_ID   = 1
	
	def autoTransService
	
	def create = {
		['transactionSpecInstance': createSpec(), reasonCodes:OverrideReasonCode.list()]
	}
	
	def createLookup = {
		['transactionSpecInstance': createSpec(), reasonCodes:OverrideReasonCode.list()]
	}
	
	def product = {
		['transactionSpecInstance': createSpec(), reasonCodes:OverrideReasonCode.list()]
	}

	def createSpec() {
		return ['transactionSpecInstance': new TransactionSpec(params)]   
	}
	
	def txncreate = {
		def conf = Configuration.get(TXNCREATE_CONFIG_ID)
		if (conf != null) {
			processRequest(conf)
			//def transactionSpecInstance = new TransactionSpec(params)
			//postValidate(transactionSpecInstance)
			//def startMillis = System.currentTimeMillis()
			//params.XMLRequest  = autoTransService.getXML(transactionSpecInstance)
			//params.generateXMLMillis = System.currentTimeMillis() - startMillis
			//startMillis = System.currentTimeMillis()
			//params.XMLResponse = autoTransService.autoService(transactionSpecInstance, conf, params.userid, params.pswd)
			//params.serviceMillis = System.currentTimeMillis() - startMillis
		}
		render (view:"show", model:params)
	}
	
	def pricelookup = {
		def conf = Configuration.get(PRICELOOKUP_CONFIG_ID)
		if (conf != null) {
			processRequest(conf)
			//def transactionSpecInstance = new TransactionSpec(params)
			//postValidate(transactionSpecInstance)
			//def startMillis = System.currentTimeMillis()
			//params.XMLRequest  = autoTransService.getXML(transactionSpecInstance)
			//params.generateXMLMillis = System.currentTimeMillis() - startMillis
			//startMillis = System.currentTimeMillis()
			//params.XMLResponse = autoTransService.autoService(transactionSpecInstance, conf, params.userid, params.pswd)
			//params.serviceMillis = System.currentTimeMillis() - startMillis
		}
		render (view:"show", model:params)
	}
	
	def productLookup = {
		def conf = Configuration.get(PRODUCTLOOKUP_CONFIG_ID)
		if (conf != null) {
			processRequest(conf)
			//def transactionSpecInstance = new TransactionSpec(params)
			//postValidate(transactionSpecInstance)
			//def startMillis = System.currentTimeMillis()
			//params.XMLRequest  = autoTransService.getXML(transactionSpecInstance)
			//params.generateXMLMillis = System.currentTimeMillis() - startMillis
			//startMillis = System.currentTimeMillis()
			//params.XMLResponse = autoTransService.autoService(transactionSpecInstance, conf, params.userid, params.pswd)
			//params.serviceMillis = System.currentTimeMillis() - startMillis
			//def startMillis = System.currentTimeMillis()
			//todo may want to put a try/catch around this - or above - to catch the case where store server is not up!!!
			//def transSpecGPath = new XmlSlurper().parseText(params.XMLResponse)
			//params.slurpMillis = System.currentTimeMillis() - startMillis
			//params.productDetail = buildProductDetail(transSpecGPath)
		} 
		render (view:"showProduct", model:params)
	}

	def processRequest(conf) {
		def transactionSpecInstance = new TransactionSpec(params)
		postValidate(transactionSpecInstance)
		def startMillis = System.currentTimeMillis()
		params.XMLRequest  = autoTransService.getXML(transactionSpecInstance)
		params.generateXMLMillis = System.currentTimeMillis() - startMillis
		startMillis = System.currentTimeMillis()
		println 'calling vpos...'
		params.XMLResponse = autoTransService.autoService(transactionSpecInstance, conf, params.userid, params.pswd)
		params.serviceMillis = System.currentTimeMillis() - startMillis
		println 'returned from vpos.'
		startMillis = System.currentTimeMillis()
		def transSpecGPath = new XmlSlurper().parseText(params.XMLResponse)
		params.slurpMillis = System.currentTimeMillis() - startMillis
		params.productDetail = buildProductDetail(transSpecGPath, conf.type)
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
	
	def ProductDetail buildProductDetail(transSpecGPathResult, configType) {
		def lineSpec = transSpecGPathResult.TransBeanSpec.TransLineSpecs.TransLineSpec[0]
		def prodDtl = new ProductDetail()
		prodDtl.sku = lineSpec.sku.text().trim();
		prodDtl.description = lineSpec.description.text().trim()
		prodDtl.price = Integer.parseInt(lineSpec.total.text().trim())

		// this part only done for product lookup!
		if (configType == Configuration.TYPE_PRODUCT_LOOKUP) {
			if (lineSpec.PotentialDealSpecs) {
				def deals = []
				lineSpec.PotentialDealSpecs.children().each { dealSpec ->
					// filter to include only these type deals (for now)
					if (dealSpec.dealType.text().trim() == 'BREAKPOINT' ||
						dealSpec.dealType.text().trim() == 'LIMIT' ||
						dealSpec.dealType.text().trim() == 'BOGO' ) {

						def deal = new PriceDeal()
						deal.eventName = dealSpec.eventName.text().trim()
						deal.eventNumber = dealSpec.eventNumber.text().trim()
						deal.effectiveDate = dealSpec.effectiveDate.text().trim()
						deal.dealType = dealSpec.dealType.text().trim()
						deal.buyDescription = dealSpec.dealInfo.buyDesc.text().trim()
						deal.buyOrder = dealSpec.dealInfo.buyOrder.text().trim()
						deal.buyQty = dealSpec.dealInfo.buyQuantity.text().trim()
						deal.getDescription = dealSpec.dealInfo.getDesc.text().trim()
						deal.getOrder = dealSpec.dealInfo.getOrder.text().trim()
						deal.getQty = dealSpec.dealInfo.getQuantity.text().trim()
						deal.priceType = dealSpec.dealInfo.priceType.text().trim()
						deal.priceValue = dealSpec.dealInfo.priceValue.text().trim()
						deal.limitQty = dealSpec.dealInfo.limitQuantity.text().trim()
						deal.qualifier = dealSpec.dealInfo.qualifier.text().trim()
						deal.getter = dealSpec.dealInfo.getter.text().trim()
						deals << deal
					}
				}
				prodDtl.priceDeals = deals
			} else println 'No PotentialDealSpecs found.'
		}

		return prodDtl
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
