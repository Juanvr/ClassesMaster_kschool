#!/bin/bash
FILE_NAME=$1
DELIMITER=$2

NUM_OF_COLUMNS=$(head -1 $FILE_NAME | tr $DELIMITER "\n" | wc -l)

paste <( seq $NUM_OF_COLUMNS) <(head -1 $FILE_NAME | tr "^" "\n") 

