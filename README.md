# Codex 小白入门课

这是一份给完全新手看的 Codex 中文入门资料。

目标不是让你第一天学完所有概念，而是帮你先做到三件事：

1. 知道 Codex 大概是什么。
2. 知道自己第一步该做什么。
3. 完成一次小任务，获得第一次成功体验。

如果你已经会编程，也可以把它当成一份 Codex 上手清单；如果你完全不会代码，也可以从这里开始。

最后核对日期：2026-07-14。

---

## 一键入口

[![下载 ZIP](https://img.shields.io/badge/%E4%B8%8B%E8%BD%BD%20ZIP-%E7%AB%8B%E5%8D%B3%E4%B8%8B%E8%BD%BD-blue?style=for-the-badge)](https://github.com/lige48330-cell/codex-/archive/refs/heads/main.zip)
[![从这里开始](https://img.shields.io/badge/%E4%BB%8E%E8%BF%99%E9%87%8C%E5%BC%80%E5%A7%8B-30%E5%88%86%E9%92%9F%E8%B7%AF%E7%BA%BF-green?style=for-the-badge)](docs/00-start-here.md)
[![CMD 小白课](https://img.shields.io/badge/CMD-%E5%B0%8F%E7%99%BD%E8%AF%BE-orange?style=for-the-badge)](docs/04-cmd-for-beginners.md)
[![排错中心](https://img.shields.io/badge/%E6%8E%92%E9%94%99%E4%B8%AD%E5%BF%83-%E5%85%88%E5%88%AB%E6%85%8C-red?style=for-the-badge)](docs/05-troubleshooting.md)

> 说明：GitHub 页面上的按钮可以帮你下载和跳转文档，**不能直接在网页里运行 `start-here.cmd`**。  
> 正确方式是：**先下载 ZIP，解压后，再在本地双击 `start-here.cmd`。**

---

## 第一次来，先做这两步

第一次来只看这一节就够了：先把文件放对位置，再按一条路线往下读。

### 第 1 步：如果你在 GitHub，先下载并解压

1. 在 GitHub 页面点击绿色的 `Code`。
2. 选择 `Download ZIP`。
3. 把下载到的 ZIP 文件完整解压，不要在压缩包预览里直接运行脚本。
4. 打开解压后的文件夹，确认能看到这些内容：

```text
README.md
docs
start-here.cmd
check-codex-env.ps1
```

看到这些文件后，你才算进入了课程根目录。后面教程里的路径示例都请换成你自己解压后的文件夹路径。

GitHub 下载下来的 ZIP 名字可能带有仓库名、分支名或一串后缀，不一定正好叫 `codex-github-release.zip`。只要解压后能看到上面这些文件，就是正常的。

如果你拿到的是别人转发的 ZIP，也只解压一次，优先打开里面的 `README.md`。不要在多个 ZIP、多个同名文件夹之间来回切换。

### 第 2 步：按这一条阅读路线走

如果你是第一次学习 Codex，默认只按这个顺序走：

```text
README.md
docs/00-start-here.md
docs/01-what-is-codex.md
docs/02-first-run.md
docs/03-first-prompts.md
```

如果你不会 CMD / PowerShell，读到 `docs/02-first-run.md` 需要运行命令时，临时跳去补一页 `docs/04-cmd-for-beginners.md`，补完再回到 `docs/02-first-run.md`。

看到其他额外文件或目录时，先不要点进去。小白第一天只需要走通上面这条主线。

---

## 如果你今天只想做一件事

那就只做这一件：

1. 下载 ZIP
2. 解压
3. 打开 [从这里开始](docs/00-start-here.md)
4. 跟着做完一次环境检查

这就已经足够了。

---

## 有明确问题时查这里

如果你已经知道自己卡在哪里，可以直接查这一表。否则就按上面的默认路线走。

| 你的情况 | 先看哪里 | 目标 |
|---|---|---|
| 我完全不懂 Codex | [从这里开始](docs/00-start-here.md) | 先走一遍 30 分钟路线 |
| 我想先知道 Codex 是什么 | [Codex 是什么](docs/01-what-is-codex.md) | 建立正确理解 |
| 我想马上跑第一次 | [第一次运行](docs/02-first-run.md) | 完成环境检查和第一次启动 |
| 我不知道第一句问什么 | [第一次提问](docs/03-first-prompts.md) | 复制提示词直接试 |
| 我不会 CMD / PowerShell | [命令行小白课](docs/04-cmd-for-beginners.md) | 学会打开窗口、进入文件夹、运行脚本 |
| 我卡住了 | [排错中心](docs/05-troubleshooting.md) | 按症状排查 |
| 我想理解 Agent、Skill、MCP | [Agent 基础](docs/06-agent-basics.md)，再看 [Skill](docs/07-skills.md) / [MCP](docs/08-mcp.md) | 进入进阶概念 |

---

## 30 分钟首次成功路线

如果你不知道从哪开始，就按这个顺序来：

1. 读 [从这里开始](docs/00-start-here.md)，先知道今天只做什么。
2. 读 [Codex 是什么](docs/01-what-is-codex.md)，用人话理解它。
3. 读 [第一次运行](docs/02-first-run.md)，选择入口并尝试环境检查。
4. 如果你在这一步发现自己不会 CMD / PowerShell，先跳去 [命令行小白课](docs/04-cmd-for-beginners.md)，补完再回到第 3 步。
5. 打开 [第一次提问](docs/03-first-prompts.md)，复制一条提示词，完成一个小任务。
6. 如果失败，不要硬猜，去 [排错中心](docs/05-troubleshooting.md) 按症状查。

命令行课是分支，不是新的主线。只在你卡在打开 CMD、进入文件夹或运行脚本时再去看。

第一次成功不需要做大项目。

你只需要完成类似这样的事情：

- 让 Codex 总结一段文字。
- 让 Codex 把一段难懂的话改写成小白版。
- 让 Codex 帮你把一个模糊想法整理成步骤。
- 让 Codex 解释一个报错，并告诉你下一步。

---

## 课程目录

### 第一部分：先上手

1. [从这里开始](docs/00-start-here.md)
2. [Codex 是什么](docs/01-what-is-codex.md)
3. [第一次运行](docs/02-first-run.md)
4. [第一次提问](docs/03-first-prompts.md)

### 第二部分：先排除门槛

5. [命令行小白课](docs/04-cmd-for-beginners.md)
6. [排错中心](docs/05-troubleshooting.md)

### 第三部分：再理解进阶概念

7. [Agent 基础](docs/06-agent-basics.md)
8. [Skill 入门](docs/07-skills.md)
9. [MCP 入门](docs/08-mcp.md)
10. [下一步资源](docs/09-next-resources.md)
11. [教程来源与更新说明](docs/10-sources-and-update-notes.md)

---

## Windows 工具和下载

这个仓库里保留了几个 Windows 友好的辅助文件：

- [start-here.cmd](start-here.cmd)：Windows 启动入口。
- [check-codex-env.ps1](check-codex-env.ps1)：环境检查脚本。

请注意：

- `start-here.cmd` 不是保证成功的一键安装器。
- `check-codex-env.ps1` 主要做环境检查，不会替你解决所有系统问题。
- 本仓库的默认路线不依赖第三方安装包，也不把旧教程或第三方资料当作第一入口。
- 请先完整解压整个仓库，再运行脚本；不要在 ZIP 压缩包预览里双击脚本。
- Windows 企业设备、安全策略、PowerShell 执行策略、网络环境都可能影响结果。
- 如果脚本失败，先看 [排错中心](docs/05-troubleshooting.md)，再看官方文档。

---

## 这套资料支持什么

当前主线面向：

- 完全新手。
- 中文读者。
- 想先学 Codex 的用户。
- Windows 用户，尤其是不熟悉 CMD / PowerShell 的用户。

当前不做这些承诺：

- 不承诺一键安装成功。
- 不替代官方文档。
- 不默认推荐第三方账号绕过、二进制替换、越权配置或 jailbreak。
- 不把 MCP、Skill、Subagent 当成第一天必须学的内容。

这套资料的定位是：

> 先帮你走通第一步，再把你送回官方路径和更完整的教程。

---

## 和原资料的关系

本仓库参考并导读了《Codex 橙皮书》及社区教程，但不是原书全文。

原教程：

- [bozhouDev/codex-orange-book](https://github.com/bozhouDev/codex-orange-book)
- [Codex 橙皮书在线阅读](https://vink567.github.io/codex-orange-book/)

建议你先用本仓库完成第一次小成功，再回去系统读原教程。

---

## 官方入口

Codex 变化很快。安装、登录、Windows 支持、Skill、MCP 等信息，以官方文档为准：

- [Codex 首页](https://chatgpt.com/codex/)
- [Codex Quickstart](https://developers.openai.com/codex/quickstart)
- [Codex Windows 文档](https://developers.openai.com/codex/app/windows)
- [Codex Customization](https://developers.openai.com/codex/concepts/customization)
- [Codex Troubleshooting](https://developers.openai.com/codex/app/troubleshooting)

---

## 其他资料

如果你是第一次来，优先按上面的课程目录走，不要一开始翻所有文件。

如果你在别的地方看到旧教程、第三方安装包、MCP 配置示例、Skill 大包或其他 Agent 生态资料，先把它们当作背景材料，不要当成 Codex 小白第一天的默认路线。

---

## 给完全新手的一句话

不要急着先懂所有术语。

先让 Codex 帮你完成一件很小的事。  
只要这一步走通，后面的概念就会慢慢有意义。

---

## License

This repository and release package are provided under an all-rights-reserved notice. See [LICENSE](LICENSE).

本仓库和发布包采用保留全部权利的授权声明。请查看 [LICENSE](LICENSE)。
