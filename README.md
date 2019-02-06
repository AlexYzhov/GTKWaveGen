# 字符波形生成器

![image](https://github.com/AlexYzhov/GTKWaveGen/blob/master/tmp/example.png)

本程序可对输入的字符串进行取模，生成便于verilog使用$readmemb指令读取的memb.txt文件。

通过在testbench中dump memb.txt文件，可以很容易地生成字符时序图，起到在朋友圈 **炫耀** 的作用。

---

## 工程组成

文件夹在初始状态下包含：

1. ***/.vscode*** 文件夹
2. /tmp 文件夹
3. ***mem.v*** 文件
4. memb.txt 文件
5. ***readme.mkd*** 文件
6. testbench.v 文件
6. ***wave_gen.exe*** 可执行程序

其中，被斜体并加粗标注的文件/文件夹被设置为**只读**属性，**切勿**在使用过程中，手动修改其内容

其次，**testbench.v**文件的内容由wave_gen.exe维护，**切勿**在使用过程中，手动修改其内容

最后，**/tmp** 文件夹用于存储iverilog编译产生的中间文件

---

## 准备工作

1. 确保PC上具有 ***.net framework*** 运行时
2. 安装 ***vscode*** , 同时建议安装 **Verilog HDL/SystemVerilog** 插件
3. 安装 ***iverilog***, ***vvp***,和 ***gtkwave***，并添加好 **iverilog**, **vvp**, **gtkwave** 三条命令的环境变量

---

## 使用说明

1. 打开 ***wave_gen.exe*** ，输入你想显示的字符串内容，回车或鼠标单击功能按钮
2. 使用 ***vscode*** 打开文件夹(也可使用 ***code .*** 命令)
3. 按下 ***ctrl+shift+b*** 快捷键，若工作正常，则会自动打开 ***GTKWave*** 
4. 在 ***GTKWave*** 中Append ***clk*** 和 ***out*** 信号，将窗体缩放到合适大小后，使用 ***alt+shift+f*** 快捷键自动缩放视角
5. 双击波形窗口旁侧的 ***out*** 信号，展开其端口，显示出字符取模后产生的时序激励

注： wave_gen.exe本身并不能在linux下运行，但vscode使用的脚本支持在linux环境下运行。即在linux环境下，本环境依然可以一键编译testbench