## QNOTES
### Optional
Use __zsh__ for hightlighting.  
Install __tree__ for quick note tree (__qn tree__).  
Ubuntu:
``` bash
sudo apt install tree
```
___

### Init
```
. ./qn_init.sh
```

___

In __QNotes__ there is 2 concepts:
 * named notes
 * unnamed notes

__Unnamed note__ is just a single line. Short thought, command line, path, module name, etc.  
__Named note__ in its turn is a small regular memo. Something a little more complicated. Like snippet of code or config.  

__QNotes__ works in __CRUD__ terminology.  
__C__ - create  
__R__ - read  
__U__ - update  
__D__ - delete  

__Qnotes__ will handle your hint like this:  
*this is my hint* -> *"this.\*is.\*my.\*hint"*
And pass it to grep.  
If you have collision like this:
```
start note
      note
      note end
```
You can specify note like this:  
^note   ->  __note__ and __note end__  
note$   ->  __note__ and __note end__  
^note$  ->  __note__  


### __Quick note create__
Unnamed note
```
qnc create symbol link: ln -s /path/to/file /path/to/link
```
Named note
``` bash
qnc -n other/home/note_example
```
Where __other/home/note_example__ if the note name.
The editor will be opened.

### __Quick note read__  
``` bash
qnr link 
```
output:
``` bash
create symbol link: ln -s /path/to/file /path/to/link
link note for collision
other/bash/link_note
        Multi line
        link note
```

### __quick note update__

``` bash
qnu link 
```

output:
```
create symbol link: ln -s /path/to/file /path/to/link
link note for collision
other/bash/link_note
Specify note:
```
If multiple notes displayed for the same hint, enter more specific hint. When only one note left, editor will be opened. Do edit and save changes.  

### __quick note delete__

``` bash
qnd link 
```

output:
```
create symbol link: ln -s /path/to/file /path/to/link
link note for collision
other/bash/link_note
Specify note:  
``` 
If there is note collision, perform hint until one note left. You can't delete multiple.
```
link note for collision
delete [yes/no]:  
``` 

___
### __qn__  
Named notes tree
``` bash
qn tree
```
```
qn -t
```
output:
```
.
└── other
    ├── home
    │   ├── note_example_collision.txt
    │   └── note_example.txt
    └── shop.txt

2 directories, 3 files
```

List all named notes
```
qn named
```
```
qn -n
```

List all unnamed notes
```
qn unnamed
```
```
qn -u
```


