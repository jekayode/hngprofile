<?php


/**
**  Call the poloniex API to get all coins available
**
**/
$coins = file_get_contents('currencies.json');

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
usort($data, function($a, $b) {
    return $a['buy'] <=> $b['buy'];
});
$json = json_encode($data, true);
// json_encode($data);
//echo $json;

?>

<table>
    <thead id="headings">
        <tr>
            <th id="f_name">First Name</th>
            <th id="l_name">Last Name</th>
            <th id="age">Age</th>
        </tr>
    </thead>
    <tbody id="results">
        <!-- this will be auto-populated -->
    </tbody>
</table>


<script type="text/javascript">


var arr = [
    {
        name: 'George',
        pair: 'Washington',
        buy: 279,
        sell: 300
    },
     {
        name: 'George',
        pair: 'Washington',
        buy: 279,
        sell: 300
    },
     {
        name: 'George',
        pair: 'Washington',
        buy: 279,
        sell: 300
    },
     {
        name: 'George',
        pair: 'Washington',
        buy: 279,
        sell: 300
    },
     {
        name: 'George',
        pair: 'Washington',
        buy: 279,
        sell: 300
    }
    
];



    $(function() {
    $('#headings th').click(function() {
        var id = $(this).attr('id');
        var asc = (!$(this).attr('asc')); // switch the order, true if not set
        
        // set asc="asc" when sorted in ascending order
        $('#headings th').each(function() {
            $(this).removeAttr('asc');
        });
        if (asc) $(this).attr('asc', 'asc');
        
        sortResults(id, asc);
    });
        
    showResults();
});

function sortResults(prop, asc) {
    arr = arr.sort(function(a, b) {
        if (asc) return (a[prop] > b[prop]);
        else return (b[prop] > a[prop]);
    });
    showResults();
}

function showResults () {
    var html = '';
    for (var e in arr) {
        html += '<tr>'
            +'<td>'+arr[e].name+'</td>'
            +'<td>'+arr[e].pair+'</td>'
            +'<td>'+arr[e].buy+'</td>'
            +'<td>'+arr[e].sell+'</td>'
        +'</tr>';
    }
    $('#results').html(html);
}

</script>





