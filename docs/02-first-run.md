# 第一次运行

这页只解决一件事：

**让你完成第一次环境检查或第一次启动尝试。**

先说清楚：这里不是保证安装成功的教程。这是一条适合小白的起步路线。

如果你要看官方完整路径，请以官方文档为准：

- [Codex Quickstart](https://developers.openai.com/codex/quickstart)
- [Codex Windows 文档](https://developers.openai.com/codex/app/windows)

如果你还没有把 GitHub 仓库下载并完整解压，先回到 [README](../README.md) 的“如果你是从 GitHub 来的”。不要在 ZIP 压缩包预览里运行脚本。

---

## 先选你的入口

| 你的情况 | 建议入口 |
|---|---|
| 我是 Windows 用户，拿到了这个仓库 | 先用本仓库的环境检查/启动入口 |
| 我不会 CMD / PowerShell | 先看 [命令行小白课](./04-cmd-for-beginners.md)，再回到本页 |
| 我想走官方当前路径 | 看 [Codex Quickstart](https://developers.openai.com/codex/quickstart)，按当前页面选择入口 |
| 我已经在编辑器里写代码 | 从 [Codex Quickstart](https://developers.openai.com/codex/quickstart) 查当前 IDE 路线 |
| 我习惯命令行 | 从 [Codex Quickstart](https://developers.openai.com/codex/quickstart) 查当前 CLI 路线 |
| 我主要想接第三方模型 / 其它 API | 先理解本页的官方主线，再去看原教程附录 A 的第三方模型接入路线 |
| 我不确定选哪个 | 先用最简单的小任务测试，不急着选长期方案 |

官方 Quickstart 可能会介绍多种入口，例如 App、IDE、CLI、Cloud 等；具体入口名称、推荐顺序和安装方式以当前官方页面为准。本课程只帮你先完成第一次小成功。

---

## 如果你一开始就是为了第三方 API 来的

有些人不是先想走官方默认路线，而是想尽快研究 `CC Switch`、第三方模型或其它 API 接入。

这里先帮你省时间：

- 这套小白课的主线，默认先带你走官方入口。
- `CC Switch`、DeepSeek 等第三方接入，不属于 OpenAI 官方功能。
- 原版《Codex 橙皮书》把这类内容放在扩展路线和附录里。

如果你当前目标是“先用起来、先获得第一次成功”，继续按本页主线走。

如果你当前目标就是“尽快研究第三方模型接入”，可以直接去看原教程：

- [bozhouDev/codex-orange-book](https://github.com/bozhouDev/codex-orange-book)
- 在线阅读版本通常会更容易查目录：[Codex 橙皮书在线阅读](https://vink567.github.io/codex-orange-book/)

建议优先查原教程里的“附录 A：第三方模型接入”或同类章节，再决定是否要走那条路线。

---

## Windows：先做环境检查

本仓库提供两个辅助文件：

- [start-here.cmd](../start-here.cmd)：Windows 启动入口。
- [check-codex-env.ps1](../check-codex-env.ps1)：环境检查脚本。

先确认你在解压后的课程根目录里。这个文件夹里应该能看到 `README.md`、`docs`、`start-here.cmd` 和 `check-codex-env.ps1`。

它们的定位是：

- 帮你启动检查流程。
- 帮你看当前机器缺什么。
- 帮你减少第一步的迷路感。

它们不是：

- 一键安装保证器。
- 万能修复工具。
- 官方安装程序替代品。

---

## 方法 A：使用 Windows 启动入口

如果你不熟悉 PowerShell，可以先从这里开始：

```text
双击 start-here.cmd
```

它的作用是帮你进入检查流程。如果它失败，不代表你全部做错了，可能只是系统策略或路径问题。

常见原因包括：

- PowerShell 不可用。
- 企业设备限制脚本运行。
- 安全策略拦截。
- 文件位置被移动，导致相对路径失效。
- `codex` 命令存在，但还不能正常运行。

遇到这些情况，去看 [排错中心](./05-troubleshooting.md)。

---

## 方法 B：手动运行环境检查

如果你愿意打开 PowerShell，可以在仓库根目录运行：

```powershell
powershell -ExecutionPolicy Bypass -File .\check-codex-env.ps1
```

这条命令只适合运行本仓库里这个你已经确认来源的检查脚本。不要把陌生网页、聊天记录或不明压缩包里的类似 `Bypass` 命令直接复制执行；公司电脑请先问管理员。

它主要检查：

- PowerShell 能不能运行。
- Node.js 在不在。
- npm 能不能用。
- Git 在不在。
- `codex` 命令是否能做基本检查。
- 当前机器离“可以开始”还差什么。

你看到的文字不一定和下面完全一样，但大致可以这样判断。

如果多数项目正常，可能会看到类似：

```text
[OK] PowerShell version: 7.x
[OK] Node.js: v22.x
[OK] npm: 10.x
[OK] Git: git version 2.x
[OK] codex command found
```

如果还有缺项，可能会看到类似：

```text
[ATTENTION] Node.js was not found
[ATTENTION] Git was not found
[ATTENTION] Codex command
```

遇到 `ATTENTION` 不代表你失败了。它只是告诉你下一步该先补哪一块。

如果它提示缺东西，不要一边缺环境，一边硬猜 Codex 为什么不能跑。先按下面分流：

| 缺什么 | 先做什么 | 回来怎样验证 |
|---|---|---|
| Node.js / npm | 用官方或可信来源安装 Node.js | 重新打开 CMD，再运行本页检查命令 |
| Git | 用官方或可信来源安装 Git | 重新打开 CMD，再运行本页检查命令 |
| `codex` 命令 | 回到 [Codex Quickstart](https://developers.openai.com/codex/quickstart) 和 [Codex Windows 文档](https://developers.openai.com/codex/app/windows) | 重新打开 CMD，再运行本页检查命令 |

如果你用的是公司电脑，先问管理员是否允许安装或运行这些工具。

---

## Windows 官方路线：原生与 WSL2

官方 Windows 文档会说明当前 Windows app、终端、sandbox 和 WSL2 相关支持。不同版本和配置可能会变化，所以请按当前官方页面选择路线。

小白阶段建议：

- 先不要纠结原生 Windows 和 WSL2 哪个“更高级”。
- 先选你最能照着做的一条路。
- 能启动、能提问、能完成小任务，就是第一阶段成功。

官方说明见：[Codex Windows 文档](https://developers.openai.com/codex/app/windows)

---

## 第一次启动后，先别做大项目

如果你已经能打开 Codex，下一步不要急着问：

```text
帮我做一个完整网站。
```

先问一个小问题：

```text
请把我当成完全新手。
我现在只是想确认 Codex 能不能帮到我。

请你给我 3 个适合第一次尝试的小任务，
并告诉我应该先选哪一个。
```

第一次的目标是建立信心，不是证明自己能做大项目。

---

## 如果 npm 在 PowerShell 里报错

Windows 上常见情况是 PowerShell 的执行策略挡住了某些脚本。

你可以先试：

```powershell
npm.cmd -v
```

如果能看到版本号，说明 npm 本身大概率是可用的。你遇到的可能只是 PowerShell 执行策略问题。

不要因此直接删除重装一堆东西。先看报错，再按症状排查。

---

## 不要走危险捷径

新手阶段不要为了“快点能用”去尝试这些方式：

- 来路不明的第三方安装包。
- 替换二进制文件。
- 账号绕过。
- 权限规避。
- 不理解含义就开启高风险权限。

Codex 是帮你做事的工具。但系统权限、账号登录、安装来源这些事情，仍然要走正规路径。

---

## 第一次运行完成标准

你不需要做到完美。只要做到下面任意一项，就算第一步有进展：

- 成功运行了一次环境检查。
- 知道当前机器缺什么。
- 成功打开了 Codex。
- 成功发出第一条小白 prompt。
- 知道失败时该去哪里排查。

如果你不知道该把哪段输出发给 Codex，可以复制这段提示词：

```text
我正在学习 Codex 小白课程，刚运行了环境检查。
请先不要让我重装所有东西。
我会把输出贴在下面，请你帮我判断：
1. 哪些项目已经正常
2. 哪些项目需要处理
3. 我下一步只应该先做哪一件事

环境检查输出：
【把从标题开始到最后总结的输出粘贴到这里】
```

## 下一步

- 上一页：[Codex 是什么](./01-what-is-codex.md)
- 下一页：[第一次提问](./03-first-prompts.md)
- 不会打开 CMD / PowerShell：[命令行小白课](./04-cmd-for-beginners.md)
- 环境检查失败：[排错中心](./05-troubleshooting.md)
- 回到总入口：[README](../README.md)
