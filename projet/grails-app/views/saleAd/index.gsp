<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.22/datatables.min.css"/>
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.22/datatables.min.js"></script>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




        <style>

        nav{
            margin-bottom: 5%;
        }

        a.btn:hover {
            -webkit-transform: scale(1.1);
            -moz-transform: scale(1.1);
            -o-transform: scale(1.1);
        }
        a.btn {
            -webkit-transform: scale(0.8);
            -moz-transform: scale(0.8);
            -o-transform: scale(0.8);
            -webkit-transition-duration: 0.5s;
            -moz-transition-duration: 0.5s;
            -o-transition-duration: 0.5s;
        }
        .test{

            position:fixed;
            right:10px;
            top:5px;
        }
        </style>

    </head>
    <body>

   <!-- <nav class="navbar navbar-light bg-light">
        <form class="form-inline">
            <button class="btn btn-outline-success" type="button" style="margin-right: 10px;"><a style="text-decoration: none;" href="/">Home</a></button>
            <button class="btn btn-outline-success" type="button"><a style="text-decoration: none;" href="/saleAd/create">Créer une annonce</a></button>
        </form>
    </nav>-->

    <nav class="navbar navbar-light bg-light">
        <form class="form-inline">
            <button class="btn btn-outline-success" type="button" style="margin-right: 10px;"><a style="text-decoration: none;" href="/saleAd/index">Home</a></button>
            <button class="btn btn-outline-success" type="button" style="margin-right: 10px;"><a style="text-decoration: none;" href="/saleAd/index">Liste des annoces</a></button>
            <button class="btn btn-outline-success" type="button" style="margin-right: 10px;"><a style="text-decoration: none;" href="/saleAd/create">Créer une annonce</a></button>
            <button class="btn btn-outline-success" type="button" style="margin-right: 10px;"><a style="text-decoration: none;" href="/user/index">Liste des user</a></button>
            <button class="btn btn-outline-success" type="button"><a style="text-decoration: none;" href="/user/create">Créer un user</a></button>
            <label class="test">
                <a href="/user/logout" class="btn btn-info btn-lg">
                    <span class="glyphicon glyphicon-log-out"></span> Log out
                </a>
            </label>
        </form>
    </nav>

    <h3>Liste des annoces</h3>
    <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
        <thead>
        <tr>
            <!--<th >Title</th>
            <th >DescShort</th>
            <th >DescLong</th>
            <th >Price</th>
            <th >Date de création</th>
            <th >Illustration</th>-->

            <th class="sortable"><a href="/saleAd/index?sort=title&amp;max=10&amp;order=asc">Title</a></th>
            <th class="sortable"><a href="/saleAd/index?sort=DescShort&amp;max=10&amp;order=asc">Description courte</a></th>
            <th class="sortable"><a href="/saleAd/index?sort=DescLong&amp;max=10&amp;order=asc">Description longue</a></th>
            <th class="sortable"><a href="/saleAd/index?sort=Price&amp;max=10&amp;order=asc">Price</a></th>
            <th class="sortable"><a href="/saleAd/index?sort=dateCreated&amp;max=10&amp;order=asc">Date de création</a></th>
            <th class="sortable"><a href="/saleAd/index?sort=illustration&amp;max=10&amp;order=asc">Illustration</a></th>
            <th >#</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${saleAdList}" var="saleAd">
            <tr>
                <td><g:link controller="saleAd" action="show" id="${saleAd.id}">${saleAd.title}</g:link></td>
                <td>${saleAd.descShort}</td>
                <td>${saleAd.descLong}</td>
                <td>${saleAd.price}</td>
                <td>${saleAd.dateCreated}</td>
                <td>
                    <nav>
                        <ul>
                            <g:each in="${saleAd.illustration}" var="illustration">
                                <li><asset:image  src="${illustration.filename}" style="width: 100px;"/></li>
                            </g:each>
                        </ul>
                    </nav>
                </td>

           <td><button type="button" class="btn btn-primary a-btn-slide-text"><g:link controller="saleAd" action="edit" id="${saleAd.id}"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
               <span style="color:white"><strong>Modifier</strong></span></g:link></button>
               <!--<div class="container">
                   <div class="row">
                       <a href="${createLink(uri:'saleAd/edit/saleAd.id')}" class="btn btn-primary a-btn-slide-text">
               <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
               <span><strong>Edit</strong></span>
           </a></div>
           </div>-->
           </td>

            </tr>
        </g:each>
        </tbody>
        <tfoot>
        <tr>
            <th>Title
            </th>
            <th>Description courte
            </th>
            <th>Description longue
            </th>
            <th>Price
            </th>
            <th>Date de création
            </th>
            <th>Illustration
            </th>
        </tr>
        </tfoot>

    </table>

    <script>
        $(document).ready(function () {
            $('#dtBasicExample').DataTable();
            $('.dataTables_length').addClass('bs-select');
        });
    </script>
    </body>
</html>