# 命令行小白课：先敢打开 CMD

这节只解决一件事：

**让你敢打开命令行，并且知道第一步该输什么。**

如果你以前从没用过 CMD / PowerShell，不要急。这不是让你学编程，只是让你学会把几句命令交给电脑执行。

---

## 先给你最短版

如果你现在只想先跑起来，不想先学完整页，那就只记这三步：

1. 打开 CMD
2. 进入解压后的课程文件夹
3. 输入 `start-here.cmd`

不会的时候，再回来一段一段看下面的解释。

---

## 你会学到什么

学完这一页，你只需要会这些：

- 打开 CMD
- 看当前文件夹里有什么
- 进入课程文件夹
- 回到上一级文件夹
- 运行环境检查
- 退出窗口

Codex 小白阶段，先会这些就够了。

---

## 1. 打开 CMD

在 Windows 上，最简单的方式是：

1. 按 `Win + R`
2. 输入 `cmd`
3. 按回车

你会看到一个黑色窗口，这就是 CMD。

CMD 里的命令是一行一行输入的。输完一行，按回车，电脑才会执行。

---

## 2. 先试第一条命令：dir

在 CMD 里输入：

```bat
dir
```

它的意思是：**列出当前文件夹里的文件和文件夹。**

如果你不知道自己现在在哪个文件夹，先输入 `dir` 看一眼。这是最常用、最安全的第一步。

---

## 3. 进入课程文件夹：cd

这套课程的工作区示例是：

```text
C:\Users\你的名字\Downloads\codex-github-release
```

这只是示例路径。你真正要用的是自己解压后的文件夹路径。

如果不会找路径，可以这样做：

1. 用文件资源管理器打开解压后的课程文件夹。
2. 点击窗口上方的地址栏。
3. 复制整行路径。
4. 把下面命令里的示例路径换成你复制到的路径。

如果你就在这个位置，可以在 CMD 里输入：

```bat
cd /d "C:\Users\你的名字\Downloads\codex-github-release"
```

如果你的资料解压在别的位置，把上面的路径换成你自己的文件夹路径。路径两边的英文双引号建议保留，尤其是路径里有空格、中文、括号或其他符号时。

例如：

```bat
cd /d "D:\AI分享\入门教程\codex-github-release"
```

这里的意思是：

- `cd`：进入某个文件夹
- `/d`：允许切换到另一个盘，比如从 `C:` 切到 `D:`
- `"C:\Users\你的名字\Downloads\codex-github-release"`：示例文件夹路径，使用时请换成你自己的解压路径

进入后，再输入一次：

```bat
dir
```

如果你看到这些文件，说明位置对了：

- `README.md`
- `start-here.cmd`
- `check-codex-env.ps1`
- `docs`

---

## 4. 进入子文件夹和返回上一级

进入一个子文件夹，用：

```bat
cd 文件夹名字
```

例如进入 `docs`：

```bat
cd docs
```

返回上一级，用：

```bat
cd ..
```

`cd ..` 的意思是：**回到上一级文件夹。**

如果你不小心进错了文件夹，不要慌，先用 `cd ..` 退回来，再用 `dir` 看清楚当前有什么。

---

## 5. 运行 start-here.cmd

当你已经在课程根目录，也就是能看到 `start-here.cmd` 的地方，可以输入：

```bat
start-here.cmd
```

它会启动仓库里的环境检查流程。

请注意：

**`start-here.cmd` 不是保证成功的一键安装器。**

它更像是一个 Windows 启动入口。它会帮你调用环境检查脚本，但不会保证你的电脑一定已经装好了所有东西，也不会替你解决所有系统策略问题。

---

## 6. 如果 start-here.cmd 跑不起来

如果双击没反应，或者 CMD 里运行不顺，可以在 CMD 里输入下面这一整行，手动运行环境检查脚本：

```bat
powershell -ExecutionPolicy Bypass -File .\check-codex-env.ps1
```

这条命令的意思是：

- 用 PowerShell 启动脚本
- 这一次临时允许脚本运行
- 执行当前文件夹里的 `check-codex-env.ps1`

这条命令只适合运行本仓库里这个你已经确认来源的检查脚本。不要把陌生网页、聊天记录或不明压缩包里的类似 `Bypass` 命令直接复制执行；公司电脑请先问管理员。

这个脚本主要检查：

- PowerShell
- Node.js
- npm
- Git
- `codex` 命令是否存在、是否能做基本运行检查

它也是检查工具，不是万能修复工具。

---

## 7. 检查 npm：npm.cmd -v

在 Windows 上，如果你在 PowerShell 里输入：

```powershell
npm -v
```

却遇到报错，先不要急着判断 npm 坏了。PowerShell 有时会拦住脚本形式的命令。

可以先试：

```powershell
npm.cmd -v
```

如果它能显示版本号，说明 npm 基本是可用的。这条命令在 CMD 里也可以试。

---

## 8. 退出 CMD

如果你想关闭命令行窗口，可以输入：

```bat
exit
```

然后按回车。

当然，直接点窗口右上角关闭也可以。但学会 `exit`，以后看教程会更顺。

---

## 9. 小白只需要先记住这 6 条

| 你想做什么 | 输入什么 |
|---|---|
| 看当前文件夹有什么 | `dir` |
| 进入某个文件夹 | `cd 文件夹名字` |
| 切到课程根目录 | `cd /d 你的解压路径` |
| 返回上一级 | `cd ..` |
| 运行入口脚本 | `start-here.cmd` |
| 退出窗口 | `exit` |

---

## 10. 如果看到“不是内部或外部命令”

这通常不是大问题。常见原因是：

- 命令打错了
- 你不在正确的文件夹
- 文件名不存在
- 需要用 `npm.cmd` 而不是 `npm`

先按这个顺序做：

1. 输入 `dir`
2. 看看文件名是否真的在这里
3. 确认有没有输错
4. 再重新运行

如果仍然卡住，去看：[排错中心](./05-troubleshooting.md)

---

## 资料来源

- 本课程：[第一次运行](./02-first-run.md)
- 本课程：[排错中心](./05-troubleshooting.md)
- 本仓库：`start-here.cmd`
- 本仓库：`check-codex-env.ps1`
- 官方文档：[Codex Windows 文档](https://developers.openai.com/codex/app/windows)
- 官方文档：[Codex Troubleshooting](https://developers.openai.com/codex/app/troubleshooting)

---

## 完成标准

你做到下面任意两项，就可以继续：

- 能打开 CMD。
- 能输入 `dir` 看当前文件夹。
- 能用 `cd /d "你的解压路径"` 进入课程根目录。
- 能看到 `README.md`、`docs`、`start-here.cmd`、`check-codex-env.ps1`。

---

## 下一步

- 回到主线：[第一次运行](./02-first-run.md)
- 如果运行检查失败：[排错中心](./05-troubleshooting.md)
- 已经能正常运行 Codex：[Agent 基础](./06-agent-basics.md)
- 回到总入口：[README](../README.md)
