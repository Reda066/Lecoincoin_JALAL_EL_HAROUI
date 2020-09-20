<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>

        <div id="create-saleAd" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.saleAd}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.saleAd}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <!--<g:form resource="${this.saleAd}" method="POST">
                <fieldset class="form">
                    <f:all bean="saleAd"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>-->

            <form action="save" method="POST" enctype="multipart/form-data">

                <div class='fieldcontain required'>

                    <label for='title'>Title
                        <span class='required-indicator'>*</span>
                    </label><input type="text" name="title" value="" required="" id="title"/><br><br>

                    <label for='title'>descShort
                        <span class='required-indicator'>*</span>
                    </label><input type="descShort" name="descShort" value="" required="" id="descShort"/><br><br>

                    <label for='title'>descLong
                        <span class='required-indicator'>*</span>
                    </label><input type="descLong" name="descLong" value="" required="" id="descLong"/><br><br>

                    <label for='title'>price
                        <span class='required-indicator'>*</span>
                    </label><input type="price" name="price" value="" required="" id="price"/><br><br>

                    <label for='dateCreated'>dateCreated
                        <span class='required-indicator'>*</span>
                    </label>
                    <input type="date" name="dateCreated" value="date.struct" id="dateCreated"/><br><br>

                    <div class='fieldcontain'>
                        <label>Illustrations</label>
                        <input type="file" name="filename" multiple/><br>
                    </div>

                    <input type="submit" value="Sauvegarder l'annonce">

                </div>

            </form>



        </div>
    </body>
</html>
