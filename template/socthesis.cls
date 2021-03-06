\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template/socthesis}[2017/01/15 Document class for czech SOC theses]
\LoadClass[12pt, a4paper, oneside]{book}

\RequirePackage{geometry}

\RequirePackage{indentfirst}
\RequirePackage[utf8]{inputenc}
\RequirePackage[slovak]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{array}
\RequirePackage{listings}
\RequirePackage{multicol}
\RequirePackage{tabularx}
\RequirePackage{appendix}
\RequirePackage{float}
\RequirePackage{adjustbox}

\RequirePackage{layout}
\RequirePackage{makecell}
\RequirePackage[bookmarksopen,colorlinks,plainpages=false,linkcolor=black,urlcolor=blue,citecolor=black,filecolor=black,menucolor=black,unicode=true,breaklinks]{hyperref}
\RequirePackage{csquotes}
\RequirePackage[backend=bibtex,bibstyle=numeric,sorting=none,date=long,dateabbrev=false,texencoding=utf8,bibencoding=utf8,style=iso-numeric]{biblatex}
%\RequirePackage[backend=bibtex, style=iso-authoryear, autolang=other, sortlocale=sk_SK, bibencoding=UTF8]{biblatex}
\RequirePackage{caption}

%%%%%% PŘÍKAZY
\newcommand{\B}{\textbf} % tučné písmo
\newcommand{\It}{\textit} % kurzíva

%%%%%% ROZMĚRY

% posun textu kvůli kroužkové vazbě
%\addtolength{\textwidth}{mm}
%\addtolength{\hoffset}{10mm}

\setlength{\intextsep}{5mm} % nastavení mezery okolo obrázků
%\marginparsep=15pt
\linespread{1.5}
\unitlength=1mm % nastavení volby jednotek


%%%%%% ROVNICE
\DeclareCaptionType{listedequation}[Rovnice][Seznam rovnic]
%\captionsetup[listedequation]{labelformat = parens}

%% hyperref \autoref nazvy
\def\sectionautorefname{Kapitola}
\def\figureautorefname{Obrázek}
\def\tableautorefname{Tabulka}


%%%%%% PROMĚNNÉ
\def\titlesk#1{\def\@titlesk{#1}}
\def\address#1{\def\@address{#1}}
\def\author#1{\def\@author{#1}}
\def\school#1{\def\@school{#1}}
\def\region#1{\def\@region{#1}}
\def\mentor#1{\def\@mentor{#1}}
\def\mentorstatement#1{\def\@mentorstatement{#1}}
\def\placefooter#1{\def\@placefooter{#1}}
\def\organizer#1{\def\@organizer{#1}}

\RequirePackage{xstring}
\newcommand{\field}[1]{%
\IfStrEqCase{#1}{
    {1}{\def\@field{1. Matematika a~statistika}}
    {2}{\def\@field{2. Fyzika}}
    {3}{\def\@field{3. Chemie}}
    {4}{\def\@field{4. Biologie}}
    {5}{\def\@field{5. Geologie, geografie}}
    {6}{\def\@field{6. Zdravotnictví}}
    {7}{\def\@field{7. Zemědělství, potravinářství, lesní a~vodní hospodářství}}
    {8}{\def\@field{8. Ochrana a~tvorba životního prostředí}}
    {9}{\def\@field{9. Strojírenství, hutnictví, doprava a~průmyslový design}}
    {10}{\def\@field{10. Elektrotechnika, elektronika a~telekomunikace}}
    {11}{\def\@field{11. Stavebnictví, architektura a~design interiérů}}
    {12}{\def\@field{12. Tvorba učebních pomůcek, didaktická technologie}}
    {13}{\def\@field{13. Ekonomika a~řízení}}
    {14}{\def\@field{14. Pedagogika, psychologie, sociologie a~problematika volného času}}
    {15}{\def\@field{15. Teorie kultury, umění a~umělecké tvorby}}
    {16}{\def\@field{16. Historie}}
    {17}{\def\@field{17. Filozofie, politologie a~ostatní humanitní a~společenskovědní obory}}
    {18}{\def\@field{18. Informatika}}
  }
  [Neznámé číslo oboru, upravte \\field{} příkaz!]
}

\address{}
\region{Jihomoravský}
\placefooter{Nové Mesto nad Váhom \the\year}
\mentorstatement{\@mentor}

%%% Titulní strany
\renewcommand{\maketitle}{%
	\pagestyle{empty}
	\voffset = -10mm % posun začátku textu výš
    \enlargethispage{40mm} % zvětší oblast tisku pro tuto stránku
    %\addtolength{\hoffset}{10mm}
	\begin{center}
		{\large \B{\@school}} \\
		{\large \B{\@address}} \\
		
		\vspace{60mm}
		
	    {\large \B{STREDOŠKOLSKÁ ODBORNÁ ČINNOSŤ}} \\
	    \vspace{5mm}
		\normalsize \B{Číslo odboru: 11} \\
		
		\normalsize \B{Názov odboru: Informatika} \\

		\vspace{20mm}

		{\LARGE \B{\@titlesk}} \\
		
		\vfill
	\end{center}
	
	\noindent\begin{tabular}{lll} % [t]{@{}} 
		2019 \\
		Stará Turá \\
	\end{tabular}
	\hfill
	\begin{tabular}[t]{r@{}}  
		Riešitelia \\
		\B\@author \\
		Ročník štúdia: štvrtý \\	
	\end{tabular}


	\newpage

	\pagestyle{empty}
	\voffset = -10mm % posun začátku textu výš
	\enlargethispage{40mm} % zvětší oblast tisku pro tuto stránku
	\begin{center}
		{\large \B{\@school}} \\
		{\large \B{\@address}} \\ 
		{\large \B{\@organizer}} \\
		
		\vspace{60mm}
		
		{\large \B{STREDOŠKOLSKÁ ODBORNÁ ČINNOSŤ}} \\
		\vspace{5mm}
		\normalsize \B{Číslo odboru: 11} \\
		
		\normalsize \B{Názov odboru: Informatika} \\
		
		\vspace{20mm}
		
		{\LARGE \B{\@titlesk}} \\
		
		\vfill
	\end{center}
	
	\noindent\begin{tabular}{lll} % [t]{@{}} 
		2019 \\
		Stará Turá \\
	\end{tabular}
	\hfill
	\begin{tabular}[t]{r@{}}  
		Riešitelia \\
		\B\@author \\
		Ročník štúdia: štvrtý \\	
	\end{tabular}

	\newpage
	
}

%%% Prohlášení
\newcommand{\makecopyrightstatement}[1]{
	\pagestyle{empty}

	~
	\vfill

	\section*{Čestné vyhlásenie}
	Vyhlasujem, že svoju prácu na tému \It{\@titlesk} som vypracoval samostatne s~použitím odbornej literatúry a~ďalších informačných zdrojov, ktoré sú všetky citované v~práci a~uvedené v~zozname literatúry na~konci práce. Prácu  som  neprihlásil  a ani  neprezentoval v žiadnej inej súťaži, ktorá je pod gestorstvom MŠMVVaŠ SR. Som si vedomý dôsledkov, ak uvedené údaje nie sú pravdivé.

	\vspace{15mm}

	\noindent \parbox{\textwidth}{
		\noindent {#1} dňa: \rule{4cm}{1pt}
		\hfill\parbox{5cm}{
    		\centering
    		\vspace{12mm}
    		\rule{5cm}{1pt}\\
        	\@author
		}
	}

	\newpage
	\pagestyle{plain}
}

\newcommand{\makethanks}[1]{
	\pagestyle{empty}
	~
	\vfill
	\section*{Poďakovanie}
	{#1}


	\newpage
	\pagestyle{plain}
}




