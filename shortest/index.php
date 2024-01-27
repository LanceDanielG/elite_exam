<?php 
    function shortestWordLength($str) {
        $words = explode(" ", $str);
        
        if (count($words) == 0) {
            return 0; // If no words, shortest length is 0
        }
        
        $shortestLength = strlen($words[0]);
        
        for ($i = 1; $i < count($words); $i++) {
            $length = strlen($words[$i]);
            
            if ($length < $shortestLength) {
                $shortestLength = $length;
            }
        }
        return $shortestLength;
    }
    
    // Example usage:
    $string = "Youasdas haveasdas givenasdasdas aasdaa string ofasdasdasd woasdasrds";
    echo shortestWordLength($string); // Output will be the length of the shortest word(s)
     
?>