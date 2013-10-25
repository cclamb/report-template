\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{afrlreport}[2013/10/20 v1.0 AFRL Monthly Report Proposal Class (c) 2013 AHS Engineering Services, LLC]

\LoadClass{article}

\renewcommand\normalsize{%
	 \@setfontsize\normalsize\@xpt\@xiipt
	 \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
	 \abovedisplayshortskip \z@ \@plus3\p@
	 \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
	 \belowdisplayskip \abovedisplayskip
	 \let\@listi\@listI}
\normalsize
\renewcommand\small{%
	 \@setfontsize\small\@ixpt{11}%
	 \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
	 \abovedisplayshortskip \z@ \@plus2\p@
	 \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
	 \def\@listi{\leftmargin\leftmargini \topsep 4\p@ \@plus2\p@ \@minus2\p@ \parsep 2\p@ \@plus\p@ \@minus\p@ \itemsep \parsep}%
	 \belowdisplayskip \abovedisplayskip
}
 \renewcommand\footnotesize{%
	 \@setfontsize\footnotesize\@viiipt{9.5}%
	 \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
	 \abovedisplayshortskip \z@ \@plus\p@
	 \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
	 \def\@listi{\leftmargin\leftmargini \topsep 3\p@ \@plus\p@ \@minus\p@ \parsep 2\p@ \@plus\p@ \@minus\p@ \itemsep \parsep}%
	 \belowdisplayskip \abovedisplayskip
}
\renewcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt} 
\renewcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\renewcommand\large{\@setfontsize\large\@xiipt{14}}
\renewcommand\Large{\@setfontsize\Large\@xivpt{16}} 
\renewcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}} 
\renewcommand\huge{\@setfontsize\huge\@xxpt{25}} 
\renewcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}

\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{xcolor}
\RequirePackage{ifthen}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{extramarks}
\RequirePackage{enumitem}
\RequirePackage{wrapfig}
\RequirePackage{amssymb}
\RequirePackage{calc}
\RequirePackage[T1]{fontenc} % needed for boldface smallcap font
\RequirePackage{natbib}
\RequirePackage{multicol}
\RequirePackage{tocloft}
\RequirePackage{fullpage}




% No horizontal rule below the header (fancyhdr package)
\renewcommand{\headrulewidth}{0pt}

% define page layout lengths
\setlength{\textheight}{9in} 
\setlength{\textwidth}{6.5in}
\setlength{\topmargin}{-0.65in}
\setlength{\headheight}{24pt}
\setlength{\footskip}{0in}
\setlength{\oddsidemargin}{0in} 
\setlength{\evensidemargin}{0in}
\setlength{\parskip}{1em}
\setlength{\parindent}{0.0em}
\setlength{\footskip}{0.5in}

%%%% bibliography settings  %%%%
\renewcommand\bibsection{\sbirsection{\refname}{}}
\bibfont{\small}
\setlength{\bibsep}{2pt}

%%%% table of contents settings  %%%%
\setlength\cftparskip{2pt}




% define newcommands for proposal information
\newcommand*{\projectname}[1]{\def\fromprojectname{#1}}
\newcommand*{\phase}[1]{\def\fromphase{#1}}
\newcommand*{\contractnumber}[1]{\def\fromcontractnumber{#1}}
\newcommand*{\lineitemnumber}[1]{\def\fromlineitemnumber{#1}}
\newcommand*{\contractorid}[1]{\def\fromcontractorid{#1}}
\newcommand*{\company}[1]{\def\fromcompany{#1}}
\newcommand*{\streetaddress}[1]{\def\fromstreetaddress{#1}}
\newcommand*{\city}[1]{\def\fromcity{#1}}
\newcommand*{\state}[1]{\def\fromstate{#1}}
\newcommand*{\zipcode}[1]{\def\fromzipcode{#1}}
\newcommand*{\phone}[1]{\def\fromphone{#1}}
\newcommand*{\reportingperiod}[1]{\def\fromreportingperiod{#1}}
\newcommand*{\primaryrecipient}[1]{\def\fromprimaryrecipient{#1}}
\newcommand*{\secondaryrecipient}[1]{\def\fromsecondaryrecipient{#1}}
\newcommand*{\expirydate}[1]{\def\fromexpirydate{#1}}

\fancypagestyle{proprietary}{
  \lhead{}
  \chead{
  \begin{center}
  {\large
  {\bf R \& D Project Summary} \\~\\
  {\bf \fromprojectname~ Phase~ \fromphase~ ---~ \@date}
  }
  \end{center}
  }
  \rhead{}
}

%\rhead{\color{LeTigre}Topic No: \fromtopicnum~\\}
%\chead{\color{LeTigre}\scshape\fromcompany~\\~\\ Proposal No: \fromproposalnum}
%\lhead{\color{LeTigre}\scshape{Proprietary}~\\}
%\lfoot{\color{LeTigre}\scshape{Proprietary}}
%\cfoot{\color{LeTigre}\vspace*{-1.25em}{\scshape\fromproposaltitle}~\\~\\ \rm\thepage~\\}
%\rfoot{\color{LeTigre}\scshape\fromproposaltype}

%\chead{
%  \begin{center}
%  {\large
%  {\bf R \& D Project Summary} \\~\\
%  {\bf \fromprojectname~ Phase~ \fromphase~ ---~ \@date}
%  }
%  \end{center}
%}

\renewcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  %\null\vfil
  %\vskip 60\p@
  \begin{center}
  {\large
  {\bf R \& D Project Summary} \\~\\
  {\bf \fromprojectname~ Phase~ \fromphase~ ---~ \@date}
  }
  \end{center}
  \vskip 40\p@

  \hrulefill
  
  \begin{center}
  	\renewcommand{\arraystretch}{1.5}
  	{\large
  	\begin{tabular}[b]{ l p{9cm} }
  	{\bf Contract Number:} & 			{\bf \fromcontractnumber} \\
  	{\bf Contract Line Item No.:} & 		{\bf \fromlineitemnumber} \\
  	{\bf Contractor Identification:} & 	{\bf \fromcompany} \newline
  										{\bf \fromstreetaddress} \newline
  										{\bf \fromcity, \fromstate~ \fromzipcode} \\
  	{\bf Project Title:} &				{\bf \@title} \newline
  										{\bf Phase~ \fromphase~ STTR} \\
	{\bf Report Date: } &				{\bf \@date} \\
	{\bf Reporting Period: } &			{\bf \fromreportingperiod} \\  	
	{\bf Submitted By: } &				{\bf \@author, PI } \\
	{\bf Distributed To:} &				{\bf \fromprimaryrecipient} \newline
										{\bf \fromsecondaryrecipient} \\
  	\end{tabular}
  	}
  	\renewcommand{\arraystretch}{1.0}
  \end{center}
  
  \null\vfill  
  
  \begin{center}
  {\large {\bf Distribution Authorized to U.S. Government Agencies Only.}}
  \renewcommand{\arraystretch}{1.5}
  \begin{tabular}[b]{ | p{2cm} p{6cm} p{2cm} p{4cm} |}
    \hline
    \multicolumn{4}{ | c | }{STTR Data Rights} \\
    Contract No. 		& \fromcontractnumber 	& Contractor 	& \underline\fromcompany \\
    Expiration Date:		& \fromexpirydate		& {}				& {} \\
    Address:				& \underline\fromstreetaddress \newline \underline{\fromcity, \fromstate~ \fromzipcode}
    												& {}				& {} \\
    	\multicolumn{4}{ | c | }{} \\
    \multicolumn{4}{ | p{16cm} | }{The Government?s rights to use, modify, reproduce, release, perform, display, or disclose technical data or computer software marked with this legend are restricted during the period shown as provided in paragraph (b) (4) of the Rights in Noncommercial Technical Data and Computer Software-Small Business Innovative Research (SBIR) Program clause contained in the above identified contract. No restrictions apply after the expiration date shown above. Any reproduction of technical data, computer software, or portions thereof marked with this legend must also reproduce the markings. 
} \\		
	\multicolumn{4}{ | c | }{} \\									
    \hline
    \end{tabular}
  \renewcommand{\arraystretch}{1.0}
  \end{center}
  
%Contract Number: FA8750-12-C-0132 
%Contract Line Item No.: 0007 
%Contractor Identification: Modus Operandi, Inc. 
%709 S. Harbor City Blvd., Suite 400 
%Melbourne, FL 32901 
%(321) 473-1400 
%Project Title: Nublu: Assured Information Sharing in Clouds 
%Phase I STTR 
%Report Date: 11/05/2012 
%Reporting Period: 10/01/2012 - 10/31/2012 
%Submitted By: Mark D. Heileman, PI 
%Distributed To: Virginia Ross, AFRL/RITB 
% Rosetta McCoy, DCMA 
  
  
%  \begin{center}%
%    {\LARGE \@title \par}%
%    \vskip 3em%
%    {\large
%     \lineskip .75em%
%      \begin{tabular}[t]{c}%
%        \@author
%      \end{tabular}\par}%
%      \vskip 1.5em%
%    {\large \@date \par}%       % Set date in \large size.
%  \end{center}
%  \par
%  \@thanks
%  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}


