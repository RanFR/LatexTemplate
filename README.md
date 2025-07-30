# RanReport

基于 Latex 中的 article 构建的汇报文档模板。

## 使用方法

参考`example.tex`中的具体示例。

使用`lualatex`编译，建议编译两次，确保交叉引用正常链接。

## 须知

### minted

在 TexLive2024+版本中，minted 包可以自行检测 pyg 文件的位置，不需要设置`outputdir`参数。如果使用 2023 以及以下的 TexLive 版本，需要在 cls 文件中，将 minted 配置以下内容即可正常编译。

```
\RequirePackage[outputdir=build]{minted}
```

## 致谢

对[Krep](https://zhuanlan.zhihu.com/p/618723928)表示感谢，本项目基于他的模板生成。
