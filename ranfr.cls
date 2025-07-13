% Basic LaTeX class file for RanFR's Report Template
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}[2020/02/02]
\ProvidesClass{ranfr}[2025/05/06 v0.2.0 RanFR's Report Template.]

% Chinese support
\RequirePackage[UTF8, heading = true]{ctex}


% Page layout and margins
\RequirePackage[a4paper, left=3.18cm, right=3.18cm, top=2.54cm, bottom=2.54cm]{geometry}

% Title
\RequirePackage{titlesec}

% Font
\RequirePackage{fontspec}
\fontsize{12pt}{\baselineskip}\selectfont

% Number
\RequirePackage{chngcntr}

% Math
\RequirePackage{amsmath}
\RequirePackage{amssymb} % symbols
\RequirePackage{amsthm} % theorems
\RequirePackage{amsfonts} % fonts
\numberwithin{equation}{section}
\renewcommand{\theequation}{\thesection-\arabic{equation}}

% Header and footer
\RequirePackage{fancyhdr}
\setlength{\headheight}{16pt}
\pagestyle{fancy}

% Code
\RequirePackage{minted}
\RequirePackage[ruled, linesnumbered]{algorithm2e}

% Picture and table
\RequirePackage{caption}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{threeparttable}
\counterwithin{figure}{section}
\counterwithin{table}{section}
\renewcommand{\thefigure}{\thesection-\arabic{figure}}
\renewcommand{\thetable}{\thesection-\arabic{table}}
