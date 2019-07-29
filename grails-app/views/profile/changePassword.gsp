<meta name="layout" content="main"/>

<div class="card">
    <div  class="card-header text-md-center" style="font-size: large">
        <g:message code="change.password"/>
    </div>
    <div class="card-body">
        <g:form controller="profile" action="doPasswordChange">
            <div class="form-group">
                <label><g:message code="previous.password"/> *</label>
                <g:passwordField name="password" class="form-control"/>
                <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="please.enter.name"/>
            </div>
            <div class="form-group">
                <label><g:message code="new.password"/> *</label>
                <g:passwordField name="newPassword" class="form-control"/>
                <UIHelper:renderErrorMessage fieldName="newPassword" model="${member}" errorMessage="please.enter.password"/>
            </div>
            <div class="form-group">
                <label><g:message code="confirm.password"/> *</label>
                <g:passwordField name="confirmPassword" class="form-control"/>
                <UIHelper:renderErrorMessage fieldName="confirmPassword" model="${member}" errorMessage="password.not.matched"/>
            </div>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="login" value="${g.message(code: "change.password")}"/>
                <g:link controller="profile" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>