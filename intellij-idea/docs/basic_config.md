# idea-config

## Environment
IntelliJ IDEA 2018.2.4 (Ultimate Edition)

## How to use
`File | Import Settings`

## Setting content
- `File | Settings | Editor | Code Style | Java`,`COde Generation`,`Comment Code`,uncheck `Line comment at first column` and check `Add a pace at comment start`.
- `File | Settings | Editor | General | Auto Import`,check Add unambiguous imports on the fly
- `File | Settings | Editor | General | Code Completion`,uncheck `Match case`
- `File | Settings | Editor | General | Editor Tabs`,uncheck `Show tabs in one row` and modify `Tab limit` to `23`

- 自动编译
`File | Settings | Build, Execution, Deployment | Compiler` 
勾选compile project automatically

## background color
position  | path   |  Modification
-------- | --------- | -------------
Console pane | Settings / Editor / Colors & Fonts / Console colors | Console, background
Project view | Settings / File colors | Add,project files,color;Uncheck the 'Use in editor tabs' checkbox.
Main view  | Settings / Editor / Color & fonts / General   |Text, Default text

# Maven依赖
IDEA集成了maven，之前搜索依赖都是通过浏览器复制搜索。其实在
IDEA中已经集成了Maven依赖搜索的功能，打开IDEA的设置，找到下面的路径
```
File | Settings | Build, Execution, Deployment | Build Tools | Maven | Repositories
```
右侧列表有个本地和远程依赖库，选择远程依赖库的update选项进行更新，更新完成后可以通过快捷键`CTRL+INSERT`在Pom文件中搜索依赖了。


## reference
- [How do you change background color in the settings of JetBrain's IDE](https://stackoverflow.com/questions/19411510/how-do-you-change-background-color-in-the-settings-of-jetbrains-ide)
