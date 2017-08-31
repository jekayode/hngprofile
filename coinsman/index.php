<?php include("coins.php"); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Popular Cryptocurrencies</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/script.js"></script>
</head>
<body>
    <div id="banner">
        <img src="img/coin.svg" id="icon" width="32" height="32">
        <p> WILDFIRE</p>
    </div>
    <h2 id="heading">Most Popular Cryptocurrencies</h2>
    <h5>Sorted by popularity, in descending order</h5>
    <div class="container">
        <?php foreach($data as $coin) { ?>
        <div id="one"class="currency">
            <div><p>1</p><p class="currency-name"><?php echo $coin['name']; ?></p></div>
            <p class="bought second">Buys: <?php echo $coin['buy']; ?> BTC</p>            
            <p class="sold third">Sells: <?php echo $coin['sell']; ?> Units</p>
            <p class="status fourth"><span class="fa fa-arrow-up"><?php echo "Total Trade ".$coin['total_trade']; ?></span></p>
        </div>
        <?php } ?>
    </div>

     <!--<div id="observations">
        <h4>Trade observations</h4>
        <ul>
            <li class="observation">Etherum is the most sold coin</li>
            <li class="observation">Kobo is declining in popularity</li>
            <li class="observation">Observation 3</li>
            <li class="observation">Observation 4</li>            
        </ul>
    </div> --> 
</body>
</html>
