<?php
$array = ['kita', 'atik', 'tika', 'aku', 'kia', 'makan', 'kua'];
$new_array = [];
$array_index = -1;
foreach($array as $a){
    foreach($array as $b){
        if($a == $b){
            //create new array anagram group and push the anagram value
            $array_index++;
            $new_array[$array_index] = [];
            array_push($new_array[$array_index],$b);

            //remove the array comparison
            $array = array_diff($array,array($b));
            continue;
        }
        else{
            if(is_anagram($a,$b)){
                //push the anagram values, and remove it from comparison array
                array_push($new_array[$array_index],$b);
                $array = array_diff($array,array($b));
            }
        }

    }
}

print_r($new_array);

function is_anagram($a, $b) {
    return(count_chars($a, 1) == count_chars($b, 1));
}

