<%--
  Created by IntelliJ IDEA.
  User: salildas
  Date: 7/26/19
  Time: 12:30 PM
--%>

<meta name="layout" content="public"/>

<div class="card">
    <div class="card-header">
        Member Registration
    </div>

    <div class="card-body">
        <g:form controller="authentication" action="doRegistration">
            <g:render template="/member/form"/>
            <g:submitButton name="registration" value="Registration" class="btn btn-primary"/>
            <g:link controller="authentication" action="login" class="btn btn-primary"><g:message
                    code="cancel"/></g:link>
        </g:form>
    </div>
</div>