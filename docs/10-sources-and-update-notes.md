# 教程更新：来源与采用原则

更新调研日期：2026-07-14。本文只记录资料选择和待更新方向；所有具体安装、登录、权限与命令以 OpenAI 当前官方文档及用户界面为准。

## 优先采用的中文 GitHub 教程

### 1. [geekjourneyx/awesome-codex-guide](https://github.com/geekjourneyx/awesome-codex-guide)

这是本次更新的首要社区参考。仓库是 MIT 许可的中文 Codex 导览，入口覆盖入门路线、CLI、`AGENTS.md`、权限安全、MCP / Skills / Plugins / Subagents、排障和工作流。[README](https://github.com/geekjourneyx/awesome-codex-guide/blob/main/README.md) 明确将官方 Quickstart 和 `openai/codex` 列为事实入口；其[入门路线](https://github.com/geekjourneyx/awesome-codex-guide/blob/main/docs/getting-started/README.zh-CN.md)建议先在可回滚的 Git 仓库中从低风险任务开始，再学习扩展能力。

可采用的教学原则：

- 首次使用先做“阅读代码、解释、补测试或修小 bug”等低风险任务。
- 修改前确认工作区状态，完成后运行已有测试并审查 diff。
- `AGENTS.md` 写清项目事实、测试命令、不可修改范围和危险操作的确认要求。
- 把 MCP、插件、Skills 和子代理放到主线之后；安装前说明其可访问的文件、网络和账号权限。

### 2. [stormzhang/ai-coding-guide](https://github.com/stormzhang/ai-coding-guide)

这是面向小白的较完整中文 AI 编程指南，其中包含 Codex 专题。其 [README](https://github.com/stormzhang/ai-coding-guide/blob/main/README.md)声明以 Codex 官方文档核对功能、命令和默认行为，并采用“可照跑、可自验”的教学方式。适合借鉴课程组织、术语解释和每个动手步骤都给出验证标准的写法；不把其中任何具体命令、模型、套餐或界面描述当作长期不变的事实。

## 官方交叉核对入口

- [OpenAI Codex Quickstart](https://developers.openai.com/codex/quickstart)：安装和首次运行。
- [OpenAI Codex 文档](https://developers.openai.com/codex)：CLI、App、配置与功能的当前定义。
- [openai/codex](https://github.com/openai/codex)：官方 CLI 仓库及发行说明。
- [AGENTS.md 指南](https://developers.openai.com/codex/guides/agents-md)：项目指令文件的当前用法。

## 本次已采用的更新

1. 保留 Windows 新手主线，但在首次运行章节强调：先在可回滚 Git 仓库中执行低风险、可验证的任务；改动后审查 diff 并运行相关测试。
2. 将 `AGENTS.md` 章节收紧为项目事实和可执行规则：测试/构建命令、代码约定、不可触碰文件、危险操作需确认；不要堆砌泛泛而谈的提示词。
3. 将 Skills、MCP、插件、子代理明确标为进阶内容；新增“先看权限范围，再安装或授权”的安全提醒，避免推荐一键脚本、代理、中转或要求提交密钥的方案。
4. 涉及登录方式、Windows 支持、版本、模型、套餐、命令参数和界面位置的句子逐一改为链接官方入口，避免把社区教程中的时效性描述写成保证。

## 未采用的范围

未把第三方账号/充值、代理或中转、修改客户端、未经审计的一键安装脚本作为教程内容。这类内容风险高、时效短，且不符合本仓库的 Windows 新手、安全优先定位。

以上内容为总结与链接，不复制第三方教程的正文或图片。
