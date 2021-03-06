<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <script>
            function getBeyza(){
                $.ajax({
                    url: "/customer/beyza",
                    type:"get",
                    //dataType: 'json',
//            data:{ids:JSON.stringify(idList), option:option, id:id}
                    success: function(data) {
                        document.getElementById('beyza').innerText=data;//.innerHTML= data;
                    }
                });
            }
        </script>
    </head>
    <body>
        <a href="#list-customer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="engin">Report</g:link></li>
                <li><a class="create" onClick="getBeyza()">getBeyza()</a></li>
            </ul>
        </div>
        <div id="list-customer" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <span id="beyza">Beyza</span>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${customerList}" />

            <div class="pagination">
                <g:paginate total="${customerCount ?: 0}" />
            </div>
        </div>
    </body>


</html>
