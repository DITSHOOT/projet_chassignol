<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription | @DimitriChassignol</title>
    <link rel="icon" href="logo.jpeg" type="icon">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
</head>
<body class="bg-light">
    <div class="container-fluid h-100">
        <div class="row h-100">
            <div class="col-md-6 d-flex align-items-center justify-content-center">
                <div class="registration-container bg-white p-3 rounded">
                    <div class="logo text-center">
                        <img src="logo.jpeg" alt="Logo" class="img-fluid rounded-circle">
                    </div>
                    <div class="form-container">
                        <form>
                            <!-- Partie gauche -->
                            <div class="form-group">
                                <label for="first-name">Prénom :</label>
                                <input type="text" id="first-name" name="first-name" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="last-name">Nom :</label>
                                <input type="text" id="last-name" name="last-name" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Adresse e-mail :</label>
                                <div class="input-group">
                                    <input type="email" id="email" name="email" class="form-control" placeholder="Votre adresse e-mail" required>
                                    <div class="input-group-append">
                                        <select class="custom-select" id="email-provider" name="email-provider">
                                            <option value="" selected disabled>Choisissez...</option>
                                            <option value="gmail.com">@gmail.com</option>
                                            <option value="hotmail.com">@hotmail.com</option>
                                            <option value="outlook.com">@outlook.com</option>
                                            <option value="autres">@votrenomdedomaine</option>
                                            <!-- Ajoutez d'autres fournisseurs selon vos besoins -->
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <!-- Ajoutez ici les autres champs de la partie gauche -->
                            <div class="form-group">
                                <label for="password">Mot de passe :</label>
                                <input type="password" id="password" name="password" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="confirm-password">Confirmer le mot de passe :</label>
                                <input type="password" id="confirm-password" name="confirm-password" class="form-control" required>
                            </div>
                            <!-- ... (Ajoutez les autres champs de la partie gauche) ... -->
                            <div class="form-group">
                                <label for="address">Adresse postale :</label>
                                <textarea id="address" name="address" class="form-control" placeholder="Votre adresse postale" rows="3" required></textarea>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-6 d-flex align-items-center justify-content-center">
                <div class="registration-container bg-white p-3 rounded">
                    <div class="form-container">
                        <form>
                            <!-- Partie droite -->

                            <div class="form-group">
                                <label for="phone">Numéro de téléphone :</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <select class="custom-select" id="phone-country" name="phone-country" required>
                                            <option value="" selected disabled>Sélectionnez le pays</option>
                                            <option value="+33">+33 (France)</option>
                                            <option value="+1">+1 (États-Unis)</option>
                                            <option value="+44">+44 (Royaume-Uni)</option>
                                            <option value="+49">+49 (Allemagne)</option>
                                            <option value="+81">+81 (Japon)</option>
                                            <option value="+86">+86 (Chine)</option>
                                            <option value="+91">+91 (Inde)</option>
                                            <option value="+7">+7 (Russie)</option>
                                            <option value="+55">+55 (Brésil)</option>
                                            <option value="+1">+1 (Canada)</option>
                                            <option value="+54">+54 (Argentine)</option>
                                            <option value="+61">+61 (Australie)</option>
                                            <option value="+82">+82 (Corée du Sud)</option>
                                            <option value="+234">+234 (Nigéria)</option>
                                            <option value="+27">+27 (Afrique du Sud)</option>
                                            <option value="+971">+971 (Émirats arabes unis)</option>
                                            <option value="+49">+49 (Allemagne)</option>
                                            <option value="+33">+33 (France)</option>
                                            <option value="+39">+39 (Italie)</option>
                                            <option value="+81">+81 (Japon)</option>
                                            <option value="+52">+52 (Mexique)</option>
                                            <option value="+31">+31 (Pays-Bas)</option>
                                            <option value="+64">+64 (Nouvelle-Zélande)</option>
                                            <option value="+47">+47 (Norvège)</option>
                                            <option value="+92">+92 (Pakistan)</option>
                                            <option value="+507">+507 (Panama)</option>
                                            <option value="+51">+51 (Pérou)</option>
                                            <option value="+63">+63 (Philippines)</option>
                                            <option value="+48">+48 (Pologne)</option>
                                            <option value="+351">+351 (Portugal)</option>
                                            <option value="+974">+974 (Qatar)</option>
                                            <option value="+40">+40 (Roumanie)</option>
                                            <option value="+7">+7 (Russie)</option>
                                            <option value="+966">+966 (Arabie saoudite)</option>
                                            <option value="+65">+65 (Singapour)</option>
                                            <option value="+34">+34 (Espagne)</option>
                                            <option value="+46">+46 (Suède)</option>
                                            <option value="+41">+41 (Suisse)</option>
                                            <option value="+90">+90 (Turquie)</option>
                                            <option value="+380">+380 (Ukraine)</option>
                                            <option value="+44">+44 (Royaume-Uni)</option>
                                            <option value="+1">+1 (États-Unis)</option>
                                            <option value="+58">+58 (Venezuela)</option>
                                            <option value="+84">+84 (Vietnam)</option>
                                        </select>
                                    </div>
                                    <input type="tel" id="phone" name="phone" class="form-control" placeholder="Votre numéro de téléphone" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="region">Région :</label>
                                <select id="region" name="region" class="form-control" required>
                                    <option value="">Sélectionnez votre région</option>
                                    <option value="1">01. Ain</option>
                                    <option value="2">02. Aisne</option>
                                    <option value="4">04. Alpes-de-Haute-Provence</option>
                                    <option value="3">03. Allier</option>
                                    <option value="6">06. Alpes-Maritimes</option>
                                    <option value="5">05. Hautes-Alpes</option>
                                    <option value="7">07. Ardèche</option>
                                    <option value="8">08. Ardennes</option>
                                    <option value="9">09. Ariège</option>
                                    <option value="10">10. Aube</option>
                                    <option value="11">11. Aude</option>
                                    <option value="12">12. Aveyron</option>
                                    <option value="13">13. Bouches-du-Rhône</option>
                                    <option value="14">14. Calvados</option>
                                    <option value="15">15. Cantal</option>
                                    <option value="16">16. Charente</option>
                                    <option value="17">17. Charente-Maritime</option>
                                    <option value="18">18. Cher</option>
                                    <option value="19">19. Corrèze</option>
                                    <option value="20">20. Corse-du-Sud</option>
                                    <option value="21">21. Côte-d'Or</option>
                                    <option value="22">22. Côtes-d'Armor</option>
                                    <option value="23">23. Creuse</option>
                                    <option value="24">24. Dordogne</option>
                                    <option value="25">25. Doubs</option>
                                    <option value="26">26. Drôme</option>
                                    <option value="27">27. Eure</option>
                                    <option value="28">28. Eure-et-Loir</option>
                                    <option value="29">29. Finistère</option>
                                    <option value="30">30. Gard</option>
                                    <option value="31">31. Haute-Garonne</option>
                                    <option value="32">32. Gers</option>
                                    <option value="33">33. Gironde</option>
                                    <option value="34">34. Hérault</option>
                                    <option value="35">35. Ille-et-Vilaine</option>
                                    <option value="36">36. Indre</option>
                                    <option value="37">37. Indre-et-Loire</option>
                                    <option value="38">38. Isère</option>
                                    <option value="39">39. Jura</option>
                                    <option value="40">40. Landes</option>
                                    <option value="41">41. Loir-et-Cher</option>
                                    <option value="42">42. Loire</option>
                                    <option value="43">43. Haute-Loire</option>
                                    <option value="44">44. Loire-Atlantique</option>
                                    <option value="45">45. Loiret</option>
                                    <option value="46">46. Lot</option>
                                    <option value="47">47. Lot-et-Garonne</option>
                                    <option value="48">48. Lozère</option>
                                    <option value="49">49. Maine-et-Loire</option>
                                    <option value="50">50. Manche</option>
                                    <option value="51">51. Marne</option>
                                    <option value="52">52. Haute-Marne</option>
                                    <option value="53">53. Mayenne</option>
                                    <option value="54">54. Meurthe-et-Moselle</option>
                                    <option value="55">55. Meuse</option>
                                    <option value="56">56. Morbihan</option>
                                    <option value="57">57. Moselle</option>
                                    <option value="58">58. Nièvre</option>
                                    <option value="59">59. Nord</option>
                                    <option value="60">60. Oise</option>
                                    <option value="61">61. Orne</option>
                                    <option value="62">62. Pas-de-Calais</option>
                                    <option value="63">63. Puy-de-Dôme</option>
                                    <option value="64">64. Pyrénées-Atlantiques</option>
                                    <option value="65">65. Hautes-Pyrénées</option>
                                    <option value="66">66. Pyrénées-Orientales</option>
                                    <option value="67">67. Bas-Rhin</option>
                                    <option value="68">68. Haut-Rhin</option>
                                    <option value="69">69. Rhône</option>
                                    <option value="70">70. Haute-Saône</option>
                                    <option value="71">71. Saône-et-Loire</option>
                                    <option value="72">72. Sarthe</option>
                                    <option value="73">73. Savoie</option>
                                    <option value="74">74. Haute-Savoie</option>
                                    <option value="75">75. Paris</option>
                                    <option value="76">76. Seine-Maritime</option>
                                    <option value="77">77. Seine-et-Marne</option>
                                    <option value="78">78. Yvelines</option>
                                    <option value="79">79. Deux-Sèvres</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="country">Pays :</label>
                                <select id="country" name="country" class="form-control" required>
                                    <option value="">Sélectionnez votre pays</option>
                                    <option value="Afghanistan">Afghanistan</option>
                                    <option value="Albanie">Albanie</option>
                                    <option value="Algérie">Algérie</option>
                                    <option value="Andorre">Andorre</option>
                                    <option value="Angola">Angola</option>
                                    <option value="Antigua-et-Barbuda">Antigua-et-Barbuda</option>
                                    <option value="Argentine">Argentine</option>
                                    <option value="Arménie">Arménie</option>
                                    <option value="Australie">Australie</option>
                                    <option value="Autriche">Autriche</option>
                                    <option value="Azerbaïdjan">Azerbaïdjan</option>
                                    <option value="Bahamas">Bahamas</option>
                                    <option value="Bahreïn">Bahreïn</option>
                                    <option value="Bangladesh">Bangladesh</option>
                                    <option value="Barbade">Barbade</option>
                                    <option value="Bélarus">Bélarus</option>
                                    <option value="Belgique">Belgique</option>
                                    <option value="Belize">Belize</option>
                                    <option value="Bénin">Bénin</option>
                                    <option value="Bhoutan">Bhoutan</option>
                                    <option value="Bolivie">Bolivie</option>
                                    <option value="Bosnie-Herzégovine">Bosnie-Herzégovine</option>
                                    <option value="Botswana">Botswana</option>
                                    <option value="Brésil">Brésil</option>
                                    <option value="Brunéi">Brunéi</option>
                                    <option value="Bulgarie">Bulgarie</option>
                                    <option value="Burkina Faso">Burkina Faso</option>
                                    <option value="Burundi">Burundi</option>
                                    <option value="Cabo Verde">Cabo Verde</option>
                                    <option value="Cambodge">Cambodge</option>
                                    <option value="Cameroun">Cameroun</option>
                                    <option value="Canada">Canada</option>
                                    <option value="République centrafricaine">République centrafricaine</option>
                                    <option value="Tchad">Tchad</option>
                                    <option value="Chili">Chili</option>
                                    <option value="Chine">Chine</option>
                                    <option value="Colombie">Colombie</option>
                                    <option value="Comores">Comores</option>
                                    <option value="Congo (Congo-Brazzaville)">Congo (Congo-Brazzaville)</option>
                                    <option value="Costa Rica">Costa Rica</option>
                                    <option value="Croatie">Croatie</option>
                                    <option value="Cuba">Cuba</option>
                                    <option value="Chypre">Chypre</option>
                                    <option value="Tchéquie (République tchèque)">Tchéquie (République tchèque)</option>
                                    <option value="Danemark">Danemark</option>
                                    <option value="Djibouti">Djibouti</option>
                                    <option value="Dominique">Dominique</option>
                                    <option value="République dominicaine">République dominicaine</option>
                                    <option value="Équateur">Équateur</option>
                                    <option value="Égypte">Égypte</option>
                                    <option value="El Salvador">El Salvador</option>
                                    <option value="Guinée équatoriale">Guinée équatoriale</option>
                                    <option value="Érythrée">Érythrée</option>
                                    <option value="Estonie">Estonie</option>
                                    <option value="Eswatini">Eswatini</option>
                                    <option value="Éthiopie">Éthiopie</option>
                                    <option value="Fidji">Fidji</option>
                                    <option value="Finlande">Finlande</option>
                                    <option value="France">France</option>
                                    <option value="Gabon">Gabon</option>
                                    <option value="Gambie">Gambie</option>
                                    <option value="Géorgie">Géorgie</option>
                                    <option value="Allemagne">Allemagne</option>
                                    <option value="Ghana">Ghana</option>
                                    <option value="Grèce">Grèce</option>
                                    <option value="Grenade">Grenade</option>
                                    <option value="Guatemala">Guatemala</option>
                                    <option value="Guinée">Guinée</option>
                                    <option value="Guinée-Bissau">Guinée-Bissau</option>
                                    <option value="Guyane">Guyane</option>
                                    <option value="Haïti">Haïti</option>
                                    <option value="Saint-Siège">Saint-Siège</option>
                                    <option value="Honduras">Honduras</option>
                                    <option value="Hongrie">Hongrie</option>
                                    <option value="Islande">Islande</option>
                                    <option value="Inde">Inde</option>
                                    <option value="Indonésie">Indonésie</option>
                                    <option value="Iran">Iran</option>
                                    <option value="Irak">Irak</option>
                                    <option value="Irlande">Irlande</option>
                                    <option value="Israël">Israël</option>
                                    <option value="Italie">Italie</option>
                                    <option value="Jamaïque">Jamaïque</option>
                                    <option value="Japon">Japon</option>
                                    <option value="Jordanie">Jordanie</option>
                                    <option value="Kazakhstan">Kazakhstan</option>
                                    <option value="Kenya">Kenya</option>
                                    <option value="Kiribati">Kiribati</option>
                                    <option value="Koweït">Koweït</option>
                                    <option value="Kirghizistan">Kirghizistan</option>
                                </select>
                            </div>
                            <!-- Ajoutez ici les autres champs de la partie droite -->
                            <div class="form-group">
                                <label for="gender">Sexe :</label>
                                <select id="gender" name="gender" required>
                                    <option value="other">Cisgenre</option>
                                    <option value="other">Transgenre</option>
                                    <option value="other">Agender</option>
                                    <option value="other">Gender fluide</option>
                                    <option value="other">Queer</option>
                                    <option value="other">Pangenre/option>
                                    <option value="other">Bispirituel</option>
                                    <option value="other">Neutrois</option>
                                    <option value="other">Demi-genre</option>
                                    <option value="other">Agenre</option>
                                    <option value="other">Intersexe</option>
                                    <option value="other">Sans genre</option>
                                    <option value="other">Bigenre</option>
                                    <option value="other">Intergenre</option>
                                    <option value="other">Trosième genre</option>
                                    <option value="other">Androgyne</option>
                                    <option value="other">Autres</option>
                                    <option value="other">Iel</option>
                                    <option value="male">Homme</option>
                                    <option value="female">Femme</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="birthdate">Date de naissance :</label>
                                <input type="date" id="birthdate" name="birthdate" required>
                            </div>
                            <div class="form-group">
                                <label for="marital-status">État civil :</label>
                                <select id="marital-status" name="marital-status" required>
                                    <option value="single">Célibataire</option>
                                    <option value="married">Marié(e)</option>
                                    <option value="divorced">Divorcé(e)</option>
                                    <option value="widowed">Veuf/Veuve</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" id="terms" name="terms" required>
                                <label for="terms">J'accepte les conditions d'utilisation</label>
                            </div>
                            <div class="form-group">
                                <button type="submit">S'inscrire</button>
                            </div>
                        </form>
                        <div class="login-link text-center">
                            Vous avez déjà un compte ? <a href="inscription.php">Connectez-vous ici</a>.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
