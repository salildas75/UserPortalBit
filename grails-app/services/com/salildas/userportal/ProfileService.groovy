package com.salildas.userportal

import grails.web.servlet.mvc.GrailsParameterMap

class ProfileService {

    def doPasswordChange(Member member, GrailsParameterMap params){
        String password = params.password.encodeAsMD5()
        String newPassword = params.newPassword.encodeAsMD5()
        String confirmPassword = params.confirmPassword.encodeAsMD5()
        def response = AppUtil.saveResponse(false, member)
        if(member.password==password && confirmPassword==newPassword){
            member.password = params.newPassword
                member.save(flush: true, failOnError:true)
                response.isSuccess = true
        }
        return response
    }

}
