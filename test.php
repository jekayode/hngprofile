<style type="text/css">
    table {
    margin: 3px;
}
table th {
    font-weight: bold;
    cursor: pointer;
}
table th, table td {
    padding: 3px;
    border: 1px solid #000;
}

</style>

<table>
    <thead id="headings">
        <tr>
            <th id="name">Name</th>
            <th id="pair">Pair</th>
            <th id="buy">Buy</th>
            <th id="sell">Sell</th>
        </tr>
    </thead>
    <tbody id="results">
        <!-- this will be auto-populated -->
    </tbody>
</table>

 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>

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






