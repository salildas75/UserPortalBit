package com.salildas.userportal


class MemberInterceptor {

    AuthenticationService authenticationService

    boolean before() {
        if (authenticationService.isAdministratorMember()) {
            return true
        }
        flash.message = AppUtil.infoMessage("You are not Authorized for this Action.", false)
        redirect(controller: "profile", action: "index")
        return false
    }
}
