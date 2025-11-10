% Intro Options
\ProvidesClass{deedy-resume-reversed}[2018/09/22 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{setspace}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{313131}
\definecolor{headings}{HTML}{3f63ad}
\definecolor{subheadings}{HTML}{241e1e}

% Define your scale factor once
\def\myscale{1.1}
\def\extrascale{1.1}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Scale=\fpeval{\myscale*\extrascale}, 
  Path = fonts/arialNova/]{ArialNova}
\setsansfont[Scale=MatchLowercase, 
  Path = fonts/arialNova/]{ArialNova}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}
  \fontsize{8pt}{10pt}\selectfont
Last Updated on \today
\end{textblock}}

% Name command
\newcommand{\namesection}[2]{%
  \centering{\fontsize{44pt}{66pt}\fontspec[Path = fonts/lato/, 
    Scale=\myscale]{Lato-Lig}\selectfont #1}\\[5pt]%
  \centering{\color{headings}\fontspec[Path = fonts/raleway/, 
    Scale=\myscale]{Raleway-Medium}\fontsize{12.1pt}{15.4pt}\selectfont #2}%
  \\\noindent\makebox[\linewidth]{\color{headings}%
  \rule{\paperwidth}{0.4pt}}\vspace{0pt}%
}

% Section seperators
\usepackage{titlesec}
\titlespacing{\section}{0pt}{12pt}{8pt}
\titlespacing{\subsection}{0pt}{10pt}{5pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\fontspec[Path = fonts/arialNova/]{ArialNova-Bold}
  \fontsize{16pt}{20pt}\selectfont \raggedright}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/arialNova/]{ArialNova-Bold}
  \fontsize{12pt}{12pt}\selectfont}{}{0em}{}

\newenvironment{indentcontent}[1][10pt]{%
  \begin{list}{}{%
    \setlength{\leftmargin}{#1}%
    \setlength{\itemindent}{0pt}%
    \setlength{\labelsep}{0pt}%
    \setlength{\labelwidth}{0pt}%
    \setlength{\topsep}{0pt}%
    \setlength{\partopsep}{0pt}%
    \setlength{\itemsep}{0pt}%
    \setlength{\parsep}{0pt}%
  }%
  \item[]%
}{%
  \end{list}%
  \vspace{-\baselineskip}%
}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/arialNova/]{ArialNova-Bold}
  \fontsize{12pt}{12pt}\selectfont {#1} \normalfont}

\newcommand{\projecttitle}[1]{
\color{subheadings}\fontspec[Path = fonts/arialNova/]{ArialNova-Bold}
  \fontsize{12pt}{12pt}\selectfont {#1} \normalfont}

% Descriptors command
\newcommand{\descriptor}[1]{
\color{subheadings}
  \fontspec[Path = fonts/arialNova/]{ArialNova}
  \fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

  \newcommand{\descript}[1]{
\color{subheadings}\raggedright
  \fontspec[Path = fonts/arialNova/]{ArialNova}
  \fontsize{11pt}{13pt}\selectfont \hspace{-8pt}{#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{subheadings}\raggedright
  \fontspec[Path = fonts/arialNova/]{ArialNova}
  \fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with better spacing
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep4pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-5pt}}