<%--
  Created by IntelliJ IDEA.
  User: salildas
  Date: 7/26/19
  Time: 12:30 PM
--%>

<meta name="layout" content="public"/>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div  class="card-header text-md-center" style="font-size: large">
                    <g:img dir="images" file="user.png" class="profile-img"/>
                    Registration Panel
                </div>
                <div class="card-body">
                    <g:form controller="authentication" action="doRegistration">
                        <g:render template="/member/form"/>
                        <div class="col text-center">
                            <g:submitButton name="registration" value="Registration" class="btn btn-primary d-inline-block"/>
                            <g:link controller="authentication" action="login" class="btn btn-secondary d-inline-block"><g:message code="cancel"/></g:link>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>