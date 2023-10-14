## QNOTES

Use __zsh__ for hightlighting.  
Install __tree__ for __qnt__ (quick note tree).  
Ubuntu:
``` bash
sudo apt install tree
```
Init
```
. ./qn_init.sh
```

In QNotes there is 2 concepts:
 * quick notes
 * notes

__Quich notes__ is just a single line. Short thought, command line, path, module name, etc.  
__Note__ is just a small regular note. Something a little more complicated like snippet of code or config file.  

QNotes works in __CRUD__ terminology.

## Quick notes 
### __Quick note create__
```
qnc create symbol link: ln -s /path/to/file /path/to/link
```
### __Quick note read__  
``` bash
qnr link 
```
output:
``` bash
create symbol link: ln -s /path/to/file /path/to/link
link note for collision
```

### __quick note update__

``` bash
qnu link 
```

output:
```
create symbol link: ln -s /path/to/file /path/to/link
link note for collision
Specify note:
```
If there are some notes with the same hint, enter more specific hint. When only one note left, nano editor will be opened by default. Do edit without new lines. Close editor and save changes.  

### __quick note delete__

``` bash
qnd link 
```

output:
```
create symbol link: ln -s /path/to/file /path/to/link
link note for collision
delete [yes/no/spec]:  
``` 

__yes__ - delete all notes  
__no__ (or any symbols) - cancel  
__spec__ - do more specific hint   

``` bash
link note for collision
delete [yes/no/spec]: spec
Specify note: 
```

## Notes
### __note create__
Qnotes will handle your arguments like this:  
*this is my hint* -> *"this.\*is.\*my.\*hint"*
And pass it to grep.

``` bash
qnc -n other/home/note_example
```
Where __other/home/note_example__ if the note name.
The editor will be opened. Make a note.

### __note read__
``` bash
qnr -n example
```
output:
``` bash
example quick note for collision
other/home/note_example.txt
        I need to come up fith something better
other/home/note_example_collision.txt
        Every body loves 42 number.
```
You don't need to pass __-n__ flag when do __read__. Qnotes searches in qnotes and notes.  

### __note update__
``` bash
qnu -n example
```
output:
``` bash
other/home/note_example.txt
other/home/note_example_collision.txt
Specify note: 
```
Same thing as qnotes. Perform hints until one note left.

### __note delete__  
``` bash
qnd -n example
```
output:
``` bash
other/home/note_example.txt
other/home/note_example_collision.txt
Specify note:
```
The same as qnote. Perform hints until one note left. You can't delete multiple notes like qnote.

___
### __note tree__  
``` bash
qnt
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


