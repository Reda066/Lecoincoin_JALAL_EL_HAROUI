<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="main" />
  <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
  <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<table>
  <div class="container">
    <div class="row justify-content-md-center" >
      <div class="col col-lg-2">
        <table class="table">
          <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Username</th>
            <th scope="col">Role</th>
            <th scope="col">Actions</th>
          </tr>
          </thead>
          <tbody>
          <g:each in="${UserList}">
            <tr>
              <th scope="row">${it.id}</th>
              <td>${it.username}</td>
              <g:each in="${it.getAuthorities()}"><td>${it.authority}</td></g:each>

              <td>
                <button><g:link controller="User" action="edit" id="${it.id}">Edit user</g:link></button>
                <button> <g:link controller="User" action="delete" id="${it.id}">Delete user</g:link></button>
              </td>
            </tr>
          </g:each>
          </tbody>
        </table>

</body>
</html>
