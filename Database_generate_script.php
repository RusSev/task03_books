<?php
$conn = mysqli_connect('localhost','root','413338','task03_books');

if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

function create_script($entities, $count=false) {
    $items=[];

    foreach ($entities as $entity) {
        $table_columns = "";
        $counter = 0;
    
        $prep_doc = fopen($entity . "/" . $entity . "_rdy.txt", 'r');
    
        $qry = "";
    
        while (!feof($prep_doc)) {
            $string = trim(fgets($prep_doc));
    
            if ($table_columns && $string) {
                $qry .= "INSERT INTO {$entity} ({$table_columns}) VALUES ({$string});\r\n";
                $counter++;
            } elseif ($string) {
                $table_columns = $string;
            }
        }
    
        fclose($prep_doc);
    
        $SQLscript = fopen("populate.sql", "a");
        fwrite($SQLscript, $qry);
        fclose($SQLscript);

        array_push($items, $counter);
    }

    if ($count) {
        return $items;
    }
}

function fill_simple($name, $text) {
    $open = fopen($name . "/" . $name . "_rdy.txt", "w");
    fwrite($open, $text);
    fclose($open);
}

function generate_relations($summary) {
    $author_book = "Fk_author_id, Fk_book_id\r\n";
    $book_genre = "Fk_book_id, Fk_genre_id\r\n";
    $i = 0;

    while($i++ < $summary[0]) {
        $n = 0;
        $dice = rand(1,4);
        echo ("dice1: " . $dice . "\r\n");

        while($n++ < $dice) {
            $author_book .= rand(1, $summary[1]) . ", " . $i . "\r\n";
        }
        
        $n = 0;
        $dice = rand(1,2);
        echo ("dice2: " . $dice . "\r\n");

        while($n++ < $dice) {
            $book_genre .= $i . ", " . rand(1, $summary[2]) . "\r\n";
        }
    }

    fill_simple('author_book', $author_book);
    fill_simple('book_genre', $book_genre);
}

$summary = create_script(["books", "authors", 'genres'], true);
generate_relations($summary);
create_script(['author_book', 'book_genre']);


?>