# Codex 第一次运行指南

这份指南只解决一件事：

**让第一次接触 Codex 的人，先把第一步走通。**

如果你现在还是纯新手，不要想着一次把所有东西都懂完。  
先完成第一次运行、第一次提问、第一次小成功，就已经很好了。

---

## 先说清楚：这份指南主要面向谁

这份指南里的自动化入口，主要面向：

- Windows
- PowerShell

如果你是 macOS / Linux 用户，这份文档里的思路依然能参考，  
但脚本和 `.cmd` 入口并不是给你直接用的。

你可以优先看官方入口：

- Codex Quickstart： [https://developers.openai.com/codex/quickstart](https://developers.openai.com/codex/quickstart)
- Codex 首页： [https://chatgpt.com/codex/](https://chatgpt.com/codex/)

---

## 第 1 步：先检查环境

如果你在 Windows 上不想处理 PowerShell 执行策略，最省事的方式是直接运行：

- [start-here.cmd](start-here.cmd)

如果你想手动运行 PowerShell 版本，可以这样：

```powershell
powershell -ExecutionPolicy Bypass -File .\check-codex-env.ps1
```

它会帮你检查这些最基本的东西：

- PowerShell 能不能正常跑
- Node.js 在不在
- npm 能不能用
- Git 在不在
- `codex` 命令是不是至少能做最基本的运行检查
- 你的机器现在离“可以开始”还差什么

如果脚本告诉你缺东西，就先把缺的补上，再继续。

---

## 第 2 步：Windows 启动入口什么时候会不行

`start-here.cmd` 不是“保证成功的一键安装器”。  
它更准确的定位是：

**Windows 启动入口。**

它常见会失败的情况包括：

- 机器没有可用的 `powershell`
- 企业设备或安全软件拦截了脚本启动
- 系统策略不允许 `ExecutionPolicy Bypass`
- 文件被移动到不完整位置，导致相对路径失效
- `codex` 命令存在，但实际上不可运行

如果你遇到这些情况，不代表你装错了全部，  
很多时候只是系统策略或安装方式的问题。

---

## 第 3 步：不要急着先懂全部概念

刚开始你可能会看到这些词：

- API
- `CC Switch`
- GitHub
- VS Code

现在不用一口气全懂。

你现阶段只要先知道两件事：

1. Codex 不只是聊天工具，它是更偏“帮你做事”的 AI 助手
2. 如果默认方式不顺，通常还可以换接入方式，所以 `CC Switch` 和 API 要尽早知道

---

## 第 4 步：如果 npm 在 PowerShell 里报错，不要慌

在 Windows 上，一个很常见的问题是：

```text
npm 无法运行，因为 PowerShell 执行策略拦住了它
```

这不代表你装错了，也不代表你不适合继续学。

你可以先这样理解：

- `npm` 本身通常已经装好了
- 只是 PowerShell 默认不让某些脚本直接执行

这时候你可以先试：

```powershell
npm.cmd -v
```

如果这个能跑出来版本号，说明 npm 其实是好的，你只是碰到了 PowerShell 的常见限制。

---

## 第 5 步：先把 Codex 用起来，再慢慢补概念

你现在最需要的不是一下子学会全部功能，  
而是先知道：

- 它能不能帮到你
- 你怎么开始第一次使用
- 第一次适合做什么

对新手来说，第一次最适合做的不是大项目，而是小任务。

例如：

- 让它总结一篇文章
- 让它改写一段难懂的话
- 让它帮你把一个模糊想法整理成步骤
- 让它帮你写一段更清楚的介绍文字

---

## 第 6 步：第一次提问，直接复制仓库里的问题

不要自己硬想第一句怎么说。  
直接去看：

- [PROMPTS.md](PROMPTS.md)

里面已经帮你收好了第一轮最值得问的几句。

如果你现在完全不知道发什么，就先复制这一句：

```text
请把我当成完全新手。
不要默认我懂代码，也不要讲太多专业词。

请你：
1. 用最简单的话解释
2. 告诉我第一步该做什么
3. 告诉我哪些内容我现在可以先跳过
4. 告诉我怎样最快开始用起来
```

---

## 第 7 步：如果你要走官方当前路径

如果你不想只依赖这份仓库，也可以直接看官方当前入口：

- Codex 首页： [https://chatgpt.com/codex/](https://chatgpt.com/codex/)
- Codex Quickstart： [https://developers.openai.com/codex/quickstart](https://developers.openai.com/codex/quickstart)
- Codex Windows 文档： [https://developers.openai.com/codex/app/windows](https://developers.openai.com/codex/app/windows)
- Codex Troubleshooting： [https://developers.openai.com/codex/app/troubleshooting](https://developers.openai.com/codex/app/troubleshooting)

---

## 第 8 步：先完成第一次小成功

第一次小成功，不是“做完一个项目”。

第一次小成功应该是下面这种量级：

- 我终于知道 Codex 大概是干什么的
- 我终于把第一个问题问顺了
- 我终于让它帮我把一个模糊想法整理清楚了
- 我终于跑通了第一次最简单的使用

只要你完成了这一步，后面就会顺很多。

---

## 第 9 步：什么时候回去看原教程

当你已经完成下面这些事情，就适合回去看原教程了：

- 知道 Codex 大概是什么
- 知道它对普通人也有用
- 知道 `CC Switch` 和 API 为什么要早点看
- 完成过一次小任务

这时候再去看原教程：

- GitHub： [bozhouDev/codex-orange-book](https://github.com/bozhouDev/codex-orange-book)
- 在线阅读： [Codex 橙皮书](https://vink567.github.io/codex-orange-book/)

你会比一开始直接硬啃轻松很多。

---

## 最后一句话

第一次接触 Codex，最重要的不是一下子全懂。  
最重要的是：**先用起来，先有一次成功体验。**
