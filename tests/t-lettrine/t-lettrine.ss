<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang xml:lang>
<head>
  <meta charset="utf-8" />
  <meta name="generator" content="pandoc" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
  <title>t-lettrine</title>
  <style type="text/css">
      code{white-space: pre-wrap;}
      span.smallcaps{font-variant: small-caps;}
      span.underline{text-decoration: underline;}
      div.column{display: inline-block; vertical-align: top; width: 50%;}
  </style>
  <style type="text/css"> 
p.noindent { text-indent: 0em }
td p.noindent { text-indent: 0em; margin-top:0em; }
p.nopar { text-indent: 0em; }
p.indent{ text-indent: 1.5em }
@media print {div.crosslinks {visibility:hidden;}}
a img { border-top: 0; border-left: 0; border-right: 0; }
center { margin-top:1em; margin-bottom:1em; }
td center { margin-top:0em; margin-bottom:0em; }
.Canvas { position:relative; }
img.math{vertical-align:middle;}
li p.indent { text-indent: 0em }
li p:first-child{ margin-top:0em; }
li p:last-child, li div:last-child { margin-bottom:0.5em; }
li p~ul:last-child, li p~ol:last-child{ margin-bottom:0.5em; }
.enumerate1 {list-style-type:decimal;}
.enumerate2 {list-style-type:lower-alpha;}
.enumerate3 {list-style-type:lower-roman;}
.enumerate4 {list-style-type:upper-alpha;}
div.newtheorem { margin-bottom: 2em; margin-top: 2em;}
.obeylines-h,.obeylines-v {white-space: nowrap; }
div.obeylines-v p { margin-top:0; margin-bottom:0; }
.overline{ text-decoration:overline; }
.overline img{ border-top: 1px solid black; }
td.displaylines {text-align:center; white-space:nowrap;}
.centerline {text-align:center;}
.rightline {text-align:right;}
div.verbatim {font-family: monospace; white-space: nowrap; text-align:left; clear:both; }
.fbox {padding-left:3.0pt; padding-right:3.0pt; text-indent:0pt; border:solid black 0.4pt; }
div.fbox {display:table}
div.center div.fbox {text-align:center; clear:both; padding-left:3.0pt; padding-right:3.0pt; text-indent:0pt; border:solid black 0.4pt; }
div.minipage{width:100%;}
div.center, div.center div.center {text-align: center; margin-left:1em; margin-right:1em;}
div.center div {text-align: left;}
div.flushright, div.flushright div.flushright {text-align: right;}
div.flushright div {text-align: left;}
div.flushleft {text-align: left;}
.underline{ text-decoration:underline; }
.underline img{ border-bottom: 1px solid black; margin-bottom:1pt; }
.framebox-c, .framebox-l, .framebox-r { padding-left:3.0pt; padding-right:3.0pt; text-indent:0pt; border:solid black 0.4pt; }
.framebox-c {text-align:center;}
.framebox-l {text-align:left;}
.framebox-r {text-align:right;}
span.thank-mark{ vertical-align: super }
span.footnote-mark sup.textsuperscript, span.footnote-mark a sup.textsuperscript{ font-size:80%; }
div.tabular, div.center div.tabular {text-align: center; margin-top:0.5em; margin-bottom:0.5em; }
table.tabular td p{margin-top:0em;}
table.tabular {margin-left: auto; margin-right: auto;}
td p:first-child{ margin-top:0em; }
td p:last-child{ margin-bottom:0em; }
div.td00{ margin-left:0pt; margin-right:0pt; }
div.td01{ margin-left:0pt; margin-right:5pt; }
div.td10{ margin-left:5pt; margin-right:0pt; }
div.td11{ margin-left:5pt; margin-right:5pt; }
table[rules] {border-left:solid black 0.4pt; border-right:solid black 0.4pt; }
td.td00{ padding-left:0pt; padding-right:0pt; }
td.td01{ padding-left:0pt; padding-right:5pt; }
td.td10{ padding-left:5pt; padding-right:0pt; }
td.td11{ padding-left:5pt; padding-right:5pt; }
table[rules] {border-left:solid black 0.4pt; border-right:solid black 0.4pt; }
.hline hr, .cline hr{ height : 1px; margin:0px; }
.tabbing-right {text-align:right;}
span.TEX {letter-spacing: -0.125em; }
span.TEX span.E{ position:relative;top:0.5ex;left:-0.0417em;}
a span.TEX span.E {text-decoration: none; }
span.LATEX span.A{ position:relative; top:-0.5ex; left:-0.4em; font-size:85%;}
span.LATEX span.TEX{ position:relative; left: -0.4em; }
div.float, div.figure {margin-left: auto; margin-right: auto;}
div.float img {text-align:center;}
div.figure img {text-align:center;}
.marginpar {width:20%; float:right; text-align:left; margin-left:auto; margin-top:0.5em; font-size:85%; text-decoration:underline;}
.marginpar p{margin-top:0.4em; margin-bottom:0.4em;}
table.equation {width:100%;}
.equation td{text-align:center; }
td.equation { margin-top:1em; margin-bottom:1em; } td.equation-label { width:5%; text-align:center; }
td.eqnarray4 { width:5%; white-space: normal; }
td.eqnarray2 { width:5%; }
table.eqnarray-star, table.eqnarray {width:100%;}
div.eqnarray{text-align:center;}
div.array {text-align:center;}
div.pmatrix {text-align:center;}
table.pmatrix {width:100%;}
span.pmatrix img{vertical-align:middle;}
div.pmatrix {text-align:center;}
table.pmatrix {width:100%;}
span.bar-css {text-decoration:overline;}
img.cdots{vertical-align:middle;}
.partToc a, .partToc, .likepartToc a, .likepartToc {line-height: 200%; font-weight:bold; font-size:110%;}
.index-item, .index-subitem, .index-subsubitem {display:block}
div.caption {text-indent:-2em; margin-left:3em; margin-right:1em; text-align:left;}
div.caption span.id{font-weight: bold; white-space: nowrap; }
h1.partHead{text-align: center}
p.bibitem { text-indent: -2em; margin-left: 2em; margin-top:0.6em; margin-bottom:0.6em; }
p.bibitem-p { text-indent: 0em; margin-left: 2em; margin-top:0.6em; margin-bottom:0.6em; }
.paragraphHead, .likeparagraphHead { margin-top:2em; font-weight: bold;}
.subparagraphHead, .likesubparagraphHead { font-weight: bold;}
.quote {margin-bottom:0.25em; margin-top:0.25em; margin-left:1em; margin-right:1em; text-align:justify;}
.verse{white-space:nowrap; margin-left:2em}
div.maketitle {text-align:center;}
h2.titleHead{text-align:center;}
div.maketitle{ margin-bottom: 2em; }
div.author, div.date {text-align:center;}
div.thanks{text-align:left; margin-left:10%; font-size:85%; font-style:italic; }
div.author{white-space: nowrap;}
.quotation {margin-bottom:0.25em; margin-top:0.25em; margin-left:1em; }
.abstract p {margin-left:5%; margin-right:5%;}
div.abstract {width:100%;}
.lettrine{float: left; line-height: 0.7; margin-left: -0.1em; margin-bottom: -.5em; margin-right: 0.2em; }
.lettrine-ante{vertical-align: top;}
.lettrine-letter{font-style: normal; font-size: 4em; color: gray;}
.lettrine-A{margin-right: 0.3em;}
.lettrine-A + .lettrine-line{margin-left: -0.4em;}
.lettrine-J{line-height: 1; margin-right: 0;}
.lettrine-H, .lettrine-I, .lettrine-N, .lettrine-U{margin-right: 0;}
.lettrine-V{margin-right: -0.3em;}
.lettrine-V + .lettrine-line{margin-left: 0.3em;}
.lettrine-Q{padding-bottom: 1em;margin-top: -0.6em;}
.lettrine-line{font-variant: small-caps;}
p.indent{text-indent: 0em;}

</style>
  <!--[if lt IE 9]>
    <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv-printshiv.min.js"></script>
  <![endif]-->
</head>
<body>
<p><span class="lettrine"><span class="lettrine-letter"><span class="lettrine-H">H</span> </span></span><span class="lettrine-line">ello.</span></p>
</body>
</html>