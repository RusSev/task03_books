<?php
$genres_list = "name\r\n";
$open = fopen('../genres.txt','r');

while (!feof($open)) {
    if ($name = trim(fgets($open))) {
        $genres_list .= "'" . $name . "'\r\n";
    }
}

fclose($open);

$genres_prep = fopen("genres_rdy.txt", "w");
fwrite($genres_prep, $genres_list);
fclose($genres_prep);