% RanFR 的基础 LaTeX 模板文件
% 基于 article 类构建，适用于中文学术文档
\NeedsTeXFormat{LaTeX2e}[2020/02/02]
\ProvidesClass{ranarticle}[2025/07/29 v0.3.3 RanFR's Latex Template]
\LoadClass{article}

% 中文支持配置，启用 UTF8 编码和中文标题格式
\RequirePackage[UTF8, heading = true]{ctex}

% 页面布局和边距设置
% A4 纸张，左右边距 3.18cm，上下边距 2.54cm
\RequirePackage[a4paper, left=3.18cm, right=3.18cm, top=2.54cm, bottom=2.54cm]{geometry}

% 标题和章节格式控制
\RequirePackage{titlesec}

% 节标题格式定义
% 使用大号粗体，编号与标题间距 1em
\titleformat{\section}{\normalfont\Large\bfseries}{\thesection}{1em}{}

% 摘要标题格式设置 - 与节标题保持一致
% 定义摘要中文名称和环境，使其与节标题具有相同样式
\renewcommand{\abstractname}{\Large\bfseries 摘要}

% 数学公式支持
\RequirePackage{amsmath}    % 基础数学环境和命令
\RequirePackage{amssymb}    % 数学符号
\RequirePackage{amsthm}     % 定理环境
\RequirePackage{amsfonts}   % 数学字体
% 公式按节编号，格式为"节号.公式号"
\numberwithin{equation}{section}
\renewcommand{\theequation}{\thesection.\arabic{equation}}

% 页眉页脚设置
% 使用 fancyhdr 宏包自定义页眉页脚样式
\RequirePackage{fancyhdr}
\setlength{\headheight}{16pt}  % 设置页眉高度
\pagestyle{fancy}              % 应用自定义页面样式

% 代码和算法支持
% 配置 minted 包，缓存和输出都放在 build 文件夹中
\RequirePackage[cache=true, cachedir=_minted, outputdir=build]{minted}     % 代码语法高亮，启用缓存并设置缓存和输出目录
\RequirePackage[ruled, linesnumbered]{algorithm2e}   % 算法环境，带边框和行号

% 图片和表格支持
\RequirePackage{caption}       % 图表标题格式控制
\RequirePackage{graphicx}      % 图片插入和处理
\RequirePackage{tabularx}      % 扩展表格功能
\RequirePackage{threeparttable} % 三部分表格（表头、表体、表注）
\RequirePackage{multirow}      % 表格跨行合并单元格
\RequirePackage{multicol}      % 多栏环境支持
\RequirePackage{booktabs}      % 专业表格线样式
\RequirePackage{makecell}      % 单元格内多行内容显示
\RequirePackage{gensymb}       % 通用符号包（度数符号等）

% 图表标题格式设置 - 使用空格而不是冒号分隔
\captionsetup{
    labelsep=space,    % 标签与标题之间使用空格分隔
    font=small,        % 标题字体大小
    labelfont=bf       % 标签使用粗体
}

% 图表按节编号，格式为"节号.图表号"
\numberwithin{figure}{section}
\numberwithin{table}{section}
\renewcommand{\thefigure}{\thesection.\arabic{figure}}
\renewcommand{\thetable}{\thesection.\arabic{table}}
