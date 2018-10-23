\RequirePackage{xcolor}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{PosterIFS}[2014/08/16 Example LaTeX class]
 
\newcommand{\headlinecolor}{\normalcolor}
\LoadClass{sciposter}

\RequirePackage{authblk}

\RequirePackage{epsfig}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{multicol}

\RequirePackage[english,brazil]{babel}

\RequirePackage{cite}


\RequirePackage{graphicx}

% \RequirePackage{subfig}
% \RequirePackage{caption}

\RequirePackage[utf8]{inputenc}  
		   
\RequirePackage{hyperref} 

\RequirePackage{acro}

\RequirePackage{tcolorbox}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{sciposter}}

\ProcessOptions\relax

 \renewcommand\Authands{ e }

\ifthenelse{\equal{\fontpointsize}{30pt}}{
    \renewcommand{\scriptsize}{\fontsize{24.88}{30}\selectfont}
}{}

\definecolor{BoxCol}{rgb}{.0,.75,.0}


\renewcommand{\printleftlogo}{%
%   \begin{center}
%     \hspace*{0.6\textwidth}
%   \end{center}
}
\renewcommand{\printrightlogo}{%
%   \begin{center}
%     \hspace*{0.6\textwidth}
%   \end{center}
}

\renewcommand{\maketitle}{%  
    \begin{figure}
        \ifthenelse{\boolean{useleftlogo}}{
           \printleftlogo           
        }{}
        \ifthenelse{\boolean{userightlogo}}{
            \printrightlogo
        }{}
    \end{figure}
  
  
    \begin{center}
        \begin{roundedBox}
            \center \Large Título do Projeto
        \end{roundedBox}
        \vspace{0.2\titleskip}
    %   \renewcommand{\baselinestretch}{3.3}\normalsize
      {\Large \@title}\par
      \renewcommand{\baselinestretch}{1.0}\normalsize            
       \vspace{0.2\titleskip}
      \begin{roundedBox}
        \center \Large Sobre os autores
      \end{roundedBox}
      {\authorsize {\bf\@author} \par}
      {\instsize
       \vspace{0.2\titleskip}
       \theinstitute \par
       \ifthenelse{\equal{\printemail}{}}{%nothing
         }{%
         \vspace{0.2\titleskip}
         \texttt{\printemail}
         }
      }
    \end{center}
    
    \setcounter{figure}{0}
  %}}  
% \vspace{\titleskip}
}



% //////////////////////////////////
\newtcolorbox{roundedBox}{colback=BoxCol,arc=35pt,boxsep=15pt}
% //////////////////////////////////
%%% \replacement for \section
% with colored section-title and automatic numbering
\newcommand{\RoundedBoxSection}[2][?]{
  \vspace{\secskip}
  \refstepcounter{section}
  \begin{center}
    \setlength{\secboxwidth}{\columnwidth}
    \addtolength{\secboxwidth}{-1cm}
    \setlength{\fboxrule}{2pt}
    \setlength{\fboxsep}{0pt}
    \begin{roundedBox}
        \begin{center}
          {\bf\sectionsize\textcolor{SectionCol}{\arabic{section}.~#2}}
        \end{center}
    \end{roundedBox}    
  \end{center}
%   \par\vspace{0.375\secskip}
}
%
\newcommand{\sRoundedBoxSection}[1]{
%   \vspace{\secskip}
  \begin{center}
    \setlength{\secboxwidth}{\columnwidth}
    \addtolength{\secboxwidth}{-1cm}
    \setlength{\fboxrule}{2pt}
    \setlength{\fboxsep}{0pt}
    \begin{roundedBox}
        \begin{center}
          {\bf\sectionsize\textcolor{SectionCol}{#1}}
        \end{center}
    \end{roundedBox}    
  \end{center}
%   \par\vspace{0.375\secskip}
}


\renewcommand{\section}{\secdef\RoundedBoxSection\sRoundedBoxSection}

% 
\renewcommand{\leftlogo}[2][.8]{%
\ifthenelse{\equal{#2}{}}{%
 \renewcommand{\printleftlogo}{%
   \begin{center}
     \hspace*{0.3\textwidth}
   \end{center}
   }
 }
 {\renewcommand{\printleftlogo}{%
    \begin{minipage}{0.48\textwidth}
        \centering       
        \includegraphics[width=#1\linewidth]{#2}        
    \end{minipage}\hfill
 }}
}
% 
\renewcommand{\rightlogo}[2][0.8]{%
\ifthenelse{\equal{#2}{}}{%
 \renewcommand{\printrightlogo}{%
   \begin{center}
     \hspace*{0.3\textwidth}
   \end{center}
   }
 }
 {\renewcommand{\printrightlogo}{%
    \begin{minipage}{0.48\textwidth}
        \centering
        \includegraphics[width=#1\linewidth]{#2}        
    \end{minipage}   
 }}
}
% 
\renewcommand{\norightlogo}{
\setboolean{userightlogo}{false}
% \setlength{\titlewidth}{\textwidth}
\ifthenelse{\boolean{useleftlogo}}{
% \addtolength{\titlewidth}{-\logowidth}
}{}
}
\renewcommand{\noleftlogo}{
\setboolean{useleftlogo}{false}
% \setlength{\titlewidth}{\textwidth}
\ifthenelse{\boolean{userightlogo}}{
% \addtolength{\titlewidth}{-\logowidth}
}{}
}
% 

\renewcommand{\authorsize}{\normalsize}

\leftlogo[.5]{figuras/LogoIFS.jpg}{  % defines logo to left of title (with scale factor)
\rightlogo[.3]{figuras/propex.png}  % same but on right




% create subfigure environment
\def\subfigure{
    \let\oldcaption=\caption
    \let\caption=\subcaption
    \minipage
}
\def\endsubfigure{
    \endminipage
    \let\caption=\oldcaption
}

\newcommand{\subcaption}[1]% %1 = text
{
    \refstepcounter{subfig}%
    \par\vskip\abovecaptionskip
    \centerline{\textbf{(\alph{subfig})} #1}%
    \vskip\belowcaptionskip\par 
}




%%% replacement for standard figure environment
\renewenvironment{figure}[1][h]
{\vspace{\figtopskip}
 \refstepcounter{figure}
 \renewcommand{\capstart}{%
    \figcapstartstyle{\figurename\nobreakspace\thefigure:}%
 }
 \renewcommand{\capfirstskip}{\vspace{0.5\figtopskip}\par}
 \renewcommand{\caplastskip}{}
 \noindent%
 \begin{minipage}{\columnwidth}
 \renewcommand{\capbodystyle}{\figcapbodystyle}
}
{\end{minipage}
\vspace{\figbotskip}}

\renewcommand{\algorithmname}{Algorithm}
% \renewcounter{algorithm}
%%% replacement for algorithm environment
\renewenvironment{algorithm}[1][h]
{\vspace{\figtopskip}
 \refstepcounter{algorithm}
 \renewcommand{\capstart}{%
   \algcapstartstyle{\algorithmname\nobreakspace\thealgorithm:}%
 }
 \renewcommand{\capfirstskip}{\vspace{0.5\figtopskip}\par}
 \renewcommand{\caplastskip}{}
 \noindent%
 \begin{boxedminipage}{\columnwidth}
 \renewcommand{\capbodystyle}{\algcapbodystyle}
}
{\end{boxedminipage}
\vspace{\figbotskip}}
%%% replacement for standard table environment
\renewenvironment{table}[1][h]
{\vspace{\figtopskip}
 \refstepcounter{table}
 \renewcommand{\capstart}{%
   \tablecapstartstyle{\tablename\nobreakspace\thetable:}%
 }
 \renewcommand{\caplastskip}{\vspace{0.5\figtopskip}\par}
 \renewcommand{\capfirstskip}{}
 \noindent%
 \begin{minipage}{\columnwidth}
 \renewcommand{\capbodystyle}{\tablecapbodystyle}
 }
 {\end{minipage}\vspace{\figbotskip}}
 
%%% replacement for standard \caption
\renewcommand{\caption}[2][1]{
  \capfirstskip
  \begin{minipage}{#1\columnwidth}
    \renewcommand{\baselinestretch}{1}
    \setbox0=\hbox{\capstart\nobreakspace\capbodystyle #2}
    \ifdim\wd0>\hsize
      {\capstart\nobreakspace\capbodystyle #2}
    \else
      \centerline{\box0}
    \fi
    \par 
  \end{minipage}
  \caplastskip
}

%
\ifthenelse{\equal{\orientation}{landscape}}{
  \setlength{\columnseprule}{0pt}
}{
  \setlength{\columnseprule}{0pt}
}