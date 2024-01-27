<?php
function findTargetIndices($words, $target) {
    $indices = [];
    foreach ($words as $index => $word) {
        // if (stripos($word, $target) !== false) { // Case-insensitive search
        if (strpos($word, $target) !== false) { // Case-insensitive search
            $indices[] = $index;
        }
    }
    return $indices;
}

// Example usage:
$words = ["I", "TWO", "FORTY", "THREE", 'JEN', "TWO", "tWo", "Two"];
$target = "TWO";
$targetIndices = findTargetIndices($words, $target);
echo "OUTPUT = INDEX " . implode(" and INDEX ", $targetIndices) . "// [".implode(",", $targetIndices)."]" . "\n"; // Output: INDEX 1 and INDEX 5
