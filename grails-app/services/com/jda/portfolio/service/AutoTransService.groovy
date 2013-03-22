package com.jda.portfolio.service

import com.jda.portfolio.domain.Configuration
import com.jda.portfolio.domain.TransactionSpec

import groovyx.net.http.HTTPBuilder
import static groovyx.net.http.ContentType.XML
import static groovyx.net.http.ContentType.TEXT
import static groovyx.net.http.Method.PUT

class AutoTransService {
	
	boolean transactional = false
	
	// generates the XML 
	def getXML(TransactionSpec txnSpec) {
		
		def writer = new StringWriter()
		def builder = new groovy.xml.MarkupBuilder(writer)
		builder.TransactionSpec (training:txnSpec.training) {
			transClassName txnSpec.transClassName
			locationNumber txnSpec.locationNumber
			currencyCode txnSpec.currencyCode
			AssociateSpec { associateNumber txnSpec.associateSpec.associateNumber  }
			terminalName txnSpec.terminalName
			if (txnSpec.customerSpec) {
				CustomerSpec {
					if (txnSpec.customerSpec.customerNumber)
						customerNumber txnSpec.customerSpec.customerNumber
					if (txnSpec.customerSpec.taxExemptNumber)
						taxExemptNumber txnSpec.customerSpec.taxExemptNumber 
				}
			}
			LineItemSpecs {
				for (item in txnSpec.lineItemSpecs) {
					LineItemSpec {
						sku(item.sku)
						quantity(item.quantity)
						if (item.overrideReasonCode) overrideReasonCode(item.overrideReasonCode)
						//if (item.overridePrice) overridePrice(item.overridePrice)
						// commented out to test a theory for Office Depot
						//overridePrice(item.overridePrice)
						if (item.pricePrecision) pricePrecision(item.pricePrecision)
                        if (item.overrideAssociateNumber) overrideAssociateNumber(item.overrideAssociateNumber)
					}
				}
			}
			if (txnSpec.couponSpecs) {
				CouponSpecs {
					for (coupon in txnSpec.couponSpecs) {
						CouponSpec { couponNumber(coupon.couponNumber) }
					}
				}
			}
			if (txnSpec.discountSpecs) {
				DiscountSpecs {
					for (disc in txnSpec.discountSpecs) {
						DiscountSpec {
							discountCode(disc.discountCode)
							if (disc.amount) amount(disc.amount)
							if (disc.precision) precision(disc.precision)
						}
					}
				}
			}
			if (txnSpec.tenderSpecs) {
				TenderSpecs {
					for (tender in txnSpec.tenderSpecs) {
						TenderSpec {
							tenderCode (tender.tenderCode)
							cardToken(tender.cardToken)
							cardType(tender.cardType)
							cardSubType(tender.cardSubType)
							if (tender.preLockNumber) preLockNumber(tender.preLockNumber)
							if (tender.preLockAmount) preLockAmount(tender.preLockAmount)
							if (tender.purchaseOrderNumber) purchaseOrderNumber(tender.purchaseOrderNumber)
							if (tender.amount) amount(tender.amount)
							if (tender.precision) precision(tender.precision)
							if (tender.custLookup) precision(tender.custLookup)
						}
					}
				}
			}
			if (txnSpec.suspend) {
				suspend(txnSpec.suspend)
			}
				
		}
		writer.toString()
	}
	
	// call the REST service using the XML
	// def autoServiceShort(String xml, Configuration conf, String userid, String pswd) {
		
	// 	def ppos = new HTTPBuilder( conf.protocol+"//"+conf.server+":"+conf.port, TEXT )
		
	// 	try {
	// 		ppos.request( PUT ) {
	// 			uri.path = conf.context + conf.url
	// 			headers = [Accept:'application/xml', 'ppos-user':userid, 'ppos-pswd':pswd]
	// 			send( groovyx.net.http.ContentType.TEXT, xml ) 
				
	// 			// success handler
	// 			response.success = { resp, reader ->
	// 				//pretty print format the response
	// 				def stringWriter = new StringWriter()
	// 				def node = new XmlParser().parseText(reader.text);
	// 				new  XmlNodePrinter(new PrintWriter(stringWriter)).print(node)
	// 				return stringWriter.toString()
	// 			}
	// 			// failure handler
	// 			response.failure = { resp ->
	// 				return 'Response status='+resp.status
	// 			}
	// 		}
	// 	} catch(Exception e) {
	// 		log.error("Caught exception:", e)
	// 		return e.toString()
	// 	}
	// }
	
	
	def autoService(TransactionSpec txnSpec, Configuration conf, String userid, String pswd) {
		def ppos = new HTTPBuilder( conf.protocol+"//"+conf.server+":"+conf.port, TEXT )
		try {
			ppos.request( PUT ) {
				uri.path = conf.context + conf.url
				headers = [Accept:'application/xml', 'ppos-user':userid, 'ppos-pswd':pswd]
				send( groovyx.net.http.ContentType.XML ) {
					TransactionSpec (training:txnSpec.training) {
						transClassName txnSpec.transClassName
						locationNumber txnSpec.locationNumber
						currencyCode txnSpec.currencyCode
						AssociateSpec { associateNumber txnSpec.associateSpec.associateNumber  }
						terminalName txnSpec.terminalName
						if (txnSpec.customerSpec) {
							CustomerSpec {
								if (txnSpec.customerSpec.customerNumber)
									customerNumber txnSpec.customerSpec.customerNumber
								if (txnSpec.customerSpec.taxExemptNumber)
									taxExemptNumber txnSpec.customerSpec.taxExemptNumber 
							}
						}
						LineItemSpecs {
							for (item in txnSpec.lineItemSpecs) {
								LineItemSpec {
									sku(item.sku)
									quantity(item.quantity)
									if (item.overrideReasonCode) overrideReasonCode(item.overrideReasonCode)
									//if (item.overridePrice) overridePrice(item.overridePrice)
									// commented out to test a theory for Office Depot
									//overridePrice(item.overridePrice)
									if (item.pricePrecision) pricePrecision(item.pricePrecision)
                                    if (item.overrideAssociateNumber) overrideAssociateNumber(item.overrideAssociateNumber)
								}
							}
						}
						if (txnSpec.couponSpecs) {
							CouponSpecs {
								for (coupon in txnSpec.couponSpecs) {
									CouponSpec { couponNumber(coupon.couponNumber) }
								}
							}
						}
						if (txnSpec.discountSpecs) {
							DiscountSpecs {
								for (disc in txnSpec.discountSpecs) {
									DiscountSpec {
										discountCode(disc.discountCode)
										if (disc.amount) amount(disc.amount)
										if (disc.precision) precision(disc.precision)
									}
								}
							}
						}
						if (txnSpec.tenderSpecs) {
							TenderSpecs {
								TenderSpec {
									for (tender in txnSpec.tenderSpecs) {
										tenderCode (tender.tenderCode)
										cardToken(tender.cardToken)
							            cardType(tender.cardType)
							            cardSubType(tender.cardSubType)
										if (tender.preLockNumber) preLockNumber(tender.preLockNumber)
										if (tender.preLockAmount) preLockAmount(tender.preLockAmount)
										if (tender.purchaseOrderNumber) purchaseOrderNumber(tender.purchaseOrderNumber)
										if (tender.amount) amount(tender.amount)
										if (tender.precision) precision(tender.precision)
										if (tender.custLookup) precision(tender.custLookup)
									}
								}
							}
						}
						if (txnSpec.suspend) {
							suspend(txnSpec.suspend)
						}
					}   
				}
				// success handler
				response.success = { resp, reader ->
					//pretty print format the response
					def stringWriter = new StringWriter()
					def node = new XmlParser().parseText(reader.text);
					new  XmlNodePrinter(new PrintWriter(stringWriter)).print(node)
					return stringWriter.toString()
				}
				// failure handler
				response.failure = { resp ->
					return 'Response status='+resp.status
				}
			}
		} catch(Exception e) {
			log.error("Caught exception:", e)
			return e.toString()
		}
	}
	
	
}