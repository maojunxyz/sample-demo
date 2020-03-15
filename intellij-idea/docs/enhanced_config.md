# IDEA增强配置


## 链接GVIM
```Settings
Preferences -> Tools -> External Tools
```
点击`+`新增
Name:`gvim`  
Group:`Editors`  
Description:`open current file in gvim`  
Tool Settings  
Program:`/usr/bin/gvim`  
Arguments:`$FilePath$ "+norm $LineNumber$G0$ColumnNumber$lh"`
working directory:`$FileDir$`  
Advanced Options  
勾选`Synchronizw files after execution`
勾选`Open console for tools output`


## 链接Spacemacs
```Settings
Preferences -> Tools -> External Tools
```
点击`+`新增
Name:`emacs`  
Group:`Editors`  
Description:`open current file in emacs`  
Tool Settings  
Program:`/usr/bin/emacs`  
Arguments:`$FilePath$` 如果是Emacs参数为：`-c $LineNumber$:$ColumnNumber$ $FilePath$` //todo spacmacs -c参数不识别 
working directory:`$FileDir$`  
Advanced Options  
勾选`Synchronizw files after execution`
勾选`Open console for tools output`


## 参考链接
- [Using Emacs as an External Editor](https://www.jetbrains.com/help/idea/using-emacs-as-an-external-editor.html)


