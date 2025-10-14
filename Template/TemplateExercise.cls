\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TemplateExercise}

%%%% PERSONALIZATION %%%%

\newcommand{\mName}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}mName\}\{<Name(s)>\}}}
\newcommand{\Semester}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}Semester\}\{<Semester>\}}}
\newcommand{\LectureName}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}LectureName\}\{<Lecture>\}}}
\newcommand{\SheetName}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}SheetName\}\{<Sheet>\}}}
\newcommand{\SheetNumber}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}SheetNumber\}\{<Sheet>\}}}


\RequirePackage{kvoptions}
\SetupKeyvalOptions{%
	family=Lec,
	prefix=Lec@
}
\DeclareStringOption[none]{doctype}
\DeclareStringOption[none]{pdftitle}

% Pass all options


\DeclareOption{10pt}{\def\Lec@ptsize{10pt}}
\DeclareOption{11pt}{\def\Lec@ptsize{11pt}}
\DeclareOption{12pt}{\def\Lec@ptsize{12pt}}
\DeclareStringOption[ngerman]{language}[ngerman]

\ExecuteOptions{11pt}
\ProcessOptions
\ProcessKeyvalOptions*
\DeclareDefaultOption{\PassOptionsToClass{\Lec@ptsize}{scrartcl}}

% Process all options




\LoadClass[\Lec@ptsize,a4paper,numbers=noenddot,chapterprefix=true]{scrartcl}


\RequirePackage{acronym}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amstext}
\RequirePackage{amsthm}
\RequirePackage{aligned-overset}
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage{booktabs}
\RequirePackage[\Lec@language]{babel}
\RequirePackage{calc}
\RequirePackage{cancel}
% \RequirePackage{color}
\RequirePackage{dsfont}
\RequirePackage{enumerate}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{moreenum}
\RequirePackage{environ}
\RequirePackage{etoolbox}
\RequirePackage{float}
\RequirePackage[T1]{fontenc}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{imakeidx}
\RequirePackage[utf8]{inputenc}
\RequirePackage{listings}
\RequirePackage{lmodern}
\RequirePackage{mathrsfs}
\RequirePackage{mathtools}
\RequirePackage{nicefrac}
\RequirePackage{pifont}
\RequirePackage{pgf,tikz}
\RequirePackage{tikz-cd}
\RequirePackage{pgfplots}
\RequirePackage{qrcode}
\RequirePackage{scrextend}
\RequirePackage[headsepline]{scrlayer-scrpage}
\RequirePackage{selinput}
\RequirePackage{setspace}
\RequirePackage{soul}
\RequirePackage{stmaryrd}
\RequirePackage{tabularx}
\RequirePackage[most]{tcolorbox}
    \tcbuselibrary{theorems}
\RequirePackage{tocloft}

% \RequirePackage{../../Template/DanielMacros} % USE THIS IN THE CLS FILE (LOCATED IN SAME FOLDER AS TEX) IF THE STY FILE IS NOT INSTALLED ON SYSTEM
\RequirePackage{DanielMacros}



%%%% LANGUAGE OPTIONS %%%%

\useshorthands{"}
\addto\extrasenglish{\languageshorthands{ngerman}}

\AtBeginDocument{%
    \providecaptionname{ngerman}{\Lec@Notes}{Mitschrift zur Vorlesung}%
    \providecaptionname{ngerman}{\Lec@HeldBy}{gehalten von}%
    \providecaptionname{ngerman}{\Lec@TeXedBy}{ge\TeX{}ed von}%
    \providecaptionname{ngerman}{\Lec@ListOfDefs}{Liste der Definitionen}%
    \providecaptionname{ngerman}{\Lec@ListOfStatements}{Liste der Aussagen}%
    \providecaptionname{ngerman}{\Lec@Lecture}{Vorlesung}%
    \providecaptionname{ngerman}{\Lec@Appendix}{Anhang}%
    \providecaptionname{ngerman}{\Lec@Corrections}{Falls du Anmerkungen/Korrekturen hast, melde dich bei mir (\mail{daniel.emse@uni-bonn.de}).}
    \providecaptionname{ngerman}{\Lec@CorrectionsSec}{Anmerkungen und Korrekturen}
    \providecaptionname{ngerman}{\Lec@thm}{Satz}
    \providecaptionname{ngerman}{\Lec@rmk}{Bemerkung}
    \providecaptionname{ngerman}{\Lec@cor}{Korollar}
    \providecaptionname{ngerman}{\Lec@expl}{Beispiel}
    \providecaptionname{ngerman}{\Lec@exc}{Aufgabe}
    \providecaptionname{ngerman}{\Lec@sol}{Lösung}

    \providecaptionname{english}{\Lec@Notes}{Notes for the lecture}%
    \providecaptionname{english}{\Lec@HeldBy}{held by}%
    \providecaptionname{english}{\Lec@TeXedBy}{\TeX{}ed by}%
    \providecaptionname{english}{\Lec@ListOfDefs}{List of definitions}%
    \providecaptionname{english}{\Lec@ListOfStatements}{List of statements}%
    \providecaptionname{english}{\Lec@Lecture}{Lecture}%
    \providecaptionname{english}{\Lec@Appendix}{Appendix}
    \providecaptionname{english}{\Lec@Corrections}{If you have corrections or improvements, contact me (\mail{daniel.emse@uni-bonn.de}).}
    \providecaptionname{english}{\Lec@CorrectionsSec}{Corrections and improvements}
    \providecaptionname{english}{\Lec@thm}{Theorem}
    \providecaptionname{english}{\Lec@rmk}{Remark}
    \providecaptionname{english}{\Lec@cor}{Corollary}
    \providecaptionname{english}{\Lec@expl}{Example}
    \providecaptionname{english}{\Lec@exc}{Exercise}
    \providecaptionname{english}{\Lec@exc}{Solution}
}







%%%% LAYOUT %%%%

\geometry{a4paper, top=20mm, left=25mm, right=25mm, bottom=20mm, headsep=5mm, footskip=12mm}


\ofoot{\today}
\ifoot{\LectureName}
\cfoot{\thepage}
\ihead{\textsc{\SheetName}}
\ohead{\textsc{\mName}}

\title{\vspace{-1cm} \SheetName}
\author{}
\date{}

\AtBeginDocument{
\maketitle
\vspace*{-2.5cm}
\thispagestyle{scrheadings}
}

%%%% MACROS %%%%
%%%% THEOREMS %%%%

%%%% THEOREMS %%%%
% \theoremstyle{theorem}
\newtheorem*{lemm}{Lemma}
\newtheorem{lemma}{Lemma}[section]
% \theoremstyle{theorem}
% \newtheorem{satz}[lemma]{Satz}
% \theoremstyle{theorem}
\newtheorem{prop}[lemma]{Proposition}
\newtheorem{corollary}[lemma]{\Lec@cor}
\theoremstyle{definition}
\newtheorem{frage}[lemma]{Frage}
\newtheorem*{definition}{Definition}
\newtheorem*{example}{\Lec@expl}
\newtheorem{expl}[lemma]{\Lec@expl}
\newtheorem{exc}{\Lec@exc}[section]
\newtheorem*{exercise}{\Lec@exc}
\newtheorem{sol}{\Lec@sol}[section]
\newtheorem{behauptung}[lemma]{Behauptung}
\newtheorem*{remark}{\Lec@rmk}
\newtheorem{rmk}[lemma]{\Lec@rmk}
\newtheorem{axiom}[lemma]{Axiom}
\newtheorem{problem}{\Lec@exc}
% \theoremstyle{solution} 
\newtheorem{solution}{Lösung}


\tcbset{
  defstyle/.style={fonttitle=\bfseries\upshape, %fontupper=\slshape,
  colback=blue!5!white,colframe=blue!75!black},
  theostyle/.style={fonttitle=\bfseries\upshape, fontupper=\slshape,
  colback=red!10!white,colframe=red!75!black},
  lemstyle/.style={fonttitle=\bfseries\upshape, fontupper=\slshape,
  colback=green!5,colframe=green!35!black}
  }
  
  
\newtcbtheorem[use counter*=lemma,crefname={lemma}{lemmas}, list inside={thm}]{lem}{Lemma}%
{lemstyle}{lem}
\newtcbtheorem[use counter*=lemma,crefname={definition}{definitions}, list inside={def}]{defi}{Definition}%
{defstyle}{def}
\newtcbtheorem[use counter*=lemma,crefname={theorem}{theorems}, list inside={thm}]{thm}{\Lec@thm}%
{theostyle}{thm}






%%%% MISC %%%%

\pgfplotsset{compat=1.15}

\usetikzlibrary{arrows}
\usetikzlibrary{shapes, arrows.meta, positioning}
\SelectInputMappings{
  adieresis={ä},
  germandbls={ß}
}
\usetikzlibrary{cd}

\makeatletter
\def\namedlabel#1#2{\begingroup
   \def\@currentlabel{#2}%
   \label{#1}\endgroup
}
\makeatother


\setcounter{MaxMatrixCols}{20}

\setlength\parindent{0pt}
\setlength\parskip{5pt plus1pt minus1pt}

% \numberwithin{equation}{section}

\algrenewcommand\algorithmicrequire{\textbf{Input:}}
\algrenewcommand\algorithmicensure{\textbf{Output:}}
% \algnewcommand\algorithmicappend{\textpf{append}}
