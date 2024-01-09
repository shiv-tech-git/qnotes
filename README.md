## QNotes

### Install
Creates shortcuts for CRUD operation.  
Add source folder to __PATH__
```
qn install
```
open new terminal session or   
```
. ~/.$(basename ${SHELL})rc
```
### Uninstall
```
qn uninstall
```
### __Update__  
```
qn update
```
___


__QNotes__ works in __CRUD__ terminology.  
__C__ - create  
__R__ - read  
__U__ - update  
__D__ - delete  

<title_hint> will be handled this way:  
*this is my title hint* -> *"this.\*is.\*my.\*title.\*hint"*
And pass it to grep.  
If you have collision like this:
```
start note
note
note end
```
You can specify note title like this:  
^note   ->  __note__ and __note end__  
note$   ->  __start note__  and __note__  
^note$  ->  __note__  


### __Create__
```
qn --create <note_title>
qn -c <note_title>
qnc <note_title>
```
`qnc this is my note title`
Creates _/this_is_my_note_title_ in __QN_DATA_DIR__
`qnc little/hierarchy/for/my/notes` Creates _/little/hierarchy/for/my_ folder in  __QN_DATA_DIR__ and notes _file_ in it. 

### __Read__  
```
qn --read <title_hint>
qn -r <title_hint>
qnr <title_hint>
```
`qnr my note` gives output
```
this_is_my_note_title
        note body
```

### __Update__

```
qn --update <title_hint>
qn -u <title_hint>
qnu <title_hint>
```

### __Delete__
```
qn --delete <title_hint>
qn -d <title_hint>
qnd <title_hint>
```

### __Tree structure of notes__  
```
qn --tree
qn -t
```

### __List of notes__  
__tree__ must be installed
```
qn --all
qn -a
```

### __Help__  
```
qn --help
qn -h
```

