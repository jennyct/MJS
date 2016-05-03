<?php
// Array with names
$a[] = "Austin";
$a[] = "Boston";
$a[] = "Chicago";
$a[] = "Dallas";
$a[] = "El Paso";
$a[] = "Fort Worth";
$a[] = "Greensboro";
$a[] = "Honolulu";
$a[] = "Indianapolis";
$a[] = "Jacksonville";
$a[] = "Kansas City";
$a[] = "Los Angeles";
$a[] = "Miami";
$a[] = "New York City";
$a[] = "Oklahoma City";
$a[] = "Palm Springs";
$a[] = "Quakake";
$a[] = "Raleigh";
$a[] = "San Francisco";
$a[] = "Tucson";
$a[] = "Upton";
$a[] = "Virginia Beach";
$a[] = "Washington";
$a[] = "Xenia";
$a[] = "York";
$a[] = "Zachary";

// get the q parameter from URL
$q = $_REQUEST["q"];

$hint = "";

// lookup all hints from array if $q is different from ""
if ($q !== "") {
    $q = strtolower($q);
    $len=strlen($q);
    foreach($a as $name) {
        if (stristr($q, substr($name, 0, $len))) {
            if ($hint === "") {
                $hint = $name;
            } else {
                $hint .= ", $name";
            }
        }
    }
}

// Output "no suggestion" if no hint was found or output correct values
echo $hint === "" ? "no suggestion" : $hint;
?>

