<?php

    require_once 'functions.php';

 ?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Popular Cryptocurrencies</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <!-- <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/script.js"></script> -->
</head>

<body>
    <div id="banner">
        <img src="img/coin.svg" id="icon" width="32" height="32">
        <p> WILDFIRE</p>
    </div>
    <h2 id="heading">Most Popular Cryptocurrencies for the past 24hrs</h2>
    <h5>Sorted by popularity, in descending order</h5>
    <div class="container">

      <div class="row">

          <div class="col-md-8">

            <?php

                // Lets fetch record from database
                $records = fetchRecords();

                // Initialize counter
                $counter = 1;

                // Loop through records
                foreach ($records as $key => $record) {

             ?>

            <!-- display -->
            <div id="one" class="currency">
                <div><p><?=$counter;?></p><p class="currency-name"><?=$record['coin'];?>  (<?=$record['currencypair'];?>)</p></div>
                <p class="bought">Total no of buy: <?=$record['buy'];?></p>
                <p class="sold">Total no of sell: <?=$record['sell'];?></p>
                <!-- <p class="status"><span class="fa fa-arrow-up"></span> 0.05%</p> -->
            </div>

            <?php
                  $counter++;
                }

                // Get the top coin as the most popular coin
                $most_popular_coin = $records[0];

                // Get the least coin as the least popular coin
                $least_popular_coin = $records[61];
            ?>


          </div>

          <div class="col-md-4">
            <div id="observations">
               <h4>Trade observations</h4>
               <ol>
                   <li class="observation"><b><?=$most_popular_coin['coin']?></b> is the most bought coin with <b><?=$most_popular_coin['buy']?> buys</b> and the most popular right now</li>
                   <li class="observation"><b><?=$least_popular_coin['coin']?></b> is the least bought coin with <b><?=$least_popular_coin['buy']?> buys</b> and the least popular right now</li>
                   <li class="observation">Observation 3</li>
                   <li class="observation">Observation 4</li>
               </ol>
           </div>
          </div>

      </div>



    </div>


<div style="text-align: right;position: fixed;z-index:9999999;bottom: 0; width: 100%;cursor: pointer;line-height: 0;"><a title="Hosted on free web hosting 000webhost.com. Host your own website for FREE." target="_blank" href="https://www.000webhost.com/?utm_source=000webhostapp&amp;utm_campaign=000_logo&amp;utm_medium=website_teamwildfire&amp;utm_content=footer_img"><img src="https://cloud.githubusercontent.com/assets/23024110/20663010/9968df22-b55e-11e6-941d-edbc894c2b78.png" alt="www.000webhost.com"></a></div>

</body></html>
