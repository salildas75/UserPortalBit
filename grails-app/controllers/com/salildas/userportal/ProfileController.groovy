package com.salildas.userportal

class ProfileController {

    AuthenticationService authenticationService
    ProfileService profileService

    def index() {
        def response = authenticationService.getMember()
        if (!response){
            redirect(controller: "authentication", action: "login")
        }else{
            [member: response]
        }
    }
    def changePassword() {

    }
    def doPasswordChange(){
        def response = authenticationService.getMember()
        if (!response) {
            flash.message = AppUtil.infoMessage(g.message(code: "invalid.entity"), false)
            redirect(controller: "profile", action: "changePassword")
        } else {
            response = profileService.doPasswordChange(response, params)
            if (!response.isSuccess) {
                flash.redirectParams = response.model
                flash.message = AppUtil.infoMessage(g.message(code: "password.not.change"), false)
                redirect(controller: "profile", action: "changePassword")
            } else {
                flash.message = AppUtil.infoMessage(g.message(code: "updated"))
                redirect(controller: "profile", action: "index")
            }
        }
    }
}
