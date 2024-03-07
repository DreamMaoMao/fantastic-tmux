## 配置介绍:
有两种模式,宽松模式(默认),严格模式
严格模式只能使用一些通用快捷键,一般进入vim这种tui应用后可以切到严格模式避免快捷键冲突
宽松模式可以额外的一些Ctrl 和 Alt绑定的快捷键

## 通用快捷键
### 主按键leader
Alt-u

### 严格模式和宽松模式切换 
Ctrl u 

### window
|  表头   | 表头  |
|  ----  | ----  |
|创建win             |leader+ m
|销毁win             |leader+ n
|聚焦前一个win       |leader+ y
|聚焦后一个win       |leader+ u
|切换到win1          |leader+ 1 
|切换到win2          |leader+ 2 
|切换到win3          |leader+ 3 
|切换到win4          |leader+ 4 
|切换到win5          |leader+ 5 
|切换到win6          |leader+ 6 
|切换到win7          |leader+ 7 
|切换到win8          |leader+ 8 
|切换到win9          |leader+ 9 
|重命名win           |leader+ ,

### pane
|  表头   | 表头  |
|  ----  | ----  |
|pane移动到窗口1                     |leader+ shift-1 
|pane移动到窗口2                     |leader+ shift-2 
|pane移动到窗口3                     |leader+ shift-3 
|pane移动到窗口4                     |leader+ shift-4 
|pane移动到窗口5                     |leader+ shift-5 
|pane移动到窗口6                     |leader+ shift-6 
|pane移动到窗口7                     |leader+ shift-7 
|pane移动到窗口8                     |leader+ shift-8 
|pane移动到窗口9                     |leader+ shift-9 
|向右分割pane                        |leader+ p
|向下分割pane                        |leader+ o
|聚焦左边pane                        |leader+ h
|聚焦右边pane                        |leader+ l
|聚焦上边pane                        |leader+ k
|聚焦下边pane                        |leader+ j
|全屏pane                            |leader+ a
|删除pane                            |leader+ i
|pane同步输入                        |leader+ s
|全局选择一个pane放在当前pane右边    |leader+ P
|全局选择一个pane放在当前pane下边    |leader+ o
|把pane放到新窗口                    |leader+ b
|跳转到特定数字pane                  |leader+ q

### 定位
|  表头   | 表头  |
|  ----  | ----  |
|模糊名查找pane          |leader+ f
|全局预览选择pane        |leader+ w

### 配置
|  表头   | 表头  |
|  ----  | ----  |
|重载配置                |leader+ r
|挂起session             |leader+ d

### 复制粘贴
|  表头   | 表头  |
|  ----  | ----  |
|leader+ [               |进入复制模式 
|方向                    |移动光标 
|space                   |切入选中模式 
|方向                    |移动选中 
|enter                   |确认选中 
|leader+ ]               |粘贴

`提示:按住shift键就可以用鼠标进行常规的复制粘贴`

### 把整个终端的文本用$EDITOR编辑
这个功能允许你使用任何tui编辑器去编辑复制当前终端上的内容,比如nvim.
编辑器由`$EDITOR`环境变量确定
|  表头   | 表头  |
|  ----  | ----  |
|进入 | leader e 

## 宽松模式可以使用的快捷键

### pane 
|  表头   | 表头  |
|  ----  | ----  |
|alt + h/j/k/l   |切换pane聚焦
|C-s             |切换布局
|alt + ;         |顺时针交换窗口
|alt + '         |逆时针交换窗口

## pane大小调整
|  表头   | 表头  |
|  ----  | ----  |
|上         |C-k
|下         |C-j
|左         |C-h
|右         |C-l
|最大化     |C-f
`鼠标拖动也可以调整`

### window
|  表头   | 表头  |
|  ----  | ----  |
|alt + n         |创建新窗口
|alt + m         |关闭窗口
|ctlr + h        |切换到左边窗口
|ctrl + l        |切换到右边窗口


## tmux 常用命令
|  表头   | 表头  |
|  ----  | ----  |
|tmux                                           |创建新session
|tmux new -s <session-name>                     |创建指定名字的session
|tmux ls                                        |查看所有session
|tmux at                                        |连接到最新的session
|tmux rename-session <new-name>                 |重命名最近session
|tmux attach -t <session-name>                  |连接到指定名字session
|tmux rename-session -t <old-name> <new-name>   |重命名指定session
|tmux kill-session -t <session-name>            |杀死指定session
|tmux switch -t <session-name>                  |切换到指定session
|tmux kill-server                               |干掉所有,重新启动


## buffer
每次复制模式复制的东西都会存在一个单独的buffer里
打开编辑器
列出全部buffer `leader + =`
选中按下enter就可以粘贴进去
清理buffer `leader + -`

