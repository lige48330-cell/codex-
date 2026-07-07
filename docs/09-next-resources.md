# 下一步资源：从会用 Codex 到会定制 Codex

这页适合完成前面入门课后，想继续学习 Codex、Skill、MCP 和进阶生态的小白。

重要提醒：

**AI 工具更新很快。涉及安装、权限、价格、模型、MCP、插件时，请以官方文档为准。**

如果你只是想收藏几个入口，先看“官方入口”和“本仓库课程”两节就够了。后面的原资料和进阶生态可以以后再查。

---

## 你现在应该处在哪个阶段

如果你已经学完前面课程，理想状态是：

- 知道 Codex 是 Agent，不只是聊天工具。
- 知道 Codex 会读上下文、使用工具、观察结果。
- 会给 Codex 明确目标、背景、输出格式和约束。
- 知道 Skill 是进阶可选的可复用工作流程。
- 知道 MCP 是进阶可选的外部工具连接方式。
- 知道 API Key、权限、外部系统都有风险。

如果还不熟，建议先回到前几课练习，不要急着装插件、写 Skill、接 MCP。

---

## 官方入口

官方文档是最重要的入口。只要本课程和官方文档不一致，以官方文档为准。

| 资源 | 用途 |
|---|---|
| [Codex 文档首页](https://developers.openai.com/codex) | 了解 Codex 的整体能力、入口和最新文档结构 |
| [Codex Quickstart](https://developers.openai.com/codex/quickstart) | 第一次正式上手 Codex |
| [Codex Windows 文档](https://developers.openai.com/codex/app/windows) | 查看当前 Windows app、终端、sandbox、WSL2 等支持说明 |
| [Codex Customization](https://developers.openai.com/codex/concepts/customization) | 查看当前 AGENTS.md、Memories、Skills、MCP、Subagents 等定制概念 |
| [Codex Troubleshooting](https://developers.openai.com/codex/app/troubleshooting) | 官方排错和恢复模式 |

官方 Customization 页会说明 Codex 的定制能力。你可以先按下面几类粗略理解，具体名称和范围以当前官方页面为准：

- `AGENTS.md`：项目长期规则。
- Memories：历史工作中学到的有用上下文。
- Skills：可复用工作流程和领域经验。
- MCP：连接外部工具和共享系统。
- Subagents：把专门任务交给专门 Agent。

这些能力是互补关系，不是互相替代。

---

## 本仓库课程

本仓库目标是做一个“README 总入口 + docs 课程”的小白学习路径。建议所有入口都从 [README](../README.md) 开始。

建议课程顺序：

| 文件 | 主题 | 阶段 |
|---|---|---|
| [README](../README.md) | 总入口和学习路线 | 必看 |
| [00-start-here](./00-start-here.md) | 今天只做什么 | 第一阶段 |
| [01-what-is-codex](./01-what-is-codex.md) | Codex 是什么 | 第一阶段 |
| [02-first-run](./02-first-run.md) | 第一次运行 | 第一阶段 |
| [03-first-prompts](./03-first-prompts.md) | 第一次提问 | 第一阶段 |
| [04-cmd-for-beginners](./04-cmd-for-beginners.md) | 命令行小白课 | 第一阶段；不会 CMD / PowerShell 可提前看 |
| [05-troubleshooting](./05-troubleshooting.md) | 排错中心 | 第一阶段 |
| [06-agent-basics](./06-agent-basics.md) | Agent 基础 | 第二阶段 |
| [07-skills](./07-skills.md) | Skill 入门 | 进阶可选 |
| [08-mcp](./08-mcp.md) | MCP 入门 | 进阶可选 |
| [09-next-resources](./09-next-resources.md) | 下一步资源 | 学完后查阅 |

---

## 阅读外部教程时怎么判断

学完本课程后，你可能会看到很多 Agent、Skill、MCP 或其他 AI 编程工具教程。它们可以作为背景阅读，但不要一上来照搬安装命令和配置。

尤其当教程使用的是 Claude Code、Claude Desktop、cc-haha 或其他非 Codex 工具时，请只把它们当作 Agent 思路类比，不要直接当成 Codex 的安装路线。

阅读外部资料时，先问自己：

- 它讲的是 Codex，还是另一个工具？
- 它是不是官方文档，还是社区经验？
- 它有没有要求安装第三方程序、配置 Token 或开启高权限？
- 它有没有解释风险和回退方式？
- 它是不是让你复制一长段你看不懂的命令？

如果答案让你不确定，先不要执行。把资料发给 Codex，让它帮你判断哪些是概念、哪些是风险、哪些步骤适合跳过。

### 阅读方式

```text
不要一上来照抄。
先让 Codex 帮你解释：
1. 这份资料讲的是哪个工具？
2. 哪些内容只是概念类比？
3. 哪些命令会修改我的系统或账号配置？
4. 哪些步骤不适合小白现在做？
```

### 进阶参考：先评估 MCP，再考虑安装

如果你看到 MCP 安装教程，本课程建议加上更强的安全提醒：

```text
先评估风险，再安装。
先只读，再写入。
先解释权限，再复制命令。
不要盲目粘贴未知命令。
```

---

## 进阶生态

学完本课程后，可以按下面顺序继续探索。

### 1. AGENTS.md

适合人群：

- 已经有一个固定项目。
- 经常让 Codex 在同一个项目里工作。
- 希望 Codex 记住项目规则。

适合写入：

- 构建和测试命令。
- 文档风格。
- 目录说明。
- 代码规范。
- 审查要求。
- 不要碰的文件或行为。

补充理解：

```text
AGENTS.md 是让 Codex 了解项目规则的入口之一。
不同位置的规则可能有层级关系，具体以 Codex 官方文档为准。
```

不适合写入：

- 临时任务。
- API Key。
- 大段无关教程。
- 不确定的猜测。

### 2. Skills

适合人群：

- 经常重复同一类任务。
- 想把流程沉淀下来。
- 想让团队复用同一套做法。

建议从 instruction-only Skill 开始，也就是先只写说明，不急着写脚本。

### 3. Plugins

适合人群：

- 想安装别人做好的能力包。
- 想把多个 Skill 或集成打包分发。
- 团队里多人使用同一套工作流。

注意：

```text
如果你使用 Codex 插件或能力包，请先查看它自己的说明和清单。
它可能带来 Skill、外部连接或 MCP 相关能力；安装前要看清它会连接什么系统，需要什么权限。
```

### 4. MCP

适合人群：

- Codex 需要访问外部文档、工具或系统。
- 你能判断权限范围和 API Key 风险。
- 你愿意先做只读测试。

常见 MCP 场景：

- 开发文档查询。
- 浏览器检查。
- Figma 设计稿。
- GitHub issue / PR。
- 日志系统。
- 内部知识库。

安全优先级：

```text
官方来源 > 知名维护者 > 自己审过源码的服务 > 来路不明的脚本
```

### 5. Subagents

适合人群：

- 任务可以拆给不同角色。
- 例如一个 Agent 写文档，一个 Agent 做审查，一个 Agent 查资料。
- 已经熟悉 Codex 基础工作流。

小白不需要第一天学习 Subagents。先把单个 Codex 线程用顺，再考虑拆分。

---

## 推荐学习路线

### 第 1 阶段：会用 Codex

目标：

- 会描述任务。
- 会给边界。
- 会让 Codex 先计划。
- 会看 Codex 的修改和验证。

练习：

```text
请只阅读文件并总结，不要修改。
请先给计划，等我确认后再执行。
请列出你验证了什么。
```

### 第 2 阶段：会让 Codex 更懂项目

目标：

- 阅读 README。
- 整理项目规则。
- 编写或改进 AGENTS.md。

练习：

```text
请阅读本项目 README 和 docs，总结适合写进 AGENTS.md 的长期规则。
先不要修改文件，只给建议。
```

### 第 3 阶段：认识 Skill

目标：

- 读懂 `SKILL.md`。
- 知道什么时候需要 Skill。
- 能起草简单 Skill。

练习：

```text
请把我反复使用的这段课程写作流程，整理成一个 SKILL.md 草稿。
不要落盘，只输出草稿。
```

### 第 4 阶段：谨慎学习 MCP

目标：

- 理解 MCP 能力和风险。
- 会让 Codex 评估 MCP。
- 会检查 API Key、权限、外部系统风险。

练习：

```text
我想让 Codex 访问外部文档。
请先判断是否需要 MCP，并列出权限和安全风险。
不要安装任何东西。
```

---

## 安全底线

无论学习哪个阶段，都不要做这些事：

- 不要越权访问系统。
- 不要绕过组织权限。
- 不要使用 jailbreak 获取不该有的能力。
- 不要替换或伪装二进制文件。
- 不要运行来路不明的安装脚本。
- 不要把 API Key 写进公开文件。
- 不要把整个磁盘开放给工具。
- 不要让 Codex 在没有确认时执行高风险写入动作。

Codex 是帮你完成任务的协作者，不是用来绕过规则的工具。

---

## 一个适合收藏的总提示词

当你不知道下一步学什么时，可以问 Codex：

```text
我正在学习 Codex 小白课程。
请根据我当前阶段，帮我判断下一步应该学什么。

我的情况：
1. 我是否会给 Codex 明确任务：【会/不会】
2. 我是否会看它的工具调用：【会/不会】
3. 我是否已经有固定项目：【有/没有】
4. 我是否经常重复同一类任务：【是/否】
5. 我是否需要连接外部工具：【是/否】

请给我一个安全、保守、适合小白的学习建议。
不要推荐越权、绕过、jailbreak 或替换二进制。
```

---

## 最后总结

继续学习时，记住这个顺序：

```text
Codex 基础使用
-> 项目规则 AGENTS.md
-> 可复用流程 Skills
-> 外部工具 MCP
-> 插件和 Subagents 等进阶生态
```

不要急着把所有能力都装上。小白真正需要的不是“功能越多越好”，而是：

> 目标说得清楚，边界给得明确，结果能被验证，权限始终可控。

## 下一步

- 上一页：[MCP 入门](./08-mcp.md)
- 回到总入口：[README](../README.md)
- 官方最新路径：[Codex Quickstart](https://developers.openai.com/codex/quickstart)
