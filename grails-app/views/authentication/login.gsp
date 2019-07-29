<meta name="layout" content="public"/>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="card">
                <div  class="card-header text-md-center" style="font-size: large">
                    <g:img dir="images" file="user.png" class="profile-img"/>
                    Login Panel
                </div>
                <div class="card-body">
                    <g:form id ="loginForm" controller="authentication" action="doLogin">
                        <div class="form-group row ">
                            <label class="col-md-4 col-form-label text-md-right"><g:message code="email"/></label>
                            <div class="col-md-8">
                                <g:textField name="email" class="form-control" placeholder="Email" required="required" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label text-md-right"><g:message code="password"/></label>
                            <div class="col-md-8">
                                <g:passwordField name="password" class="form-control" placeholder="Password" required="required" />
                            </div>
                        </div>
                        <div class="form-group row ">
                            <div class="col text-center">
                                <g:submitButton name="login" value="Login" class="btn btn-primary d-inline-block col-sm-3"/>
                                <button type="reset" class="btn btn-secondary d-inline-block">clear</button>
                            </div>
                        </div>

                    </g:form>
                    <div class="form-group row">
                        <div class="col control">
                            <div style="font-size:85%" class="text-center">
                                Are you new here?
                                <g:link controller="authentication" action="registration"><u> Register Now </u></g:link>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>