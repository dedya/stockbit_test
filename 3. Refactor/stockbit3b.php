<?php

function findFirstStringInBracket($text){
    //find text inside bracket
    if(preg_match('#\((.*?)\)#', $text, $match))
        $text = $match[1];
    else    
        return "";
    return $text;
}

echo findFirstStringInBracket2("Output (ini) saja ");

## ini
