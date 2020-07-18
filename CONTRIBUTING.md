# 贡献指南

撰写文本推荐使用 Wolfram 笔记本，再通过转换脚本 `nb2md.wls` 转换出 Markdown 文件。

## 笔记本撰写规范

使用标准的样式表和样式。建议阅读 [M2MD 的文档](https://github.com/kubaPod/M2MD/wiki)以了解支持转换的格式。

保存笔记本时建议使用 [`ResourceFunction["SaveReadableNotebook"]`](https://resources.wolframcloud.com/FunctionRepository/resources/SaveReadableNotebook) 或者 [`mathematica-notebook-filter`](https://github.com/JP-Ellis/mathematica-notebook-filter) 得到干净的笔记本文件，避免提交一些乱七八糟的cache到git中：

* 小文件推荐使用 `ResourceFunction["SaveReadableNotebook"]`，也推荐使用我的 [`MirooxUtils`](https://github.com/miRoox/MirooxUtils) 包附带的一个面板来一键快速保存为可读笔记本。
* 大文件，尤其是包含大量图片或者动态的文件，还是推荐使用 `mathematica-notebook-filter`，否则文件大小可能回膨胀地非常大，并且 `ResourceFunction["SaveReadableNotebook"]` 对动态的处理存在一定Bug，可能导致文件损坏。
