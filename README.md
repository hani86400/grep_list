# my_grep


##### Generate unmatches
```
grep  -Ff patterns.txt data.txt     >   match.txt # STEP_1 Generate   matches
grep -vFf match.txt    patterns.txt > unmatch.txt # STEP_2 Generate unmatches 
```

