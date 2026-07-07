# Skill 入门：给 Codex 的可复用工作流程

这页适合已经理解 Codex 是 Agent、想知道“Skill 到底是什么”的小白。

先说结论：

**Skill 是给 Codex 使用的可复用工作流程。**

Skill 是进阶、可选能力，不是第一天必须学。先会用 Codex，再考虑 Skill。

如果你只是想快速了解，先读到“什么时候不需要 Skill”就可以停下。后面的结构、样例和练习适合以后再回来查。

---

## 用一句话理解 Skill

你可以把它理解成：

```text
普通提示词：这一次告诉 Codex 怎么做。
Skill：把一类任务的做法保存下来，以后遇到类似任务让 Codex 参考。
```

例如：

- 写文档有写文档的流程。
- 处理 PDF 有处理 PDF 的流程。
- 做表格有做表格的注意事项。
- 做前端页面有设计和验收规则。
- 做代码评审有固定检查清单。

如果这些流程经常重复，就适合整理成 Skill。

---

## Skill 不是第一天必须学

小白刚开始学 Codex，不需要马上创建 Skill。

先按这个顺序来：

1. 会把任务说清楚。
2. 会让 Codex 先读材料。
3. 会让 Codex 给计划。
4. 会让 Codex 验证结果。
5. 经常重复同一类任务后，再考虑 Skill。

如果你只是偶尔让 Codex 改一段文字，直接写提示词就够了。

---

## 官方概念怎么理解

OpenAI Codex 文档会在 customization 相关内容里说明 Skills。你可以先把它理解成：给 Codex 增加面向特定任务的工作流程和经验。

一个 Skill 通常是一个文件夹，里面常见会有 `SKILL.md` 文件，也可以附带脚本、参考资料和素材。具体格式和必填字段以官方文档为准。

一个常见结构像这样：

```text
my-skill/
├── SKILL.md
├── scripts/
├── references/
└── assets/
```

其中最重要的是 `SKILL.md`。

官方入口：[Codex Customization](https://developers.openai.com/codex/concepts/customization)

---

## SKILL.md 长什么样

常见的 `SKILL.md` 通常包含两部分：

1. 顶部元信息：`name` 和 `description`
2. 下面的正文说明：具体工作流程、规则、示例

示例：

```markdown
---
name: course-draft
description: Use when drafting beginner-friendly Codex course docs from provided local materials.
---

# Course Draft Skill

When using this skill:

1. Read the provided source materials first.
2. Keep Codex as the main subject.
3. Write for complete beginners.
4. Mark advanced topics as optional.
5. Return Markdown drafts unless the user explicitly asks to edit files.
```

对小白来说，先不用急着写这个文件。你只要先理解：

> `description` 会帮助 Codex 判断这个 Skill 什么时候相关；正文会帮助 Codex 理解想到后怎么做。实际是否使用还取决于当前任务、上下文和产品机制。

---

## Skill 样例说明了什么

你不需要一开始就下载很多 Skill 样例。先理解一个 `SKILL.md` 通常长什么样就够了。

如果你以后看到别人分享的 Skill，请把它当作结构参考；是否采用、安装或改写，仍然以 Codex 官方文档和你自己的项目需求为准。

常见类型包括：

| 示例 | 说明 |
|---|---|
| `docx` | 处理 Word 文档，例如读取、创建、编辑 `.docx` |
| `pdf` | 处理 PDF，例如提取文字、表单、图片等 |
| `xlsx` | 处理表格文件 |
| `frontend-design` | 做前端界面时的设计规范 |
| `doc-coauthoring` | 协作文档写作流程 |
| `skill-creator` | 帮助创建和改进 Skill |
| `mcp-builder` | 和 MCP 服务开发有关的流程 |

这些例子说明 Skill 不只是“一个提示词”，它通常会包含：

- 触发条件。
- 工作步骤。
- 工具选择建议。
- 常见坑。
- 验证方式。
- 必要时使用的脚本或参考资料。

---

## 什么时候适合用 Skill

适合用 Skill 的场景：

- 同一类任务会重复出现。
- 团队有固定流程。
- 任务需要固定验收标准。
- 任务需要参考较长文档。
- 任务需要调用固定脚本。
- 你经常纠正 Codex 的同一种错误。

例如：

```text
每次写课程都要：
1. 面向小白
2. Codex 做主角
3. 不推荐越权和绕过
4. Skill/MCP 标记为进阶可选
5. 输出 Markdown 草稿
```

如果这个流程会反复使用，就可以考虑做成 Skill。

---

## 什么时候不需要 Skill

不需要 Skill 的场景：

- 只做一次的小任务。
- 一两句话就能说清楚。
- 没有固定流程。
- 没有可复用价值。
- 还没摸清楚任务怎么做。

例如：

```text
请把这段话改得更口语化。
```

这种任务直接提示词就够了，不需要专门做 Skill。

---

## Skill、AGENTS.md、MCP 有什么区别

| 名称 | 解决什么问题 | 小白理解 |
|---|---|---|
| `AGENTS.md` | 项目长期规则 | “这个项目每次都要遵守的规矩” |
| Skill | 可复用工作流程 | “遇到这类任务按这套做法做” |
| MCP | 连接外部工具和系统 | “让 Codex 能访问外部能力” |

举例：

```text
AGENTS.md：本项目文档必须使用简体中文。
Skill：写课程页时按“目标、概念、练习、小结”的结构来。
MCP：连接外部文档、GitHub、浏览器或设计工具。
```

它们不是互相替代，而是分工不同。

---

## 小白怎么安全学习 Skill

推荐路线：

1. 先读一个现成 Skill。
2. 让 Codex 帮你解释它。
3. 先写“提示词版流程”。
4. 确认这个流程会重复使用，再考虑整理成 Skill。

你可以这样问 Codex：

```text
请解释这个 SKILL.md 是做什么的。
请用小白语言说明：
1. 它什么时候会触发
2. 它会指导 Codex 做什么
3. 它可能依赖哪些工具
```

---

## 一个适合小白的判断题

看到一个任务时，问自己：

```text
这件事以后会重复做 3 次以上吗？
```

如果答案是“不会”，先别做 Skill。

再问：

```text
这件事有没有固定步骤、固定标准、固定资料？
```

如果答案是“有”，Skill 可能值得学。

---

## 本课练习

### 练习 1：读 Skill 样例

先用这个极简样例练习，不需要额外下载文件：

```markdown
---
name: beginner-explainer
description: Use when the user asks to explain a technical idea for complete beginners.
---

# Beginner Explainer

When using this skill:

1. Ask what the user already knows.
2. Use short sentences and concrete examples.
3. Avoid advanced terms unless you explain them first.
4. End with one small next step.
```

让 Codex 解释：

```text
请用小白语言解释这个 Skill：
1. 它解决什么问题？
2. 它什么时候应该触发？
3. 它正文里最重要的 3 条规则是什么？
```

### 练习 2：把重复提示词改成 Skill 草稿

先不要写文件，只让 Codex 起草：

```text
我经常让你写 Codex 小白教程。
请帮我起草一个 instruction-only 的 SKILL.md 草稿。
要求：
1. 不要落盘
2. 用简体中文解释
3. 包含 name、description 和正文流程
4. 强调 Skill/MCP 是进阶可选
```

---

## 小结

今天只要记住：

1. **Skill 是 Codex 的可复用工作流程。**
2. **Skill 是进阶可选，不是第一天必须学。**
3. **常见的 `SKILL.md` 会包含 `name`、`description` 和正文说明；具体要求以官方文档为准。**
4. **经常重复、步骤固定、需要参考资料的任务，才适合做成 Skill。**

## 下一步

- 上一页：[Agent 基础](./06-agent-basics.md)
- 下一页：[MCP 入门](./08-mcp.md)
- 卡住了：[排错中心](./05-troubleshooting.md)
- 回到总入口：[README](../README.md)
