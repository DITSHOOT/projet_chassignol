<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel de Connexion | @DimitriChassignol</title>
    <link rel="icon" href="logo.jpeg" type="icon">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
</head>
<body class="bg-light d-flex align-items-center justify-content-center" style="height: 100vh;">
    <div class="login-container bg-white p-3 rounded">
        <div class="logo text-center">
            <img src="logo.jpeg" alt="Logo" class="img-fluid rounded-circle">
        </div>
        <div class="form-container">
            <form>
                <div class="form-group">
                    <label for="username">Nom d'utilisateur :</label>
                    <input type="text" id="username" name="username" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="password">Mot de passe :</label>
                    <input type="password" id="password" name="password" class="form-control" required>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success">Se connecter</button>
                </div>
            </form>
            <div class="forgot-password text-center">
                <a href="">Mot de passe oublié ?</a>
            </div>
            <div class="register-link text-center">
                Vous n'avez pas encore de compte ? <a href="index2.php">Créez un ici</a>.
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
