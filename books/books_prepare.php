<?php
$books_list = "ISBN, title, pages\r\n";
$open = fopen('books_new.txt','r');

while (!feof($open)) {
    if ($title = trim(fgets($open))) {
        $ISBN = '';

        for ($i = 0; $i < 13; $i++)  {
            $ISBN .= rand(0,9);
        }

        $books_list .= implode(", ", [$ISBN,  "'" . $title . "'", rand(220, 4000)]) . "\r\n";
    }
}

fclose($open);

$books_prep = fopen("books_rdy.txt", "w");
fwrite($books_prep, $books_list);
fclose($books_prep);