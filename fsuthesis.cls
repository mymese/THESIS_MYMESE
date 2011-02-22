%%
%% This is file `fsuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% fsuthesis.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (c) 2010 by Bret Whissel
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.2 of this license or (at your option) any later
%% version.  The latest version of this license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of
%% LaTeX version 1999/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[2005/09/16]
\ProvidesClass{fsuthesis}
  [2010/03/29 v2.1.0
    (FSU LaTeX document class for Thesis/Dissertations
     maintained by Bret Whissel, bwhissel@fsu.edu)]
\newif\if@hardcopy
\newif\if@expanded
\newif\ifch@pleaders
\DeclareOption{hardcopy}{\@hardcopytrue}
\DeclareOption{expanded}{\@expandedtrue}
\DeclareOption{chapterleaders}{\ch@pleaderstrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions \relax
\LoadClass{report}
\setlength{\headheight}{\topskip}
\setlength{\headsep}{10pt}
\setlength{\footskip}{0.35in}
\setlength{\@tempdima}{\paperheight}
\addtolength{\@tempdima}{-2in}
\addtolength{\@tempdima}{-\footskip}
\divide\@tempdima\baselineskip
\@tempcnta=\@tempdima
\setlength\textheight{\@tempcnta\baselineskip}
\setlength{\footskip}{\paperheight}
\addtolength{\footskip}{-2in}
\addtolength{\footskip}{-\textheight}
\setlength{\topmargin}{\paperheight}
\addtolength{\topmargin}{-2in}
\addtolength{\topmargin}{-\headheight}
\addtolength{\topmargin}{-\headsep}
\addtolength{\topmargin}{-\textheight}
\addtolength{\topmargin}{-\footskip}
\flushbottom
\setlength{\textwidth}{6.0in}
\setlength{\@tempdima}{\paperwidth}
\addtolength{\@tempdima}{-2in}
\addtolength{\@tempdima}{-\textwidth}
\divide\@tempdima by2
\setlength{\oddsidemargin}{\@tempdima}
\setlength{\evensidemargin}{\@tempdima}
\newlength{\evenoddoffset}
\setlength{\evenoddoffset}{0.25in}
\if@hardcopy%
  \AtBeginDocument{\addtolength{\oddsidemargin}{\evenoddoffset}}
  \if@twoside\@openrighttrue%
    \AtBeginDocument{\addtolength{\evensidemargin}{-\evenoddoffset}}
  \else
    \AtBeginDocument{\addtolength{\evensidemargin}{\evenoddoffset}}\fi
\fi
\ifch@pleaders
  \renewcommand*\l@chapter[2]{%
    \ifnum \c@tocdepth >\m@ne
      \addpenalty{-\@highpenalty}%
      \vskip 1.0em \@plus\p@
      {\@dottedtocline{0}{0pt}{1.5em}{\bfseries#1}{\bfseries#2}}
    \fi}
\fi
\if@expanded
  \newlength{\adjbaselineskip}%
  \setlength{\adjbaselineskip}{0.6\baselineskip}%
  \def\blstretchiness{0pt plus.4pt minus.3pt}
  \def\smblstretchiness{0pt plus.3pt minus.2pt}
  \let\f@normalsize=\normalsize%
  \newcommand{\expandspacing}{\f@normalsize%
    \addtolength{\baselineskip}{\adjbaselineskip}%
    \addtolength{\baselineskip}{\blstretchiness}}%
  \renewcommand{\normalsize}{\expandspacing}%
  \newcommand{\afterheadadj}{\addvspace{-\adjbaselineskip}}%
  \let\f@olist=\list
  \def\list#1#2{%
    \f@olist{#1}{#2}
    \ifnum \@listdepth=1
      \setlength{\baselineskip}{2\adjbaselineskip}
      \addtolength{\baselineskip}{\smblstretchiness}
    \fi
  }
  \let\f@oendlist=\endlist
  \def\endlist{%
    \f@oendlist
    \ifnum\@listdepth=0 \normalsize \fi
  }
\else
  \let\expandspacing=\relax
  \let\f@normalsize=\relax
  \let\afterheadadj=\relax
  \let\f@olist=\list
  \let\f@oendlist=\endlist
\fi
\f@normalsize
\gdef\@degree{\ClassError{fsuthesis}%
  {No \protect\degree\space given}%
  {You must provide a \protect\degree{Degree Name}%
   \space command}}
\gdef\@department{\ClassError{fsuthesis}%
  {No \protect\department\space given}%
  {You must provide a \protect\department{Name of Department}%
   \space command}}
\gdef\@college{\ClassError{fsuthesis}%
  {No \protect\college\space given}%
  {You must provide a \protect\college{My College or School}%
   \space command}}
\gdef\@semester{\ClassError{fsuthesis}%
  {No \protect\semester\space given}%
  {You must provide a \protect\semester{Fall}\space command}}
\gdef\@degreeyear{\ClassError{fsuthesis}%
  {No \protect\degreeyear\space given}%
  {You must provide a \protect\degreeyear{20NN}\space command}}
\gdef\@defensedate{\ClassError{fsuthesis}%
  {No \protect\defensedate\space given}%
  {You must provide a \protect\defensedate{Month dd, 20NN}%
   \space command}}
\gdef\@manuscripttype{\ClassError{fsuthesis}%
  {No \protect\manuscripttype\space given}%
  {You must provide a \protect\manuscripttype{Dissertation}%
   \space command}}
\newif\if@department
\newcommand*{\degree}[1]{\gdef\@degree{#1}}
\newcommand*{\department}[1]{\gdef\@department{#1}\@departmenttrue}
\newcommand*{\college}[1]{\gdef\@college{#1}}
\newcommand*{\semester}[1]{\gdef\@semester{#1}}
\newcommand*{\degreeyear}[1]{\gdef\@degreeyear{#1}}
\newcommand*{\defensedate}[1]{\gdef\@defensedate{#1}}
\newcommand*{\manuscripttype}[1]{\gdef\@manuscripttype{#1}}
\renewcommand{\maketitle}{\begin{titlepage}%
\enlargethispage{\footskip}%
\begin{center}%
\f@normalsize THE FLORIDA STATE UNIVERSITY
\vskip\baselineskip
\MakeUppercase{\@college}%
\vfill
{\addtolength{\baselineskip}{\baselineskip}%
\MakeUppercase{\@title}\vfill}
By
\vskip\baselineskip
\MakeUppercase{\@author}
\vfill
A \@manuscripttype{} submitted to the\\
\if@department\@department\else\@college\fi\\
in partial fulfillment of the\\
requirements for the degree of\\
\@degree
\vfill
Degree Awarded:\\
\@semester{} Semester, \@degreeyear\pagebreak[4]
\end{center}
\end{titlepage}
}
\newlength{\sigwidth}
\setlength{\sigwidth}{3.25in}
\newlength{\sigskip}
\setlength{\sigskip}{0.5in plus0.4fil minus.3in}
\gdef\@thesigs{}
\newcommand{\committeesig}[2]{%
  \expandafter\gdef%
   \expandafter\@thesigs%
    \expandafter{\@thesigs\vskip\sigskip%
      \makebox[\sigwidth][l]{\hrulefill}\\
      \makebox[\sigwidth][l]{#1}\\
      \makebox[\sigwidth][l]{#2}}}
\newif\if@collegesig
\newcommand*{\collegesigheader}{Approved:}
\gdef\@thecollsigs{\collegesigheader\nopagebreak[4]}
\newcommand{\collegesig}[3]{\@collegesigtrue%
  \expandafter\gdef%
   \expandafter\@thecollsigs%
    \expandafter{\@thecollsigs%
      \vskip\sigskip%
      \makebox[\sigwidth][l]{\hrulefill}\\
      \makebox[0pt][l]{#1, #2, #3}}}
\newcommand{\makesignaturepage}{\f@normalsize\setcounter{page}{2}%
{\addtolength{\baselineskip}{0.5\baselineskip}\sloppy
\noindent The members of the committee approve the
\MakeLowercase{\@manuscripttype} of \@author{}
defended on \mbox{\@defensedate}.\par}
\vfil
\begin{flushright}\@thesigs\end{flushright}%
\vfil\vfil
\if@collegesig%
\begin{flushleft}\@thecollsigs\end{flushleft}\vfil
\fi
\vfil\vskip\baselineskip
{\addtolength{\baselineskip}{0.5\baselineskip}
\noindent The Graduate School has verified and approved the
above-named committee members.\par}
\pagebreak[4]
}
\newcommand{\frontmatter}{\pagenumbering{roman}}
\newcommand{\mainmatter}{%
  \if@openright\cleardoublepage\else\clearpage\fi%
  \expandspacing\pagenumbering{arabic}}
\newcommand*{\acknowledgename}{Acknowledgments}
\newcommand*{\biosketchname}{Biographical Sketch}
\renewcommand*{\contentsname}{Table of Contents}
\newcommand*{\listabbrevname}{List of Abbreviations}
\newcommand*{\listmusexname}{List of Musical Examples}
\newcommand*{\listsymname}{List of Symbols}
\newcommand*{\musexname}{Example}
\newenvironment{dedication}%
  {\mbox{}\vfill}
  {\vfill\vfill\vskip1in\mbox{}\pagebreak[4]}
\newenvironment{acknowledgments}%
  {\chapter*{\acknowledgename}\normalsize\afterheadadj}
  {\clearpage\f@normalsize}


\newenvironment{listofsymbols}
  {\chapter*{\listsymname}\f@normalsize%
   \addcontentsline{toc}{frontmatter}{\listsymname}}
  {\clearpage}
\newenvironment{listofabbrevs}
  {\chapter*{\listabbrevname}\f@normalsize%
   \addcontentsline{toc}{frontmatter}{\listabbrevname}}
  {\clearpage}
\renewenvironment{abstract}%
  {\chapter*{\abstractname}\normalsize\afterheadadj%
   \addcontentsline{toc}{frontmatter}{\abstractname}}
  {\clearpage\f@normalsize}
\newcommand*\l@frontmatter{%
  \addvspace{1ex}\addpenalty{-\@highpenalty}%
  \@dottedtocline{0}{0pt}{0pt}}%
\def\toclevel@frontmatter{0}
\renewcommand*\l@figure{%
  \addvspace{10pt}%
  \@dottedtocline{0}{0pt}{3.2em}}
\let\l@table\l@figure
\newcommand{\list@fsomething}[2]{\f@normalsize%
  \if@twocolumn\@restonecoltrue\onecolumn
  \else\@restonecolfalse\fi
  \chapter*{#1}%
  \addvspace{-10pt}
  \addcontentsline{toc}{frontmatter}{#1}%
  \@mkboth{\MakeUppercase{#1}}{\MakeUppercase{#1}}
  \@starttoc{#2}%
  \if@restonecol\twocolumn\fi
}
\renewcommand{\listoftables}{%
  \list@fsomething{\listtablename}{lot}}
\renewcommand{\listoffigures}{%
  \list@fsomething{\listfigurename}{lof}}
\newcommand{\listofmusex}{%
  \list@fsomething{\listmusexname}{lom}}
\let\l@musex\l@figure
\newcounter{musex}[chapter]
\renewcommand{\themusex}%
  {\ifnum\c@chapter>\z@\thechapter.\fi\@arabic\c@musex}
\newcommand{\theHmusex}%
  {\ifnum\c@chapter>\z@\thechapter.\fi\@arabic\c@musex}
\def\fps@musex{tbp}
\def\ftype@musex{1}
\def\ext@musex{lom}
\def\fnum@musex{\musexname\nobreakspace\themusex}
\newenvironment{musex}%
  {\@float{musex}}
  {\end@float}
\newenvironment{musex*}%
  {\@dblfloat{musex}}
  {\end@dblfloat}
\newenvironment{references}
  {\chapter*{\bibname}\f@normalsize%
   \addvspace{-\baselineskip} \@afterindenttrue%
   \addcontentsline{toc}{frontmatter}{\bibname}%
   \setlength{\leftskip}{1.5em}%
   \setlength{\parindent}{-1.5em}%
   \setlength{\parskip}{\baselineskip}}
  {\clearpage}
\renewenvironment{thebibliography}[1]
     {\chapter*{\bibname}\f@normalsize%
      \addcontentsline{toc}{frontmatter}{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \f@olist{\@biblabel{\@arabic\c@enumiv}}%
         {\settowidth\labelwidth{\@biblabel{#1}}%
          \leftmargin\labelwidth
          \advance\leftmargin\labelsep
          \@openbib@code
          \usecounter{enumiv}%
          \let\p@enumiv\@empty
          \if@expanded
            \addtolength{\itemsep}{0pt plus3pt minus1.5pt}\fi
          \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \f@oendlist}
\newenvironment{biosketch}
  {\chapter*{\biosketchname}\normalsize\afterheadadj%
   \addcontentsline{toc}{frontmatter}{\biosketchname}}
  {\clearpage\f@normalsize}
\newlength{\chapheadskip}
\sbox\@tempboxa{\LARGE\bfseries CHAPTER}
\setlength{\chapheadskip}{1in}
\addtolength{\chapheadskip}{-\ht\@tempboxa}
\def\@makechapterhead#1{%
  \hrule height0pt depth0pt width0pt\vskip\chapheadskip%
  {\centering\parindent=0pt\LARGE\bfseries%
   \ifnum\c@secnumdepth >\m@ne%
     \MakeUppercase{\@chapapp}\space\thechapter\par
     \nobreak\vskip20pt\fi%
   \interlinepenalty\@M%
   \MakeUppercase{#1}\par\nobreak\addvspace{40pt}
  }
}
\def\@makeschapterhead#1{%
  \hrule height0pt depth0pt width0pt\vskip\chapheadskip%
  {\centering\parindent=0pt\LARGE\bfseries%
   \interlinepenalty\@M%
   \MakeUppercase{#1}\par\nobreak\addvspace{40pt}
  }
}
\renewcommand{\section}{\@startsection{section}{1}{0pt}%
  {4.0ex plus1ex minus0.3ex}%
  {2.0ex plus0.3ex minus0.2ex}%
  {\normalfont\centering\Large\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{0pt}%
  {3ex plus.8ex minus0.1ex}%
  {1.25ex plus0.1ex minus.1ex}%
  {\normalfont\raggedright\large\bfseries}}
\renewcommand{\subsubsection}[1]%
  {\@startsection{subsubsection}{3}{\parindent}%
    {1ex plus.5ex minus0.1ex}%
    {-1em}%
    {\normalfont\bfseries}{#1.}}
\renewcommand{\paragraph}[1]%
  {\@startsection{paragraph}{4}{\parindent}%
    {1ex plus.5ex minus0.1ex}%
    {-0.75em}%
    {\normalfont\scshape}{#1.}}
\renewcommand{\subparagraph}[1]%
  {\@startsection{subparagraph}{5}{\parindent}%
    {0pt}{-0.5em}{\normalfont\itshape}{#1.}}
\newlength{\fcapindent}
\setlength{\fcapindent}{2em}
\setlength{\belowcaptionskip}{10\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip%
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    {\advance\leftskip\fcapindent \rightskip=\leftskip\relax%
     \f@normalsize%
     #1: #2\par}
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\endinput
%%
%% End of file `fsuthesis.cls'.
