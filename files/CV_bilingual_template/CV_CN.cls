%This class file is typed with the guidance:
%https://www.overleaf.com/learn/latex/How_to_write_a_LaTeX_class_file_and_design_your_own_CV_(Part_1)



\NeedsTeXFormat{LaTeX2e} %tells the version of LaTeX the package is for.
\ProvidesClass{CV_CN}[2021/03/25 My custom CV class]%first argument should match the filename of your class file and tells LaTeX what your package is called;
% The second argument is optional and provides a description of your class which will appear in the log and other places,
% the description must begin with a date in exactly the format above and it should be the date the package was last modified. This can be used when including the class to check that you have a recent enough version of it. For example , if you typed \ProvidesClass{my_cv}[2011/03/26 My custom CV class] and if you include it via \documentclass{my_cv}[2012/01/01] with a date which is newer than the date in the class description, i.e. 03/26, then a warning will be shown saying that the class is outdated.

\LoadClass{article} %this is required by the package {titlesec} later
\RequirePackage{nopageno}%remove all page numbers  %\usepackage{} also works here...?
%also try \pagenumbering{gobble} in the beginning of .tex file



%Next, apply packages, create new commands to customise styles. Note using \RequirePackage in class files instead of \usepackage

%Recall, use the following to create a new command:
%\newcommand{\NameOfCommand}[number of arguments]{
%  contents of command including #k as the k-th argument
% }





%=====Overall looking of pages=====
\RequirePackage[
	a4paper,
	left=0.4in,
	right=0.5in,
	top=0.5in,
	bottom=0.2in, %the actual result also depends on spacing of itemizations
	nohead,
	%nofoot %it seems that with nofoot, adjusting bottom=*in does not give ideal result, do not know why
]{geometry}
%Recall in tex file, do similar thing by:
%\usepackage[left=3cm, right=2cm, top=2cm]{geometry}





%=====Fonts=====
\RequirePackage{fontspec}
\RequirePackage{xeCJK}

\defaultfontfeatures{Path = fonts/, Mapping=tex-text}

\setmainfont[
  Path = fonts/,
  UprightFont = OpenSans-Regular.ttf, 
  BoldFont = NotoSerifSC-Bold.otf,
  ItalicFont = OpenSans-italic.ttf,
  BoldItalicFont = OpenSans-bolditalic.ttf,
  SmallCapsFont = TrajanPro-Regular.otf %OpenSans-Bold.ttf   %COM4F_RG.ttf
]{OpenSans-Regular} %the last argument in {} is the main-text font; do not why console tells not including extension here


\setCJKmainfont[
  Path = fonts/,
  Extension = .otf,
  UprightFont = *-Regular, 
  BoldFont = NotoSerifSC-Bold,
  SmallCapsFont = NotoSerifSC-SemiBold
]{NotoSansSC}

%Set sans-serif fonts for the main texts, and serif fonts (put them in positions of "SmallCapsFont"; used via \scshape ) for the important headers like projects and prizes

%can also et up the fonts by mimicking the following format:
%\setCJKmainfont[
%BoldFont=AdobeHeitiStd-Regular.otf,
%ItalicFont=AdobeKaitiStd-Regular.otf,
%SmallCapsFont=AdobeHeitiStd-Regular.otf
%]{AdobeSongStd-Light.otf}








%=====Name and contact information=====

%Name
\newcommand{\name}[2]{%
  \centerline{\Huge{\scshape #1}\quad{\scshape#2}}
}
%this creates a centered, large font name

%Contact info
\newcommand{\longcontact}[5]{%
    \noindent
    #1\hfill\\
    #2\hfill\\
    #3\hfill\\
    #4\hfill \\
    #5%
}




%=====Photo=====
\newcommand{\myphoto}[1]{
  \hfill \smash{\includegraphics[width=0.15\paperwidth]{images/me.jpg}}
}
%I failed to set ideal photo position in the definition above







%=====Section and subsection headers=====
\RequirePackage{titlesec}%we use it to customise our header styles in the class file;
% this command makes sure that each package is only loaded once, even if called multiple times from different style and class files.

\RequirePackage{amsmath} %or can instead use \RequirePackage{amssymb}, to allow $\diamond$

\titleformat{\section}         % Customise the \section command 
 {\Large\raggedright} % Make the \section headers large (\Large), % small capitals (\scshape) and left aligned (\raggedright) %I do not know how to make header Uppercase here; so I create a new command for section header below, but failed...
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                % Inserts a horizontal line after the heading %or try /hrule for a horizontal line
 

\titlespacing{\section}{0pt}{0pt plus 0pt minus 0pt}{8pt plus 0pt minus 0pt}% \titlespacing{\command}{left spacing}{before spacing}{after spacing}[right]
 % 12pt plus 4pt minus 2pt means wanting it to be 12pt but allowing at most +4pt or -2pt
 %this follows the guide: https://tex.stackexchange.com/questions/53338/reducing-spacing-after-headings
 
  
\titleformat{\subsection}
  {\raggedright\bf}
  {}{0.4em}%{$\diamond$}{0.4em}
  {}
  
\titlespacing{\subsection}{0pt}{10pt}{2pt}
  
  
  
%Define commands to include dates in section headers:
%two new commands \datedsection and \datedsubsection 
%each of them takes two arguments: the section name as before (#1) and a date (#2) which will be typeset on the right-hand side of the page
%\hfill command tells LaTeX to fill as much space as possible and so pushes the second argument (#2) to the right of the page
\newcommand{\usection}[1]{%
  \MakeUppercase{\bf \Large\scshape\raggedright #1} % Section title
  \titlerule
}
%I failed to make an ideal format here...

%Define two dated subsections, letting date be in the same line as much as possible except for long headers 

\newcommand{\datedsubsection}[2]{%
\vspace{-1.5em}
  \noindent \subsection[#1]{{\large #1} 
  \hfill {\it #2}}%Trick: use a pair of { } to encircle #1's part and #2's part together, so that adding \\ after this command in .tex file will not output any error, i.e. creating a "line" for \\ to end
}

\newcommand{\lsubsection}[2]{%long dated subsection
\vspace{-1.5em}
 \noindent\subsection[#1]{{\large #1} \\
  \hfill {\it #2}}
}

