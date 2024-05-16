
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TemplateLecture}

%%%% PERSONALIZATION %%%%

\newcommand{\mName}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}mName\}\{<Name(s)>\}}}
\newcommand{\Semester}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}Semester\}\{<Semester>\}}}
\newcommand{\LectureName}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}LectureName\}\{<Lecture>\}}}
\newcommand{\ProfName}{\texttt{\textbackslash{}renewcommand\{\textbackslash{}ProfName\}\{<Prof>\}}}


\LoadClass[11pt,a4paper]{scrreprt}
\renewcommand\thempfootnote{\arabic{mpfootnote}}

%%%% PACKAGES %%%%

\RequirePackage{acronym}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amstext}
\RequirePackage{amsthm}
\RequirePackage{aligned-overset}
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage{booktabs}
\RequirePackage[ngerman]{babel}
\RequirePackage{calc}
\RequirePackage{cancel}
\RequirePackage{color}
\RequirePackage{dsfont}
\RequirePackage{enumerate}
\RequirePackage[shortlabels]{enumitem}
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
\RequirePackage{todonotes}
\RequirePackage[normalem]{ulem}
\usetikzlibrary{calc}
\RequirePackage{tkz-euclide}
\RequirePackage[
  %colorlinks=true, 
  urlcolor=black, linkcolor=black]{hyperref}
\RequirePackage{cleveref}
\geometry{a4paper, top=20mm, left=25mm, right=25mm, bottom=20mm, headsep=5mm, footskip=12mm}
% \usetkzobj{all}
\setlist{listparindent=\parindent}

\usepackage{footnote}
\BeforeBeginEnvironment{tcolorbox}{\savenotes}
\AfterEndEnvironment{tcolorbox}{\spewnotes}



%%%% LAYOUT %%%%

%%%% LAYOUT %%%%

\setlength\parindent{0pt}
\setlength\parskip{5pt plus1pt minus1pt}

\AtBeginDocument{
\begin{titlepage}\pagenumbering{Roman}
  \centering
  \vspace{1cm}
  {\scshape Universität Bonn \par}
  \vspace{5cm}
    {\large Mitschrift zur Vorlesung \par}
    \vspace{.5cm}
  {\huge \textbf{\LectureName{}} \par}
  \vspace{2cm}
    {\large gehalten von \par}
    \vspace{.5cm}
  {\huge \textbf{\ProfName{}} \par}
  \vspace{8cm}
    {\large in digitale Form übertragen von \par}
    \vspace{.5cm}
  {\Large \mName{} \par}
    \vfill
    {\large \Semester{} \par}
\end{titlepage}
}

\AtEndDocument{
\pagebreak
\pagenumbering{Alph}
\printindex
\end{document}
}

\ifoot{\Semester}
\ohead{\LectureName}
\cfoot{\thepage}
\ihead{\ProfName}
\ofoot{\mName}

% \title{\vspace{-1cm} \einheit}
\author{}
\date{}

\makeindex[columns=2, title=Index, intoc]


%%%% MACROS %%%%

\DeclarePairedDelimiter\ceil{\lceil}{\rceil}
\DeclarePairedDelimiter\floor{\lfloor}{\rfloor}

\newcommand{\IN}{\mathbb{N}}
\newcommand{\IZ}{\mathbb{Z}}
\newcommand{\IQ}{\mathbb{Q}}
\newcommand{\IR}{\mathbb{R}}
\newcommand{\IC}{\mathbb{C}}
\newcommand{\IP}{\mathbb{P}}
\newcommand{\IK}{\mathbb{K}}
\newcommand{\IL}{\mathbb{L}}
\newcommand{\IF}{\mathbb{F}}
\newcommand{\IV}{\mathbb{V}}
\newcommand{\IS}{\mathbb{S}}
\newcommand{\IE}{\mathbb{E}}
\newcommand{\cL}{\mathcal{L}}
\newcommand{\cC}{\mathcal{C}}
\newcommand{\cK}{\mathcal{K}}
\newcommand{\cM}{\mathcal{M}}
\newcommand{\cS}{\mathcal{S}}
\newcommand{\cU}{\mathcal{U}}
\newcommand{\cA}{\mathcal{A}}
\newcommand{\cP}{\mathcal{P}}
\newcommand{\cQ}{\mathcal{Q}}
\newcommand{\cB}{\mathcal{B}}
\newcommand{\cF}{\mathcal{F}}
\newcommand{\cO}{\mathcal{O}}
\newcommand{\mb}[1]{\mathbb{#1}}
\newcommand{\mc}[1]{\mathcal{#1}}
\newcommand{\cmark}{\text{\ding{51}}}
\newcommand{\xmark}{\text{\ding{55}}}
\newcommand{\ggT}{\mathrm{ggT}}
\newcommand{\kgV}{\mathrm{kgV}}
\newcommand{\charac}{\mathrm{char}}
\newcommand{\set}[1]{\left\lbrace#1\right\rbrace}
\newcommand{\Span}[1]{\left<#1\right>}
\newcommand{\Scalar}{\Span{\cdot,\cdot}}
\newcommand{\BLF}{\mathrm{BLF}}
\newcommand{\intervalcc}[1]{\left[#1\right]}
\newcommand{\intervalco}[1]{\left[#1\right)}
\newcommand{\intervaloc}[1]{\left(#1\right]}
\newcommand{\intervaloo}[1]{\left(#1\right)}
\newcommand{\entspr}{\widehat{=}}
\newcommand{\range}{\mathrm{range}}
\newcommand{\rd}{\mathrm{rd}}
\newcommand{\eps}{\mathrm{eps}}
\newcommand{\enquote}[1]{\glqq{}#1\grqq{}}
\newcommand{\Mor}{\mathrm{Mor}}
\newcommand{\Hom}{\mathrm{Hom}}
\newcommand{\End}{\mathrm{End}}
\newcommand{\Abb}{\mathrm{Abb}}
\newcommand{\Ker}{\mathrm{Ker}}
\newcommand{\Img}{\mathrm{Im}}
\newcommand{\bij}{\overset{\sim}{\to}}
\newcommand{\surj}{\twoheadrightarrow}
\newcommand{\inj}{\hookrightarrow}
\newcommand{\iso}{\cong}
\newcommand{\hmtp}{\simeq}
\newcommand{\id}{\mathrm{id}}
\newcommand{\Id}{\mathrm{Id}}
\newcommand{\rg}{\mathrm{rg}}
\newcommand{\dist}{\mathrm{dist}}
\newcommand{\diag}{\mathrm{diag}}
\newcommand{\Gl}{\mathrm{Gl}}
\newcommand{\Bij}{\mathrm{Bij}}
\newcommand{\ord}{\mathrm{ord}}
\newcommand{\sgn}{\mathrm{sgn}}
\newcommand{\abs}[1]{\left|#1\right|}
\newcommand{\norm}[1]{\left\|#1\right\|}
\newcommand{\transp}[1]{\begin{pmatrix}\begin{smallmatrix}#1\end{smallmatrix}\end{pmatrix}}
\newcommand{\EV}{\mathrm{EV}}
\newcommand{\EW}{\mathrm{EW}}
\newcommand{\idx}{\mathrm{index}}
\newcommand{\NST}{\mathrm{NST}}
\newcommand{\tr}{\mathrm{tr}}
\newcommand{\Unif}{\mathrm{Unif}}
\newcommand{\Lin}{\mathrm{Lin}}
\newcommand{\Bin}{\mathrm{Bin}}
\newcommand{\Pf}{\mathrm{Pf}}
\newcommand{\Sp}{\mathrm{Sp}}
\newcommand{\Sl}{\mathrm{Sl}}
\newcommand{\Var}{\mathrm{Var}}
\newcommand{\Vol}{\mathrm{Vol}}
\newcommand{\Sym}{\mathrm{Sym}}
\newcommand{\1}{\mathds{1}}
\newcommand{\epi}{\mathrm{epi}}
\newcommand{\SO}{\mathrm{SO}}
\newcommand{\SU}{\mathrm{SU}}
\newcommand{\Ob}{\mathrm{Ob}}
\newcommand{\Coker}{\mathrm{Coker}}
\newcommand{\Coim}{\mathrm{Coim}}
\newcommand{\supp}{\mathrm{supp}}
\newcommand{\Lip}{\mathrm{Lip}}
\newcommand{\dd}{~\mathrm{d}}
\newcommand{\ee}{\mathrm{e}}
\newcommand{\grad}{\nabla}
\newcommand{\loc}{\mathrm{loc}}
\newcommand{\per}{\mathrm{per}}
\newcommand{\Rea}{\mathrm{Re}}
\newcommand{\pt}{\mathrm{pt}}
\newcommand{\pr}{\mathrm{pr}}

\newcommand{\breakline}[1]{%
    \begingroup%
        \par\centering\bfseries%
        \rule[0.6ex]{1.5cm}{1pt} #1 \rule[0.6ex]{1.5cm}{1pt}\par%
    \endgroup%
}

\renewcommand{\div}{\mathrm{div}}
\renewcommand{\mid}{~\middle|~}

%%%% THEOREMS %%%%
% \theoremstyle{theorem}
\newtheorem*{lemm}{Lemma}
\newtheorem{lemma}{Lemma}[chapter]
% \theoremstyle{theorem}
% \newtheorem{satz}[lemma]{Satz}
% \theoremstyle{theorem}
\newtheorem{prop}[lemma]{Proposition}
\newtheorem{corollary}[lemma]{Korollar}
\theoremstyle{definition}
\newtheorem{frage}[lemma]{Frage}
\newtheorem{definition}[lemma]{Definition}
\newtheorem*{beispiel}{Beispiel}
\newtheorem{bsp}[lemma]{Beispiel}
\newtheorem{aufgabe}{Aufgabe}
\newtheorem{behauptung}[lemma]{Behauptung}
\newtheorem*{bemerkung}{Bemerkung}
\newtheorem{bem}[lemma]{Bemerkung}
\newtheorem{axiom}[lemma]{Axiom}
\newtheorem{problem}{Aufgabe}
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
  
  
\newtcbtheorem[use counter*=lemma,crefname={lemma}{lemmas}]{lem}{Lemma}%
{lemstyle}{lem}
\newtcbtheorem[use counter*=lemma,crefname={definition}{definitions}]{defi}{Definition}%
{defstyle}{def}
\newtcbtheorem[use counter*=lemma,crefname={theorem}{theorems}]{thm}{Satz}%
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
\usetikzlibrary{babel}

\makeatletter
\def\namedlabel#1#2{\begingroup
   \def\@currentlabel{#2}%
   \label{#1}\endgroup
}
\makeatother


\setcounter{MaxMatrixCols}{20}



\numberwithin{equation}{chapter}

\algrenewcommand\algorithmicrequire{\textbf{Input:}}
\algrenewcommand\algorithmicensure{\textbf{Output:}}
% \algnewcommand\algorithmicappend{\textpf{append}}y