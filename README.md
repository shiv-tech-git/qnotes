## QNotes

### Install
```
qn install
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

### __Read__  
```
qn --read <title_hint>
qn -r <title_hint>
qnr <title_hint>
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

