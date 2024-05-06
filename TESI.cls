%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                %
%        TEMPLATE TESI MAGISTRALE DI MICHAEL TAVONI              %
%                                                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% IDENTIFICAZIONE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TESI}[2024/04/13 Documentclass TESI di Michael Tavoni]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% IMPORTAZIONE DI PACCHETTI E CLASSE DOCUMENTO %%%%%%%%%%%%%%%%%%%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[a4paper, 12pt]{book}
\RequirePackage{etoolbox}
\RequirePackage[utf8]{inputenc}
\RequirePackage[italian]{babel}
\RequirePackage{mathptmx} %font: Times New Roman
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% CAMPI x COPERTINA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\Laureando}[1]{\newcommand{\@Laureando}{#1}}
\newcommand{\Relatore}[1]{\newcommand{\@Relatore}{#1}}
\newcommand{\Indirizzo}[1]{\newcommand{\@Indirizzo}{#1}}
\newcommand{\Correlatore}[1]{\newcommand{\@Correlatore}{#1}}
\newcommand{\Titolo}[1]{\newcommand{\@Titolo}{#1}}
\newcommand{\ParoleChiave}[1]{\newcommand{\@ParoleChiave}{#1}}
\newcommand{\AnnoAccademico}[1]{\newcommand{\@AnnoAccademico}{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% MARGINI, INTERLINEA E INDENTAZIONE PARAGRAFI %%%%%%%%%%%%%%%%%%%%
\geometry{
    top=2cm,
    bottom=2cm,
    right=2cm,
    left=3cm,
    marginpar=1.5cm
} %margini
%\pagenumbering{roman}
\setlength{\parindent}{0pt} %indentazione: 0pt
\onehalfspacing %interlinea: 1.5pt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% INTESTAZIONE E PIÉ DI PAGINA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\@ifclasswith{book}{oneside}{
    \fancyhead[]{}
    \fancyfoot{}
    \renewcommand{\headrulewidth}{0pt}
    \fancyfoot[R]{\thepage}
    \pagestyle{empty} %intestazione e pedice vuoto  
}{
    \fancyhead[]{}
    \fancyfoot{}
    \renewcommand{\headrulewidth}{0pt}
    \fancyfoot[LE,RO]{\thepage}
    \pagestyle{empty} %intestazione e pedice vuoto
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% IMPOSTAZIONI LINK DEL DOCUMENTO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    urlcolor=blue,
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% METADATI AUTORE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{
    \hypersetup{
        pdfauthor={\@Laureando},
        pdftitle={\@Titolo},
        pdfkeywords={\@ParoleChiave},
        pdfsubject=Tesi di {\@Laureando} in {\@Titolo},
        pdfcreator={\@Laureando} con template MT
    }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% COPERTINA DELLA TESI %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{
    \begin{titlepage}
        \newgeometry{
                    top=2cm,
                    left=2cm,
                    right=2cm,
                    bottom=2cm,
                    marginpar=0cm}

        \centering
        \Large
        \textsc{Università degli studi di Modena e Reggio Emilia}
        \normalsize

        \vspace{4pt}
        
        \rule{\textwidth}{0.4pt}

        \vspace{2pt}
        
        \Large
        Dipartimento di Economia ``Marco Biagi"
        \large

        \vspace{3pt}
        
        \@Indirizzo
        
        \vfill
        
        \huge
        \onehalfspacing
        \@Titolo
        \singlespacing
        \normalsize
        
        \vfill
        
        \large
        \begin{minipage}[t]{0.45\textwidth}
            \begin{flushleft}
                \textsc{relatore:}

                \@Relatore
                \ifdefempty{\@Correlatore}{}{

                    \vspace{8pt}

                    \textsc{correlatore:}

                    \@Correlatore
                }
            \end{flushleft} 
        \end{minipage}
        \begin{minipage}[t]{0.45\textwidth}
            \begin{flushright}
                \begin{tabular}{l}
                    \textsc{laureando:}\\
                    \@Laureando
                \end{tabular}
            \end{flushright}
        \end{minipage}
        
        \vfill
        \rule{\textwidth}{0.4pt}
        
        \textsc{anno accademico {\@AnnoAccademico}}

        \normalsize

        \restoregeometry
    \end{titlepage}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% INTESTAZIONE E PIÉ DI PAGINA DELLA PRIMA PAGINA DEL CAPITOLO %%%%%%%
\patchcmd{\chapter}{\thispagestyle{plain}}{\pagestyle{fancy}}{}{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% INTESTAZIONE E PIÉ DI PAGINA NELL'INDICE %%%%%%%%%%%%%%%%%%%%%%%%%%%
% \let\oldindice\tableofcontents
% \renewcommand{\tableofcontents}{
%     \pagestyle{fancy}
%     \oldindice
% }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% COMANDO PER CREARE UNA PAGINA BIANCA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\blankpage}{
    \newpage
    \thispagestyle{fancy}
    \mbox{}
    \clearpage
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% COMANDO DEDICA: crea una dedica come nei libri %%%%%%%%%%%%%%%%%%%%%%
%(inserisce la dedica in seconda pagina in corsivo in centro a destra)
% \newcommand{\dedica}[1]{
%     %\addtocounter{page}{-1}
%     \thispagestyle{empty}
%     \vspace*{\fill} 
%     \begin{flushright}
%         \begin{minipage}{0.40\textwidth}
%             \raggedleft
%             \large
%             \textit{{#1}}
%         \end{minipage}
%     \end{flushright}
%     \vfill
%     \clearpage 
% }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\@ifclasswith{book}{openright}{
    \newcommand{\dedica}[1]{
        \cleardoublepage
        \thispagestyle{empty}
        \vspace*{\fill} 
        \begin{flushright}
            \begin{minipage}{0.40\textwidth}
                \raggedleft
                \large
                \textit{{#1}}
            \end{minipage}
        \end{flushright}
        \vfill
        \clearpage 
    }
}{
    \newcommand{\dedica}[1]{
        %\addtocounter{page}{-1}
        \thispagestyle{empty}
        \vspace*{\fill} 
        \begin{flushright}
            \begin{minipage}{0.40\textwidth}
                \raggedleft
                \large
                \textit{{#1}}
            \end{minipage}
        \end{flushright}
        \vfill
        \clearpage 
    }
}