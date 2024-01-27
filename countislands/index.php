<?php
function convertMatrixToString($matrix) {
    $result = [];
    foreach ($matrix as $row) {
        $stringRow = '';
        foreach ($row as $element) {
            $stringRow .= ($element == 1) ? 'X' : '~';
        }
        $result[] = $stringRow;
    }
    return $result;
}

// Test case
$matrix = [
    [1, 1, 1, 1],
    [0, 1, 1, 0],
    [0, 1, 0, 1],
    [1, 1, 0, 0]
];

$result = convertMatrixToString($matrix);
foreach ($result as $row) {
    echo "$row<br>";
}
?>
