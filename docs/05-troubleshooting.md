# 排错中心：按症状一步步查

这页是给 Codex 小白准备的。

如果你卡住了，不要先猜自己是不是“不适合学”。大多数第一次卡住，都是路径、权限、命令行、安装方式或系统策略问题。

先按症状查。

---

## 先记住四句话

1. `start-here.cmd` 不是保证成功的一键安装器。
2. `check-codex-env.ps1` 主要负责检查环境，不负责修好所有问题。
3. 不要为了排错直接关闭安全软件；如果是公司电脑，优先问管理员或换到自己可控的环境。
4. `ExecutionPolicy Bypass` 只用于本仓库里这个你确认来源的检查脚本，不要照抄到陌生脚本上。

---

## 先看这 3 个最高频问题

- **我找不到文件夹**：先确认 ZIP 已完整解压，再看“症状 1”。
- **脚本不能跑**：先在 CMD 里运行 `start-here.cmd`，失败再看“症状 2”和“症状 3”。
- **看不懂报错**：直接复制完整报错，按“症状 8”的提示词问 Codex。

---

## 快速排错表

| 症状 | 常见原因 | 先试什么 | 下一步 |
|---|---|---|---|
| 不知道怎么打开命令行 | 没用过 CMD | 按 `Win + R`，输入 `cmd`，回车 | 看 [命令行小白课](./04-cmd-for-beginners.md) |
| 输入命令后提示“不是内部或外部命令” | 命令打错、文件不在当前文件夹、环境变量没生效 | 输入 `dir`，确认文件是否在这里 | 重新进入课程根目录后再试 |
| 找不到 `start-here.cmd` | 当前目录不对，或资料没有完整解压 | 输入 `dir` | 用 `cd /d "你的解压路径"` 进入课程根目录 |
| 在 ZIP 里双击脚本失败 | 还没有完整解压 | 先解压整个 ZIP | 打开解压后的文件夹再运行 |
| 双击 `start-here.cmd` 没反应 | Windows 策略、脚本启动被限制、窗口一闪而过 | 在 CMD 里手动运行 `start-here.cmd` | 再试 PowerShell 检查命令 |
| `start-here.cmd` 运行失败 | 它只是入口脚本，不是万能安装器 | 运行本页的 PowerShell 检查命令 | 只对本仓库检查脚本使用，不要用于陌生脚本 |
| PowerShell 提示脚本禁止运行 | 执行策略限制 | 用本页的 PowerShell 检查命令 | 不要改全局策略，先只做本次检查 |
| `npm -v` 报错 | PowerShell 拦住 npm 脚本 | 运行 `npm.cmd -v` | 如果仍失败，再检查 Node.js/npm 安装 |
| 脚本说找不到 Node.js | Node.js 不在 PATH，或未安装 | 关闭并重新打开 CMD 后再运行检查 | 用官方或可信来源安装 Node.js 后再回来检查 |
| 脚本说找不到 Git | Git 不在 PATH，或未安装 | 关闭并重新打开 CMD 后再运行检查 | 用官方或可信来源安装 Git 后再回来检查 |
| 脚本说找不到 `codex` | Codex 命令不可用或 PATH 没生效 | 重新打开终端，再运行检查脚本 | 看 Codex Windows 文档和 Troubleshooting |
| 脚本说 `codex` 存在但不一定能运行 | 命令存在，但基本运行检查失败 | 重新开终端后再试 | 可能是安装方式、权限、WindowsApps 路径或系统策略问题 |
| Codex 里终端不是我想用的 | Codex App 终端能力会随版本和配置变化 | 在 Codex 设置里检查 Terminal 相关选项 | 以当前 Codex Windows 文档和 App 设置为准 |
| 公司电脑限制很多 | 企业安全策略、管理员权限、网络策略 | 不要关闭安全软件 | 问管理员，或换到个人可控环境 |
| 看不懂报错 | 报错信息太长或术语太多 | 把完整报错复制给 Codex，让它按小白方式解释 | 让 Codex 只给“第一步该做什么” |

---

## 症状 1：我不知道自己在哪个文件夹

先输入：

```bat
dir
```

看当前文件夹里有什么。

如果看不到这些内容：

- `README.md`
- `start-here.cmd`
- `check-codex-env.ps1`
- `docs`

说明你可能不在课程根目录。

可以输入：

```bat
cd /d C:\Users\你的名字\Downloads\codex-github-release
```

这里的 `C:\Users\你的名字\Downloads\codex-github-release` 只是示例路径。如果你的资料在桌面、下载目录或其他盘，请换成自己的解压位置。不会找路径时，在文件资源管理器地址栏点击一次，复制整行路径。

然后再输入：

```bat
dir
```

---

## 症状 2：我运行不了 start-here.cmd

先确认你在正确的文件夹里：

```bat
dir
```

如果能看到 `start-here.cmd`，再运行：

```bat
start-here.cmd
```

如果还是不行，改用手动检查：

```powershell
powershell -ExecutionPolicy Bypass -File .\check-codex-env.ps1
```

这条命令只适合运行本仓库里这个你已经确认来源的检查脚本。不要把陌生网页、聊天记录或不明压缩包里的类似 `Bypass` 命令直接复制执行；公司电脑请先问管理员。

记住：`start-here.cmd` 只是帮你调用检查脚本。它不是保证成功的一键安装器。

---

## 症状 3：PowerShell 说脚本被禁止

这是 Windows 上很常见的问题。它不代表你完全装错了。

先用这条：

```powershell
powershell -ExecutionPolicy Bypass -File .\check-codex-env.ps1
```

这里的 `Bypass` 是针对这一次运行。小白阶段不建议一上来修改系统级策略。

同时要记住：这不是“修复安全策略”，只是让这一次 PowerShell 进程按指定策略运行你明确选择的脚本。只对本仓库的 `check-codex-env.ps1` 使用，不要用于未知脚本。

---

## 症状 4：npm 报错

如果这个报错：

```powershell
npm -v
```

先试：

```powershell
npm.cmd -v
```

如果能看到版本号，说明 npm 基本可用。你遇到的可能只是 PowerShell 执行脚本时的限制。

---

## 症状 5：Codex 命令存在，但跑不起来

`check-codex-env.ps1` 会检查 `codex` 命令是否存在，也会做最基本的运行检查。

如果它提示：

```text
codex command was found, but it may not actually run correctly.
```

常见原因包括：

- 安装方式不匹配
- 权限不足
- WindowsApps 路径问题
- 企业设备策略限制
- 终端刚装完工具后没有重启

先做这些：

1. 关闭 CMD / PowerShell
2. 重新打开 CMD
3. 进入课程根目录
4. 再运行检查脚本

在 CMD 里输入下面两行：

```bat
cd /d C:\Users\你的名字\Downloads\codex-github-release
powershell -ExecutionPolicy Bypass -File .\check-codex-env.ps1
```

如果你的资料不在这个路径，请替换第一行的文件夹路径。

如果仍然失败，去看官方文档：

- [Codex Windows 文档](https://developers.openai.com/codex/app/windows)
- [Codex Troubleshooting](https://developers.openai.com/codex/app/troubleshooting)

---

## 症状 6：Codex App 里的终端和教程不一样

Codex App 的可用终端环境可能随版本和配置变化。常见候选可能包括：

- PowerShell
- Command Prompt
- Git Bash
- WSL

如果你是完全小白，先不要频繁切换。优先用课程里的 CMD / PowerShell 路线走通一次。

如果你已经会一点 Linux，或者项目本来就是 Linux 风格，再考虑 WSL。

最终能选哪些终端，以当前 App 设置和官方 Windows 文档为准。

---

## 症状 7：我用的是公司电脑

公司电脑可能有这些限制：

- 不允许脚本运行
- 不允许某些命令联网
- 不允许安装或更新工具
- 路径、权限、终端行为和个人电脑不同

这时不要直接关闭安全软件。更稳妥的做法是：

1. 把报错复制下来
2. 问公司管理员是否允许运行相关工具
3. 如果只是学习，换到个人可控电脑上练习

---

## 症状 8：我完全看不懂报错

把报错复制给 Codex，直接这样问：

```text
请把我当成完全小白。
下面是我看到的报错。

请你只做三件事：
1. 用一句话告诉我它大概是什么意思
2. 告诉我最可能的原因
3. 告诉我下一步先试哪一条命令

报错如下：
【把报错粘贴在这里】
```

如果你运行的是本仓库的环境检查脚本，尽量从下面这行开始复制：

```text
Codex 小白环境检查 / Codex Environment Checker
```

一直复制到最后的“下一步”或官方入口。这样 Codex 能同时看到 `[OK]`、`[ATTENTION]` 和总结，不会只凭最后一行猜。

第一次排错不要追求理解所有概念。先找到下一步。

---

## 最小排查顺序

如果你不知道从哪查，就按这个顺序：

1. 打开 CMD
2. 输入 `cd /d 你的解压路径`
3. 输入 `dir`
4. 输入 `start-here.cmd`
5. 如果失败，输入 `powershell -ExecutionPolicy Bypass -File .\check-codex-env.ps1`
6. 如果 npm 报错，输入 `npm.cmd -v`
7. 如果还失败，复制完整报错给 Codex

第 2 步的路径要换成你自己的解压位置。如果你的资料在桌面、下载目录或其他盘，请复制那个文件夹的地址栏路径。

---

## 资料来源

- 本课程：[第一次运行](./02-first-run.md)
- 本课程：[命令行小白课](./04-cmd-for-beginners.md)
- 本仓库：`start-here.cmd`
- 本仓库：`check-codex-env.ps1`
- 官方文档：[Codex Windows 文档](https://developers.openai.com/codex/app/windows)
- 官方文档：[Codex Troubleshooting](https://developers.openai.com/codex/app/troubleshooting)

---

## 下一步

- 上一页：[命令行小白课](./04-cmd-for-beginners.md)
- 下一页：[Agent 基础](./06-agent-basics.md)
- 还想复制提示词排错：[第一次提问](./03-first-prompts.md)
- 回到总入口：[README](../README.md)
