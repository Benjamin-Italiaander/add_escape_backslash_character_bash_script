## Add escape backslash scripted in bash
# I made a small script to add a escape character behind some characters

this is a small script you can use to generate a output with escape characters. 
Sometimes it handy to add them. 


You can fill a variable and add this to the command or integrate this in some bash script

```shell

#for example you can do this
input=$(cat somefile.txt); ./this_script.sh $input

```


Sometimes you need to set some things in case you use a asteriks or if you only see one word, first run

```shell
set +f
GLOBIGNORE=*
```

you can add a ascape or change it to anything else. Double quotes are done seperatly because i was not able to run it from the array.

