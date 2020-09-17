<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-user" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.user}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.user}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <form method="post" >

                <div class='fieldcontain required'>
                    <label for='username'>username
                        <span class='required-indicator'>*</span>
                    </label>
                    <input type="text" name="username" value="" required="" id="username"/>
                </div>

                <div class='fieldcontain required'>
                    <label for='password'>password
                        <span class='required-indicator'>*</span>
                    </label>
                    <input type="password" name="password" value="" required="" id="password"/><br>
                </div>

                <div class='fieldcontain required'>
                    <label for='role'>password
                        <span class='required-indicator'>*</span>
                    </label>
                    <select name="role" id="role">
                        <option value="ROLE_ADMIN">Admin</option>
                        <option value="ROLE_MOD">Moderateur</option>
                        <option value="ROLE_USER">User</option>
                    </select><br>
                </div>

                <input type="submit" value="Envoyer le formulaire">

            </form>

        </div>
    </body>
</html>