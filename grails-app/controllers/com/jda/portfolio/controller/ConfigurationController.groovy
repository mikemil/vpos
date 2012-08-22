package com.jda.portfolio.controller

import com.jda.portfolio.domain.Configuration

class ConfigurationController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        params.max = Math.min( params.max ? params.max.toInteger() : 10,  100)
        [ configurationInstanceList: Configuration.list( params ), configurationInstanceTotal: Configuration.count() ]
    }

    def show = {
        def configurationInstance = Configuration.get( params.id )

        if(!configurationInstance) {
            flash.message = "Configuration not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ configurationInstance : configurationInstance ] }
    }

    def edit = {
        def configurationInstance = Configuration.get( params.id )

        if(!configurationInstance) {
            flash.message = "Configuration not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ configurationInstance : configurationInstance ]
        }
    }

    def update = {
        def configurationInstance = Configuration.get( params.id )
        if(configurationInstance) {
            if(params.version) {
                def version = params.version.toLong()
                if(configurationInstance.version > version) {
                    
                    configurationInstance.errors.rejectValue("version", "configuration.optimistic.locking.failure", "Another user has updated this Configuration while you were editing.")
                    render(view:'edit',model:[configurationInstance:configurationInstance])
                    return
                }
            }
            configurationInstance.properties = params
            if(!configurationInstance.hasErrors() && configurationInstance.save()) {
                flash.message = "Configuration ${params.id} updated"
                redirect(action:show,id:configurationInstance.id)
            }
            else {
                render(view:'edit',model:[configurationInstance:configurationInstance])
            }
        }
        else {
            flash.message = "Configuration not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def save = {
        def configurationInstance = new Configuration(params)
        if(!configurationInstance.hasErrors() && configurationInstance.save()) {
            flash.message = "Configuration ${configurationInstance.id} created"
            redirect(action:show,id:configurationInstance.id)
        }
        else {
            render(view:'create',model:[configurationInstance:configurationInstance])
        }
    }
}
