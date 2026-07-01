# 常见问题与故障排除

这份文件是给第一次接触 Codex 的新手准备的。  
如果你在安装、启动、第一次使用时卡住了，先来这里找答案。

---

## 1. 我不懂代码，也能用吗？

可以。

这套内容本来就是按“完全新手”来整理的。  
你第一次不需要会写代码，也不需要先懂 Git、GitHub、VS Code。

你可以先拿 Codex 做这些事情：

- 总结一篇文章
- 改写一段难懂的话
- 整理一个模糊想法
- 把一件事拆成步骤
- 写一段更清楚的介绍文字

---

## 2. 双击 `start-here.cmd` 没反应怎么办？

先检查这几件事：

1. 你是不是在完整解压后的文件夹里
2. 文件名是不是还是 `start-here.cmd`
3. 你的 Windows 有没有拦截脚本运行
4. 企业电脑或安全软件有没有限制

如果双击不行，试手动运行 PowerShell 版本：

```powershell
powershell -ExecutionPolicy Bypass -File .\check-codex-env.ps1
```

---

## 3. PowerShell 提示脚本被禁止运行怎么办？

这是 Windows 上很常见的问题，不代表你装错了。

你可以直接用这个方式运行：

```powershell
powershell -ExecutionPolicy Bypass -File .\check-codex-env.ps1
```

它会临时绕开当前这次执行限制。

---

## 4. `npm` 报错怎么办？

如果你在 PowerShell 里直接输入 `npm -v` 报错，很可能不是 npm 没装，而是 PowerShell 拦住了它。

先试：

```powershell
npm.cmd -v
```

如果能看到版本号，说明 npm 是好的。

---

## 5. 脚本说 `codex` 命令存在，但不一定能运行，是什么意思？

意思是：

- 你的系统里可能已经有 `codex` 这个命令
- 但它不一定真的能正常启动

常见原因包括：

- 安装方式有问题
- 权限不够
- WindowsApps 路径问题
- 企业安全策略限制

这时候建议你直接看官方入口：

- [Codex Quickstart](https://developers.openai.com/codex/quickstart)
- [Codex Windows docs](https://developers.openai.com/codex/app/windows)
- [Codex troubleshooting](https://developers.openai.com/codex/app/troubleshooting)

---

## 6. 为什么这套脚本只支持 Windows？

因为现在这套自动化入口是按：

- Windows
- PowerShell
- `.cmd`

来做的。

如果你是 macOS / Linux 用户，这份仓库里的中文说明仍然能看，  
但脚本不会直接适配你。

你应该优先走官方 Quickstart：

- [https://developers.openai.com/codex/quickstart](https://developers.openai.com/codex/quickstart)

---

## 7. 我是不是一定要先学懂 `CC Switch` 和 API？

不用一上来全学懂。

你现阶段只要先知道：

- 默认方式不顺，不代表你学不会
- 很多时候只是接入方式没选对
- 所以 `CC Switch` 和 API 要尽早知道，但不要求第一天全吃透

---

## 8. 我第一次最适合做什么？

不要一上来做大项目。

第一次更适合做这些小任务：

1. 总结一篇文章
2. 改写一段难懂的话
3. 整理一个模糊想法
4. 拆一件事情的步骤
5. 写一段更清楚的说明

---

## 9. 如果我完全不会命令行怎么办？

先看：

- [cmd-beginner-guide.md](cmd-beginner-guide.md)

你只需要先学会这几件事：

- 打开 CMD
- 进入文件夹
- 运行 `start-here.cmd`

这就够开始了。

---

## 10. 什么时候该回去看原教程？

当你已经完成这些事情，就很适合回去看原教程了：

- 知道 Codex 大概是什么
- 跑过一次环境检查
- 问出过第一个问题
- 完成过一次小任务

这时候再看原教程会顺很多：

- [bozhouDev/codex-orange-book](https://github.com/bozhouDev/codex-orange-book)
- [在线阅读](https://vink567.github.io/codex-orange-book/)

---

## 11. 如果我还卡住怎么办？

你可以按这个顺序排查：

1. 先看 [cmd-beginner-guide.md](cmd-beginner-guide.md)
2. 再看 [first-run-guide.md](first-run-guide.md)
3. 再运行 `check-codex-env.ps1`
4. 再去看官方 Quickstart 和 Troubleshooting

如果只是第一次接触就卡住，这很正常。  
你不是不适合，只是还在过第一道门槛。
