<div class="form-group row">
    <label class="col-md-4 col-form-label text-md-right"><g:message code="first.name"/></label>
    <div class="col-md-6">
        <g:textField name="firstName" class="form-control" value="${member?.firstName}"/>
        <UIHelper:renderErrorMessage fieldName="firstName" model="${member}" errorMessage="please.enter.first.name"/>
    </div>
</div>
<div class="form-group row ">
    <label class="col-md-4 col-form-label text-md-right"><g:message code="last.name"/></label>
    <div class="col-md-6">
        <g:textField name="lastName" class="form-control" value="${member?.lastName}"/>
    </div>
</div>
<div class="form-group row ">
    <label class="col-md-4 col-form-label text-md-right"><g:message code="address"/></label>
    <div class="col-md-6">
        <g:textField name="address" class="form-control" value="${member?.address}"/>
        <UIHelper:renderErrorMessage fieldName="address" model="${member}" errorMessage="Please enter your address"/>
    </div>

</div>
<div class="form-group row ">
    <label  class="col-md-4 col-form-label text-md-right"><g:message code="phone.number"/></label>
    <div class="col-md-6">
        <g:textField name="phoneNumber" class="form-control" value="${member?.phoneNumber}"/>
        <UIHelper:renderErrorMessage fieldName="phoneNumber" model="${member}" errorMessage="Please enter your phone number"/>
    </div>
</div>
<div class="form-group row">
    <label class="col-md-4 col-form-label text-md-right"><g:message code="email.address"/></label>
    <div class="col-md-6">
        <g:field type="email" name="email" class="form-control" value="${member?.email}" placeholder="Please Enter Email"/>
        <UIHelper:renderErrorMessage fieldName="email" model="${member}" errorMessage="Your Email Address is not Valid / Already Exist in System"/>
    </div>

</div>
<g:if test="${!edit}">
    <div class="form-group row">
        <label class="col-md-4 col-form-label text-md-right"><g:message code="password"/></label>
        <div class="col-md-6">
            <g:passwordField name="password" class="form-control" value="${member?.password}" placeholder="Please Enter Password"/>
            <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter a Password."/>
        </div>
    </div>
</g:if>