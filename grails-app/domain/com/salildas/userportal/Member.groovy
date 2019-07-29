package com.salildas.userportal

class Member {

    Integer id
    String firstName
    String lastName
    String email
    String phoneNumber
    String password
    String address
    String memberType = GlobalConfig.USER_TYPE.REGULAR_MEMBER
    String identityHash
    Long identityHashLastUpdate
    Boolean isActive = true

    Date dateCreated
    Date lastUpdated

    static constraints = {
        email(nullable: false, unique: true, blank: false)
        password(blank: false)
        lastName(nullable: true)
        address(nullable: true)
        phoneNumber(nullable: false)
        identityHash(nullable: true)
        identityHashLastUpdate(nullable: true)
    }

    def beforeInsert() {
        this.password = this.password.encodeAsMD5()
    }


    def beforeUpdate() {
        this.password = this.password.encodeAsMD5()
    }

}
