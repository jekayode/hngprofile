<?php


/**
**  Call the poloniex API to get all coins available
**
**/
$coins = file_get_contents('currencies.json');

//$coins = file_get_contents('https://poloniex.com/public?command=returnCurrencies');

// Convert JSOn resource to object
$coins = json_decode($coins);

// Convert object to array
$coins = json_decode(json_encode($coins), true);

$data = array();


            // Loop through coins array to get details for each coin
foreach ($coins as $key => $coin) {
    $s = array();

    $coin_delisted = $coin['delisted'];

    $coin_disabled = $coin['disabled'];


  // drop delisted coins
    if ((!$coin_delisted)) {
         // drop disabled coins
        if ((!$coin_disabled)) {
            $i = 1;

            // Get the coin abbreviation example Bitcoin (BTC), Ethereum (ETH)
            $currency = $key;

            // Form a currency pair with the abbreviation example BTC_ETH
            $currencypair = "BTC_".$key;
            // array_push($s, "pair => $currencypair");
            $s["pair"] = $currencypair;

            //Get coin name
            $coin_name = $coin['name'];
            // array_push($s, "name => $coin_name");
            $s["name"] = $coin_name;

            //Get current time in UNIX timestamp
            $now = time();

            //Go 24hrs back
            $then = $now - 86400;

            /**
                    **  Call the poloniex API to get all trade history for the currency pair
                    **
                    **/
            $trades = file_get_contents("https://poloniex.com/public?command=returnTradeHistory&currencyPair=$currencypair&start=$then&end=$now");

            // Convert JSOn resource to object
            $trades = json_decode($trades);

            // Convert object to array
            $trades = json_decode(json_encode($trades), true);

            // Initialize trade buy and trade sell
            $trade_buy = 0;
            $trade_sell = 0;

            // Loop through trade history to get details for each currency pair
            foreach ($trades as $key => $trade) {
                // Check if the type of trade done is a buy or a sell
                if ($trade['type'] == "buy") {
                  // if trade is buy increment trade_buy
                    $trade_buy = $trade_buy + 1;
                } elseif ($trade['type'] == "sell") {
                  // if trade is sell increment trade_sell
                    $trade_sell = $trade_sell + 1;
                }
            }
                    
                            //    array_push($s, "buy => $trade_buy");
                            $s["buy"] = $trade_buy;
                            //    array_push($s, "sell => $trade_sell");
                            $s["sell"] = $trade_sell;
                                       
                               array_push($data, $s);
                            // $data[$i] = $s;

                
             $i++;
        }
    }
}
$json = json_encode($data, true);

echo $json;