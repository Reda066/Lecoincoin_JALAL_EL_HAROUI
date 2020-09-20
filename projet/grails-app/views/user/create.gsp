<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <style>
        form {
            margin-left: 25%;
            margin-right:25%;
            width: 50%;
        }
        nav{
            margin-bottom: 10%;
        }
        .test{

            position:fixed;
            right:10px;
            top:5px;
        }
        </style>


        </style>

    </head>
    <body>

    <nav class="navbar navbar-light bg-light">
        <form class="form-inline">
            <button class="btn btn-outline-success" type="button" style="margin-right: 10px;"><a style="text-decoration: none;" href="/">Home</a></button>
            <button class="btn btn-outline-success" type="button" style="margin-right: 10px;"><a style="text-decoration: none;" href="/saleAd/index">Liste des annoces</a></button>
            <button class="btn btn-outline-success" type="button" style="margin-right: 10px;"><a style="text-decoration: none;" href="/saleAd/create">Créer une annonce</a></button>
            <button class="btn btn-outline-success" type="button" style="margin-right: 10px;"><a style="text-decoration: none;" href="/user/index">Liste des user</a></button>
            <label class="test"  style="position:fixed;right:10px;top:5px;">
                <a href="/user/logout" class="btn btn-info btn-lg">
                    <span class="glyphicon glyphicon-log-out"></span> Log out
                </a>
            </label>
        </form>
    </nav>


            <form action="save" method="post" >

                <div class="form-group">
                    <label for="username">Username</label>
                    <span class='required-indicator'>*</span>
                    <input type="text" name="username" class="form-control" id="username" placeholder="" value="" required="">
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <span class='required-indicator'>*</span>
                    <input type="password" name="password" class="form-control" id="password" placeholder="" value="" required="">
                </div>

                <div class="form-group">
                    <label for="role">Role </label>
                    <span class='required-indicator'>*</span>
                    <select multiple class="form-control" name="role" id="role">
                        <option value="ROLE_ADMIN">Admin</option>
                        <option value="ROLE_MOD">Moderateur</option>
                        <option value="ROLE_USER">User</option>
                    </select>
                </div>

                <input class="btn btn-primary" type="submit" value="Sauvegarder">

            </form>



    </body>
</html>
