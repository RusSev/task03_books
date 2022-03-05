<?php
$authors_list = "Name, Surname\r\n";
$open = fopen('../authors.txt','r');

while (!feof($open)) {
    if ($name = trim(fgets($open))) {
        $name = explode(" ", $name);
        $authors_list .= "'" . implode("', '", $name) . "'\r\n";
    }
}

fclose($open);

$authors_prep = fopen("authors_rdy.txt", "w");
fwrite($authors_prep, $authors_list);
fclose($authors_prep);