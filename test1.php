<?php



    function select()
    {
      $dsn = 'mysql:host=localhost;dbname=coins';
      $pdo = new PDO($dsn, 'root', '');
      $query = $pdo->prepare('SELECT buy FROM previous');
      if ($query->execute()) {
        $time = $query->fetchAll(PDO::FETCH_ASSOC);
        return $time;
      }
    }

    $resource = select();

    foreach ($resource as $key => $resource) {

        echo $resource['buy'];
        echo "<br>";
    }

 ?>
