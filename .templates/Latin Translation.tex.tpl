\documentclass[10pt]{article}
\usepackage[latin, english]{babel}
\usepackage{dblfnote}
\usepackage{fancybox}
\usepackage{fancyhdr}
\usepackage[T1]{fontenc}
\usepackage{gensymb}
\usepackage[margin=1in]{geometry}
\usepackage{lineno}
\usepackage[bitstream-charter]{mathdesign}
\usepackage{microtype}
\usepackage{varwidth}

\DFNalwaysdouble
\pagenumbering{gobble}
\pagestyle{fancy}
\setlength{\headsep}{0.6in}

\begin{document}
\rhead{Andrew Smith\\(>>>USDATE<<<)\\Latin (>>>LEVEL<<<)}
\newcommand{\definition}[3]{\footnote{\textbf{#1} -- \textsc{#2} #3}}
\renewcommand{\thefootnote}{\textsc{\roman{footnote}}}
\renewcommand{\theenumi}{\textsc{\roman{enumi}}}
\renewcommand{\thelinenumber}{\normalfont\arabic{linenumber}}

\begin{center}
  \Large \textsc{(>>>TITLE<<<)}
\end{center}

\selectlanguage{latin}
\setcounter{linenumber}{(>>>LINE<<<)}
\begin{linenumbers}
  (>>>POINT<<<)LATIN
\end{linenumbers}

\vspace{1cm}
\selectlanguage{english}
\setcounter{linenumber}{(>>>LINE<<<)}
\begin{linenumbers}
  ENGLISH
\end{linenumbers}

\end{document}