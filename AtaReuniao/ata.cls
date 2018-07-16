%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% ata.cls
% =======
% 
% Copyright 2012 Fernando Náufel do Amaral (fnaufel@gmail.com)
% 
% Classe LaTeX para formatação de atas de reunião
% 
% Version: 1.0 (November 2012)
% 
% For documentation and usage instructions, see file exemploata.tex
% 	
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is Fernando Náufel do Amaral (fnaufel@gmail.com)
%
% This work consists of the files ata.cls and exemploata.tex
% and the derived file exemploata.pdf.



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ata}
%  [2012/11/21 v1.0 Ata de Reunião Departamental -- fnaufel at gmail.com]


%%%%%%%%%% Pacotes necessários:
\RequirePackage{ifthen}
\RequirePackage{paralist}
\RequirePackage{lineno}

\RequirePackage{array}

\usepackage[utf8]{inputenc}
\usepackage{graphicx}


%\usepackage[a4paper, top=1.7in,bottom=1in,right=1in,left=1in,headheight=65pt]{geometry}

%%%%%%%%%% Opções de invocação:

% Usar pacote beton (usa fonts Concrete).
\newboolean{@beton}
\setboolean{@beton}{true}
%\DeclareOption{beton}%
%    {\setboolean{@beton}{true}}

% Usar pacote euler (usa fonts Euler para matemática).
\newboolean{@euler}
\setboolean{@euler}{true}
%\DeclareOption{euler}%
%    {\setboolean{@euler}{true}}

% Encaminhar outras opções para a classe article.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax


%%%%%%%%%% Carregar classe article.
\LoadClass{article}


%%%%%%%%%% Carregar pacotes opcionais (euler, beton):
\ifthenelse{\boolean{@beton}}{
  \RequirePackage{beton}
}
%else
{}

\ifthenelse{\boolean{@euler}}{
  \RequirePackage{euler}
}
%else
{}


%%%%%%%%%% Opções de configuração pelo usuário:

% Estilo do nome do ponto da pauta:
\newcommand{\estilonomeponto}{\bfseries}

\label{Funções}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%              Funções                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Verifica se uma determinada macro não está vazia
\newcommand{\ifnotempty}[3]{\ifthenelse{\not\equal{#1}{}}{#2}{#3}}

% Verifica se uma determinada macro está vazia
\newcommand{\ifempty}[3]{\ifthenelse{\equal{#1}{}}{#2}{#3}}
%%%%%%%%%% Formatação das listas de nomes

\label{ehIgual}
\newcommand{\ehIgual}[4]{
	\ifthenelse{ \equal{#1}{#2} }{#3}{#4}
}
\label{ehDifernte}
\newcommand{\ehDiferente}[4]{
	\ifthenelse{ \not\equal{#1}{#2} }{#3}{#4}
}
\label{FuncoesFormatacaoLista}

\usepackage{xcolor}
\usepackage{pgffor}
\usepackage{xstring}


% Specify the formatting of each of the list members
\newcommand*{\FormatFirstListMember}[1]{#1}  %\textcolor{magenta}{\texttt{#1}}}%
\newcommand*{\FormatMiddleListMember}[1]{#1} %\textcolor{blue}{\texttt{#1}}}%
\newcommand*{\FormatLastListMember}[1]{#1}   %\texttt{#1}}%


\newcounter{TotalNumberOfListMembers}%
\newcommand{\SetTotalNumberOfListMembers}[1]{%
	\setcounter{TotalNumberOfListMembers}{0}%
	\foreach \member in {#1} {%
		\stepcounter{TotalNumberOfListMembers}%
	}%
}%


\newcounter{CurrentListMemberCount}%
\label{formatarLista}
\newcommand*{\formatarLista}[1]{%
	\SetTotalNumberOfListMembers{#1}%
	\setcounter{CurrentListMemberCount}{0}%
	\foreach \member in {#1} {%
		\stepcounter{CurrentListMemberCount}%
		\IfEq{\the\value{CurrentListMemberCount}}{1}{%
			\FormatFirstListMember{\member}%
		}{%
			\IfEq{\the\value{CurrentListMemberCount}}{\the\value{TotalNumberOfListMembers}}{%
				\unskip\space e \FormatLastListMember{\member}%
			}{\unskip, \FormatMiddleListMember{\member}}
		}%
	}%
}%


%%%%%%%%%% Comandos para processar a data:

\newcounter{@dia}
\newcounter{@mes}
\newcounter{@ano}

\newcommand{\dia}[1]{%
  \setcounter{@dia}{#1}%
}

\newcommand{\mes}[1]{%
  \setcounter{@mes}{#1}%
}

\newcommand{\ano}[1]{%
  \setcounter{@ano}{#1}%
}

% Se estivermos usando euler, queremos que os números fiquem bonitos;
% então, usamos modo matemático para a data.
\newcommand{\hoje}{%
  $\arabic{@dia}$/$\arabic{@mes}$/$\arabic{@ano}$%
}

\newcommand{\hojeporextenso}{%
  % Nomes dos meses.
  % É preciso defini-los aqui dentro deste \newcommand, para que 
  % apareçam com o font correto (Concrete ou não).
  \expandafter\newbox\csname mes1\endcsname%
  \expandafter\newbox\csname mes2\endcsname%
  \expandafter\newbox\csname mes3\endcsname%
  \expandafter\newbox\csname mes4\endcsname%
  \expandafter\newbox\csname mes5\endcsname%
  \expandafter\newbox\csname mes6\endcsname%
  \expandafter\newbox\csname mes7\endcsname%
  \expandafter\newbox\csname mes8\endcsname%
  \expandafter\newbox\csname mes9\endcsname%
  \expandafter\newbox\csname mes10\endcsname%
  \expandafter\newbox\csname mes11\endcsname%
  \expandafter\newbox\csname mes12\endcsname%
  \expandafter\setbox\csname mes1\endcsname=\hbox{janeiro}%
  \expandafter\setbox\csname mes2\endcsname=\hbox{fevereiro}%
  \expandafter\setbox\csname mes3\endcsname=\hbox{março}%
  \expandafter\setbox\csname mes4\endcsname=\hbox{abril}%
  \expandafter\setbox\csname mes5\endcsname=\hbox{maio}%
  \expandafter\setbox\csname mes6\endcsname=\hbox{junho}%
  \expandafter\setbox\csname mes7\endcsname=\hbox{julho}%
  \expandafter\setbox\csname mes8\endcsname=\hbox{agosto}%
  \expandafter\setbox\csname mes9\endcsname=\hbox{setembro}%
  \expandafter\setbox\csname mes10\endcsname=\hbox{outubro}%
  \expandafter\setbox\csname mes11\endcsname=\hbox{novembro}%
  \expandafter\setbox\csname mes12\endcsname=\hbox{dezembro}%
  \ifthenelse{\the@dia=1}{Ao}{Aos}
  $\arabic{@dia}$
  de 
  \expandafter\unhbox\csname mes\the@mes\endcsname
  \ de
  $\arabic{@ano}$%
}

\newcommand{\hojeporextensoSemAos}{%
	% Nomes dos meses.
	% É preciso defini-los aqui dentro deste \newcommand, para que 
	% apareçam com o font correto (Concrete ou não).
	\expandafter\newbox\csname mes1\endcsname%
	\expandafter\newbox\csname mes2\endcsname%
	\expandafter\newbox\csname mes3\endcsname%
	\expandafter\newbox\csname mes4\endcsname%
	\expandafter\newbox\csname mes5\endcsname%
	\expandafter\newbox\csname mes6\endcsname%
	\expandafter\newbox\csname mes7\endcsname%
	\expandafter\newbox\csname mes8\endcsname%
	\expandafter\newbox\csname mes9\endcsname%
	\expandafter\newbox\csname mes10\endcsname%
	\expandafter\newbox\csname mes11\endcsname%
	\expandafter\newbox\csname mes12\endcsname%
	\expandafter\setbox\csname mes1\endcsname=\hbox{janeiro}%
	\expandafter\setbox\csname mes2\endcsname=\hbox{fevereiro}%
	\expandafter\setbox\csname mes3\endcsname=\hbox{março}%
	\expandafter\setbox\csname mes4\endcsname=\hbox{abril}%
	\expandafter\setbox\csname mes5\endcsname=\hbox{maio}%
	\expandafter\setbox\csname mes6\endcsname=\hbox{junho}%
	\expandafter\setbox\csname mes7\endcsname=\hbox{julho}%
	\expandafter\setbox\csname mes8\endcsname=\hbox{agosto}%
	\expandafter\setbox\csname mes9\endcsname=\hbox{setembro}%
	\expandafter\setbox\csname mes10\endcsname=\hbox{outubro}%
	\expandafter\setbox\csname mes11\endcsname=\hbox{novembro}%
	\expandafter\setbox\csname mes12\endcsname=\hbox{dezembro}%
	\ifthenelse{\the@dia=1}{}{}
	$\arabic{@dia}$
	de 
	\expandafter\unhbox\csname mes\the@mes\endcsname
	\ de
	$\arabic{@ano}$%
}


%%%%%%%%%% Tipo de reunião.
% Não usa caixas, pois poderia causar diferença de fonts.
\newcommand{\deftiporeuniao}[1]{%
  \newcommand{\tiporeuniao}[1]{#1}%
}


%%%%%%%%%% Tipo de reunião (advérbio).
% Não usa caixas, pois poderia causar diferença de fonts.
\newcommand{\deftiporeuniaoadv}[1]{%
  \newcommand{\tiporeuniaoadv}[1]{#1}%
}

%
%% custom footrule
%%\renewcommand\footrule{\begin{minipage}{1\textwidth}
%%		\hrule width \hsize height .1mm   
%%	\end{minipage}\par}%

% custom page number
\usepackage{lastpage}
\setcounter{page}{1}
\pagenumbering{arabic}


%%%%%%%%%% Nome de quem presidiu:
\newcommand{\defpresidiu}[1]{%
  \newcommand{\presidiu}{#1}%
}


%%%%%%%%%% Cargo de quem presidiu:
\newcommand{\defcargopresidiu}[1]{%
  \newcommand{\cargopresidiu}{#1}%
}


%%%%%%%%%% Nome de quem secretariou:
\newcommand{\defsecretariou}[1]{%
  \newcommand{\secretariou}{#1}%
}

%%%%%%%%%% Presentes e ausentes.

% Lista de presentes.
% Atenção: produz um espaço ANTES da lista. É intencional.
%\newcommand{\defpresentes}[1]{%
%  \newbox\@presentes%
%  \setbox\@presentes=\hbox{\ignorespaces #1\unskip}%
%  \newcommand{\presentes}{\unskip{} \unhbox\@presentes}%
%}

\newcommand{\listProfPresente}{\def \@listProfPresente}
\newcommand{\imprimirListProfPresente}{\@listProfPresente}

\label{Lista Prof. Presentes}
\newcommand{\defpresentes}[1]{%
	\newbox\@presentes%
	\setbox\@presentes=\hbox{\ignorespaces #1\unskip}%	
	\listProfPresente{#1}
	\newcommand{\presentes}{
		\ehIgual{#1}{} { Somente o \presidiu \space compareceu. }{Compareceram os professores \formatarLista{#1} \unskip{}.\unskip}
	 } 
 	\newcommand{\imprimirRegiaoAssinaturaPresentes}{\imprimirRegiaoAssinatura{#1}}
 	\newcommand{\imprimirRegiaoAssinaturaSemDataELocal}{\regiaoAssinaturaSemDataELocal{#1}}
}
\label{Assinatura}
%%%%%%%%%%%%%%%%%%%%%%%%%%% ASSINATURA

\newcommand{\regiaoAssinaturaSemDataELocal}[1]{
	\vspace{1cm}
	
	\foreach \member in {#1} {%
		\assinatura{\member}
	}%
}   

\newcommand{\imprimirRegiaoAssinatura}[2][Lagarto]{
	\begin{center}
		#1, \hojeporextensoSemAos.
	\end{center}
	\vspace{1cm}	
	\foreach \member in {#2} {%
		\assinatura{\member}
	}%
}     

\newcommand{\assinatura}[2][8cm]{%
	\begin{tabular}{@{}p{#1}@{}}
		\space \hrule 
		{\small \textit{#2} } 
		\space \\[5pt]
	\end{tabular}
}


\label{Lista Prof. Ausentes}
% Atenção: produz um espaço ANTES da lista. É intencional.
\newcommand{\defausentes}[1]{%
  \newbox\@ausentes%
  \setbox\@ausentes=\hbox{#1}%
  %\newcommand{\ausentes}{\unskip\unhbox\@ausentes\unskip}%
  \newcommand{\ausentes}{
  	\ehDiferente{#1}{} {\space Faltaram os professores \unskip{} \formatarLista{#1}.}{}
  }
}

\label{Lista Prof. Justificados}
% Atenção: produz um espaço ANTES da lista. É intencional.
\newcommand{\defjustif}[1]{%
  \newbox\@justificados%
  \setbox\@justificados=\hbox{#1}%
  \newcommand{\justificados}{
  	\ehDiferente{#1}{} {\space Justificaram ausência os professores  \formatarLista{#1}.}{}  	
  }
}


%%%%%%%%%% Pontos da pauta e seu desenvolvimento:

% Número do ponto:
\newcounter{@nponto}
\setcounter{@nponto}{0}


% Ambiente ponto. Argumento opcional: label para referências. 
% Argumento obrigatório: nome do ponto.
\newenvironment{ponto}[2][@vazio]
{%
  \refstepcounter{@nponto}%
  \ifthenelse{\equal{#1}{@vazio}}{}{\label{#1}}%
  % Cria caixa com o nome do ponto (no estilo \estilonomeponto).
  \global\expandafter\newbox\csname @ponto\the@nponto\endcsname%
  \global\expandafter\setbox\csname @ponto\the@nponto\endcsname=%
    \hbox{\estilonomeponto\ignorespaces #2\unskip}%
  % Cria caixa com o corpo do ponto (em texto normal).
  \global\expandafter\newbox\csname @corpo\the@nponto\endcsname%
  \global\expandafter\setbox\csname @corpo\the@nponto\endcsname=%
    \hbox\bgroup\ignorespaces%
}%
{%
  \unskip%
  \egroup%
}%


% Comando \pauta. Gera lista dos nomes dos pontos:
\newcommand{\pauta}{%
  \newcounter{@iponto}%
  \setcounter{@iponto}{1}%
  \begin{inparaenum}[$1.$]
    \whiledo{\not \the@iponto>\the@nponto}%
    {%
      \textbf{\item%
        \unhcopy\csname @ponto\the@iponto\endcsname
          \ifthenelse{\the@iponto=\the@nponto}{. }{; }}%
      \stepcounter{@iponto}%
    }%
  \end{inparaenum}%
}


% Comando \desenvolvimento. Gera lista dos corpos dos pontos:
\newcommand{\desenvolvimento}{%
  \newcounter{@jponto}%
  \setcounter{@jponto}{1}%
  \begin{inparaenum}[$1.$]
    \whiledo{\not \the@jponto>\the@nponto}%
    {%
      \textbf{\item
        \unhbox\csname @ponto\the@jponto\endcsname:}
        \unhbox\csname @corpo\the@jponto\endcsname\ %
      \stepcounter{@jponto}%
    }%
  \end{inparaenum}
}



%%%%%%%%%% Redefinindo itemize, enumerate, description in parágrafos:
\renewenvironment{enumerate}[1][\bfseries (a)]
{\begin{inparaenum}[#1]}
{\unskip\end{inparaenum}}

\renewenvironment{itemize}
{\begin{inparaitem}}
{\unskip\end{inparaitem}}

\renewenvironment{description}
{\begin{inparadesc}}
{\unskip\end{inparadesc}}


%%%%%%%%%% Abreviaturas para Prof., Profa.
\newcommand{\prof}{Prof.~}
\newcommand{\profa}{Prof\textordfeminine~}


\endinput


