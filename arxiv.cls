\NeedsTeXFormat{LaTeX2e}[1995/06/01]
\ProvidesClass{arxiv}[2020/01/24 v0.2 arXiv class based on amsart]
\DeclareOption*{\PassOptionsToClass{\CurrentOption{amsart}}}
\ProcessOptions*
\LoadClass[reqno, oneside, a4paper, noamsfonts]{amsart}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{mathtools,lmodern,mathabx,microtype,mleftright}
\RequirePackage{bookmark,cleveref}
\RequirePackage[scale={0.75,0.85, ignoremp}]{geometry}
\RequirePackage[cal=boondoxupr, scr=boondox, frak=euler, bb=fourier]{mathalfa}

\def\dlb{\mathopen{[\mkern-3.5mu[}}
\def\drb{\mathclose{]\mkern-3.5mu]}}
\def\dbrace#1{\left\dlb#1\right\drb}
\def\dlp{\mathopen{(\mkern-4mu(}}
\def\drp{\mathclose{)\mkern-4mu)}}
\def\dparen#1{\left\dlp#1\right\drp}

\newtheorem{prp}{Proposition}[section]
\newtheorem{dfn}{Definition}[section]
\newtheorem{thm}{Theorem}[section]
\newtheorem{lmm}{Lemma}[section]
\newtheorem{crl}{Corollary}[section]
\theoremstyle{remark}
\newtheorem{rmk}{Remark}[section]
\newtheorem{exm}{Example}[section]

\renewcommand{\datename}{\textit{Date}:}
