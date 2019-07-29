%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header text-md-center" style="font-size: 23px">
        <g:message code="user.details"/>
    </div>
    <div class="card-body">
        <g:if test="${member}">
            <div class="container">
                <table class="table table-borderless">
                    <tr>
                        <th class="text-center"><g:message code="first.name"/></th><td class="text-left ">${member.firstName}</td>
                    </tr>
                    <tr>
                        <th class="text-center"><g:message code="last.name"/></th><td class="text-left">${member.lastName}</td>
                    </tr>
                    <tr>
                        <th class="text-center"><g:message code="address"/></th><td class="text-left">${member.address}</td>
                    </tr>
                    <tr>
                        <th class="text-center"><g:message code="phone.number"/></th><td class="text-left">${member.phoneNumber}</td>
                    </tr>
                    <tr>
                        <th class="text-center"><g:message code="email"/></th><td class="text-left">${member.email}</td>
                    </tr>

                </table>
            </div>
        </g:if>
    </div>
</div>