%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 中英文简历模板极简风格设计(a resume Class File in two language with minimalist design)
% 作者(auther)：杨舜禹(Shunyu Yang)
% 邮箱(email) ：shunyu.1994@gmail.com
% 可选照片/中英文(Language/photo available for selection)
% 初次设计(first Updated)：2018.11.1
% 更新时间(Updated)：2018.11.8
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%===============================================================================
% 指定文类(DOCUMENT SPECIFY)
%===============================================================================
\NeedsTeXFormat{LaTeX2e}  % document version
\ProvidesClass{yResume} % provides class name
\LoadClass[a4paper,UTF8]{article}  % base class

% create switches and set default
\newif\ifenglish
\newif\ifphoto
\englishfalse{}
\photofalse{}

%===============================================================================
% 引入包(PACKAGES IMPORT)
%===============================================================================
\RequirePackage{xeCJK} % chinese font
	\setCJKmainfont{SimSun}
	\setCJKsansfont{Microsoft YaHei}
\RequirePackage{fontspec} % english font
	\setmainfont{Times New Roman}
	\setsansfont{Calibri}
\RequirePackage{geometry} % provides a exible and easy interface to page dimensions
	\geometry{left=2.0cm, top=1.5cm, right=2.0cm, bottom=2.0cm}
\RequirePackage{graphicx} % photo 
\RequirePackage{fontawesome} % font icon 
\RequirePackage{fancyhdr} % footer/header change
	\pagestyle{fancy}
	\renewcommand{\headrulewidth}{0pt}
% \RequirePackage{tabularx} % tabel
\RequirePackage{setspace} % change line width
\RequirePackage{xcolor} % change color

%===============================================================================
% 页面设置(PAGE ENVIRONMENT)
%===============================================================================
\setlength{\parindent}{0pt} % no indent
\newenvironment{resume}{
	\large
	\yheaderfooter
}{}
\newcommand{\lang}[2]{
  \ifenglish#1
  \else #2
  \fi
}

%===============================================================================
% PAGE DEFINE AND SETTING
%===============================================================================
\newcommand*{\name}[1]{\def\@name{#1}} % user name define
\newcommand*{\yheaderfooter}{	% header and footer define
	\fancyhead{}
	\fancyfoot[L]{
		% \textsf{\today}
	}	
	\fancyfoot[C]{
		\textsf{\@name~~~·~~~{\ifenglish Resume \else 简历 \fi}}
	}	
	\fancyfoot[R]{
		% \textsf{\thepage}
	}	
}
% my name title
\newcommand*{\myname}{
	\begin{center}
		{\huge \sf \@name \par}
	\end{center}
}
\newcommand{\yparagraph}[1]{
	\begin{spacing}{1.24}
		{\color{darkgray} #1 \par}
	\end{spacing}
}
% add section line
\newcommand{\ytitle}[1]{
	\vspace{2mm}
	{\LARGE \sf #1} \hrulefill
	\vspace{1mm} \par
	% \rule[1em]{\textwidth}{0.4pt}
}
\newcommand{\ysubtitle}[1]{
	\vspace{1mm}
	{\Large \sf #1}
	\vspace{1mm} \par
}
% add a pip line
\newcommand*{\pip}{\sf \textbar}

%===============================================================================
% 个人信息详情(PERSONAL INFORMATION)
%===============================================================================
% contents
\newcommand*{\address}[1]{
	\makebox[10pt][r]{\faicon{map-marker}}~~#1}
\newcommand*{\wechat}[1]{
	\makebox[10pt][r]{\faicon{wechat}}~~#1}
\newcommand*{\twitter}[1]{
	\makebox[10pt][r]{\faicon{twitter-square}}~~#1}
\newcommand*{\phone}[1]{
	\makebox[10pt][r]{\faicon{mobile}}~~#1}
\newcommand*{\email}[1]{
 	\makebox[10pt][r]{\faicon{envelope}}~~#1}
\newcommand*{\homepage}[1]{
 	\makebox[10pt][r]{\faicon{home}}~~#1}
\newcommand*{\github}[1]{
 	\makebox[10pt][r]{\faicon{github-square}}~~#1}
\newcommand*{\linkedin}[1]{
 	\makebox[10pt][r]{\faicon{linkedin-square}}~~#1}
\newcommand*{\weibo}[1]{
 	\makebox[10pt][r]{\faicon{weibo}}~~#1}
\newcommand*{\qq}[1]{
	\makebox[10pt][r]{\faicon{qq}}~~#1}
\newcommand*{\person}[1]{
 	\makebox[10pt][r]{\faicon{user}}~~#1}
\newcommand*{\facebook}[1]{
 	\makebox[10pt][r]{\faicon{facebook-square}}~~#1}
\newcommand*{\googleplus}[1]{
 	\makebox[10pt][r]{\faicon{google-plus-square}}~~#1}

% layout
\newcommand{\twocontact}[2]{
	\begin{center}
		\begin{tabular}{l c l}
			#1 &\pip& #2 \\
		\end{tabular}
	\end{center}
}
\newcommand{\threecontact}[3]{
	\begin{center}
		\begin{tabular}{l c l c l}
			#1 &\pip& #2 &\pip& #3 \\
		\end{tabular}
	\end{center}
}
\newcommand{\fourcontact}[4]{
	\begin{center}
		\begin{tabular}{l c l}
			#1 &\pip& #2 \\
			#3 &\pip& #4 \\
		\end{tabular}
	\end{center}
}
\newcommand{\sixcontact}[6]{
	\begin{center}
		\begin{tabular}{l c l c l}
			#1 &\pip& #2 &\pip& #3 \\
			#4 &\pip& #5 &\pip& #6 \\
		\end{tabular}
	\end{center}
}
\newcommand{\sixxcontact}[6]{
	\begin{center}
		\begin{tabular}{l c l}
			#1 &\pip& #2 \\
			#3 &\pip& #4 \\
			#5 &\pip& #6 \\
		\end{tabular}
	\end{center}
}
\newcommand{\eightcontact}[8]{
	\begin{center}
		\begin{tabular}{l c l}
			#1 &\pip& #2 \\
			#3 &\pip& #4 \\
			#5 &\pip& #6 \\
			#7 &\pip& #8 \\
		\end{tabular}
	\end{center}
}
\newcommand{\ninecontact}[9]{
	\begin{center}
		\begin{tabular}{l c l c l}
			#1 &\pip& #2 &\pip& #3 \\
			#4 &\pip& #5 &\pip& #6 \\
			#7 &\pip& #8 &\pip& #9 \\
		\end{tabular}
	\end{center}
}
%===============================================================================
% 具体内容
% SPECIFIC CONTENTS
%===============================================================================
\newcommand*{\ytimeline}[4]{
	\vspace{2mm}
	\begin{minipage}{0.5\textwidth}
		{\sf #1}
	\end{minipage}
	\begin{minipage}{0.49\textwidth}
		\begin{flushright}
			{\it #3}
		\end{flushright}		
	\end{minipage}
	\vspace{1mm} \par
	\begin{minipage}{0.5\textwidth}
		{\color{darkgray} #2}
	\end{minipage}
	\begin{minipage}{0.49\textwidth}
		\begin{flushright}
			{\it #4}
		\end{flushright}
	\end{minipage}
	\par
}
\newcommand{\ylist}[1]{
	\vspace{-3mm}
	\begin{list}{{-}}{\itemsep=0pt \parsep=2pt}
		{\color{darkgray} \fontsize{10pt}{1em}#1}
	\end{list}
	\vspace{-3mm}
}
\newcommand{\yevent}[3]{
	\vspace{2mm}
	\begin{minipage}{0.8\textwidth}
		{\sf #1}~~{\color{darkgray} #2}
	\end{minipage}
	\begin{minipage}{0.19\textwidth}
		\begin{flushright}
			{\it #3}
		\end{flushright}		
	\end{minipage}
	\par
}