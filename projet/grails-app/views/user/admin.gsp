<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 20/09/2020
  Time: 14:58
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <title></title>

    <style>

    body {
        background: linear-gradient(70deg, #e6e6e6, #f7f7f7);
        color: #514B64;
        min-height: 100vh;
    }

    code {
        background: #fff;
        padding: 0.2rem;
        border-radius: 0.2rem;
        margin: 0 0.3rem;
    }




    </style>
</head>

<body>
<!--<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">LeCoinCoin</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Annonces
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/saleAd/index">Liste des annonces</a>
                    <a class="dropdown-item" href="/saleAd/create">Créer une nouvelle annonce</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    User
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/user/index">Liste des users</a>
                    <a class="dropdown-item" href="/user/create">Créer un nouveau user</a>

                </div>
            </li>

        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>-->

<!-- NAVBAR-->
<nav class="navbar navbar-expand-lg py-3 navbar-dark bg-dark shadow-sm">
    <div class="container">
        <a href="#" class="navbar-brand">
            <!-- Logo Image -->
            <img src="/assets/logo.png" width="150" alt="" class="d-inline-block align-middle mr-2">
            <!-- Logo Text -->
            <span class="text-uppercase font-weight-bold">LeCoinCoin</span>
        </a>

        <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler"><span class="navbar-toggler-icon"></span></button>

        <div id="navbarSupportedContent" class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a href="/saleAd/index" class="nav-link"><h5>Liste des annonces</h5></a></li>
                <li class="nav-item"><a href="/saleAd/create" class="nav-link"><h5>Créer une annonce</h5></a></li>
                <li class="nav-item"><a href="/user/list" class="nav-link"><h5>Liste des utilisateurs</h5></a></li>
                <li class="nav-item"><a href="/user/create" class="nav-link"><h5>Créer un utilisateur</h5></a></li>
            </ul>
        </div>
    </div>
</nav>


<!-- FOR DEMO PURPOSE-->
<section class="py-5">
    <div class="container py-5">
        <ol class="pl-3">
            <li class="mb-3">Lecoincoin est une société familiale qui existe depuis 1940, elle est gérée par Mr Gerard
            Lecoincoin et Mme Mathilde Lecoincoin.</li>
            <li class="mb-3">Lecoincoin est une entreprise de dépôt vente touchant à tout ce qui peut se vendre ou
            s’acheter.</li>

        </ol>

    </p>

    </div>
</section>



</body>
</html>