import com.jda.portfolio.domain.Configuration
import com.jda.portfolio.domain.OverrideReasonCode
import com.jda.portfolio.domain.Version

class BootStrap {

     def init = { servletContext ->
        // configuration entries - 1st two not currently used!
        new Configuration(protocol:"http:", server:"localhost", port:"7001", context:"/pposautoservices", url:"/transaction/create", type:1).save()
        new Configuration(protocol:"http:", server:"localhost", port:"7001", context:"/pposautoservices", url:"/transaction/price", type:2).save()
        new Configuration(protocol:"http:", server:"localhost", port:"7001", context:"/pposautoservices", url:"/transaction/product", type:3).save()
        
        // reason code used to provide drop-down for reason code field
        new OverrideReasonCode(reasonCode:1108, description:'Price Guarantee').save()
        new OverrideReasonCode(reasonCode:1109, description:'Price Match').save()
		new OverrideReasonCode(reasonCode:1112, description:'Store Use').save()
		new OverrideReasonCode(reasonCode:1113, description:'Full Service').save()
        
        //	application change log
        new Version(versionId:'0.1', description:'Initial Release').save()
        new Version(versionId:'0.2', description:'XML builder changes to check for empty fields').save()
        new Version(versionId:'0.3', description:'Fix some form field names').save()
        new Version(versionId:'0.4', description:'Created Version domain object and views, lock-down Configuration options').save()
        new Version(versionId:'0.5', description:'Fix exception going to Configuration page when running a war').save()
        new Version(versionId:'0.6', description:'Add missing CustomerSpec and set defaults when pages load').save()
        new Version(versionId:'0.7', description:'Remove CustomerSpec if customer number empty, add warning when using IE').save()
        new Version(versionId:'0.8', description:'Added dropdown from OverrideReasonCode objects, use FieldSet tags').save()
        new Version(versionId:'0.9', description:'Updated for POS 7.8 release, using card tokens instead of card numbers and use Twitter Bootstrap for UI').save()
        new Version(versionId:'0.9.5', description:'Adding Product Lookup api').save()
     }
    
     def destroy = {
     }
} 