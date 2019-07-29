package com.salildas.userportal

class MemberController {

    MemberService memberService

    def index() {
        def response = memberService.list(params)
        [memberList: response.list, total: response.count]
    }
}
