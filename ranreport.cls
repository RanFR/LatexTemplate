% RanFR 的基础 LaTeX 报告模板类文件
% 基于 article 类构建，适用于中文学术文档
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}[2020/02/02]
\ProvidesClass{ranreport}[2025/07/16 v0.2.2 RanFR's Report Template.]

% 中文支持配置
% UTF8 编码，启用中文标题格式
\RequirePackage[UTF8, heading = true]{ctex}

% 页面布局和边距设置
% A4 纸张，左右边距 3.18cm，上下边距 2.54cm
\RequirePackage[a4paper, left=3.18cm, right=3.18cm, top=2.54cm, bottom=2.54cm]{geometry}

% 标题和章节格式控制
\RequirePackage{titlesec}

% 节标题格式定义
% 使用大号粗体，编号与标题间距 1em
\titleformat{\section}
    {\normalfont\Large\bfseries}
    {\thesection}{1em}{}

% 摘要标题格式设置 - 与节标题保持一致
% 重新定义摘要名称和环境，使其与节标题具有相同样式
\renewcommand{\abstractname}{\Large\bfseries 摘要}
\renewenvironment{abstract}
    {\section*{\abstractname}}
    {\par\medskip}

% 字体配置
% 使用 fontspec 宏包进行字体管理，设置基础字体大小为 12pt
\RequirePackage{fontspec}
\fontsize{12pt}{\baselineskip}\selectfont

% 编号和计数器控制
% 用于修改各种计数器的编号方式
\RequirePackage{chngcntr}

% 数学公式支持
\RequirePackage{amsmath}    % 基础数学环境和命令
\RequirePackage{amssymb}    % 数学符号集
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
\RequirePackage{minted}                              % 代码语法高亮
\RequirePackage[ruled, linesnumbered]{algorithm2e}   % 算法环境，带边框和行号

% 图片和表格支持
\RequirePackage{caption}       % 图表标题格式控制
\RequirePackage{graphicx}      % 图片插入和处理
\RequirePackage{tabularx}      % 扩展表格功能
\RequirePackage{threeparttable} % 三部分表格（表头、表体、表注）

% 图表标题格式设置 - 使用空格而不是冒号分隔
\captionsetup{
    labelsep=space,    % 标签与标题之间使用空格分隔
    font=small,        % 标题字体大小
    labelfont=bf       % 标签使用粗体
}

% 图表按节编号，格式为"节号.图表号"
\counterwithin{figure}{section}
\counterwithin{table}{section}
\renewcommand{\thefigure}{\thesection.\arabic{figure}}
\renewcommand{\thetable}{\thesection.\arabic{table}}
