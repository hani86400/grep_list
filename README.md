# my_grep: grep from list of patterns

### Method_1: commands

##### Generate unmatches using 2 steps
```
grep  -Ff patterns.txt data.txt     >   match.txt # STEP_1 Generate   matches
grep -vFf match.txt    patterns.txt > unmatch.txt # STEP_2 Generate unmatches 
```


#### Eaxample:

##### patterns.txt
```
DDD
VVV
111
222
KKK
```

##### data.txt
```
AAA
BBB
CCC
DDD
EEE
FFF
GGG
HHH
III
JJJ
KKK
LLL
MMM
NNN
OOO
PPP
QQQ
RRR
SSS
TTT
UUU
VVV
WWW
XXX
YYY
ZZZ
```

##### run first command
```
grep  -Ff patterns.txt data.txt     >   match.txt # STEP_1 Generate   matches
```
##### match.txt
```
DDD
KKK
VVV
```


##### run second command
```
grep -vFf match.txt    patterns.txt > unmatch.txt # STEP_2 Generate unmatches 
```
##### unmatch.txt
```
111
222
```



### Method_2: script
```
chmod +x grep_list.sh
./grep_list.sh patterns.txt match.txt
```

##### output:
```
1: DDD FOUND
2: VVV FOUND
3: 111 NOT_FOUND
4: 222 NOT_FOUND
5: KKK FOUND
```


