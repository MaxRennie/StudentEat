<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400&display=swap" rel="stylesheet">
    <title>Quick and affordable student recipes – StudentEat</title>
</head>

<body id="page-{$view_name}">
    <header>
        <div class="page-header-top text-center text-md-start container">
            <a href="index.html"><img src="./img/logo.jpg" alt="StudentEat"></a>
        </div>
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar"
                    aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation"><i
                        class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbar">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="index.php">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?p=categories">Categories</a>
                        </li>
                        {if $user_data}
                            <li class="nav-item">
                                <a class="nav-link" href="index.php?p=account">Account</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="index.php?p=logout">Logout</a>
                            </li>
                        {else}
                            <li class="nav-item">
                                <a class="nav-link" href="index.php?p=login">Login / Register</a>
                            </li>
                        {/if}

                    </ul>
                    <form action="search.html" method="get" class="d-flex">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-dark ms-2" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
    </header>
    <div class="container">

        {block name="body"}{/block}

        <footer class="container mt-4 text-center">
            <p>&copy;StudentEat - Created for educational purposes</p>
        </footer>
        <script src="./js/scripts-vendor.min.js"></script>
        <script src="./js/scripts.min.js"></script>
        <script>
            home.init();
        </script>
        <script src="https://kit.fontawesome.com/a832d2a005.js" crossorigin="anonymous"></script>

</body>

</html>