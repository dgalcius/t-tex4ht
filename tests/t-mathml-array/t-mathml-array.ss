<!DOCTYPE html> 
<html lang="en-US" xml:lang="en-US" > 
<head><title>Test for colortbl and array packages with mathml output</title> 
<meta  charset="iso-8859-1" /> 
<meta name="generator" content="TeX4ht (http://www.tug.org/tex4ht/)" /> 
<meta name="viewport" content="width=device-width,initial-scale=1" /> 
<link rel="stylesheet" type="text/css" href="t-mathml-array.css" /> 
<meta name="src" content="t-mathml-array.tex" /> 
</head><body 
>
   <div class="maketitle">
                                                                          

                                                                          
                                                                          

                                                                          

<h2 class="titleHead">Test for colortbl and array packages with
mathml output</h2>
 <div class="author" ><span 
class="cmr-12x-x-120">Michal Hoftich</span></div><br />
<div class="date" ><span 
class="cmr-12x-x-120">2017/05/19</span></div>
   </div>
<!--l. 25--><p class="indent" >   The original configuration for array package caused HTML code to be inserted
when <span class="obeylines-h"><span class="verb"><span 
class="cmtt-12">\hline</span></span></span> was used in math arrays
</p><!--l. 28--><p class="indent" >   Compile using
                                                                          

                                                                          
</p>
   <div class="verbatim" id="verbatim-1">
make4ht&#x00A0;array-test.tex&#x00A0;"html5,mathml,fn-in"
</div>
<!--l. 32--><p class="nopar" >
</p>
   <div class="par-math-display"><!--l. 35--><math 
 xmlns="http://www.w3.org/1998/Math/MathML"  
display="block" ><mrow 
>
 <mtable  align="axis" style="border-right:solid 1px black;border-left:solid 1px black;"  
equalrows="false" columnlines="solid" equalcolumns="false" class="array"> <mtr 
class="hline"><mtd><mo>  </mo></mtd> <mtd><mo>  </mo></mtd> </mtr><mtr><mtd 
class="array"  columnalign="left"> <mn>1</mn> </mtd><mtd 
class="array"  columnalign="center"> <mn>2</mn> </mtd></mtr>  <mtr><mtd 
class="array"  columnalign="left">  </mtd></mtr> <!--|l|c|--></mtable>
</mrow></math></div>
<!--l. 35--><p class="nopar" >
</p>
   <div class="par-math-display"><!--l. 38--><math 
 xmlns="http://www.w3.org/1998/Math/MathML"  
display="block" ><mrow 
>
 <mtable  align="axis" style="border-left:solid 1px black;"  
equalrows="false" columnlines="solid none" equalcolumns="false" class="array"> <mtr><mtd 
class="array"  columnalign="left"> <mi 
>l</mi><mi 
>e</mi><mi 
>f</mi><mi 
>t</mi><mn>1</mn> </mtd><mtd 
class="array"  columnalign="center"> <mi 
>c</mi><mi 
>e</mi><mi 
>n</mi><mi 
>t</mi><mi 
>e</mi><mi 
>r</mi><mn>1</mn> </mtd><mtd 
class="array"  columnalign="right"> <mi 
>r</mi><mi 
>i</mi><mi 
>g</mi><mi 
>h</mi><mi 
>t</mi><mn>1</mn> </mtd>
</mtr> <mtr 
class="hline"><mtd><mo>  </mo></mtd> <mtd><mo>  </mo></mtd> <mtd><mo>  </mo></mtd> </mtr> <mtr><mtd 
class="array"  columnalign="left"> <mi 
>d</mi>     </mtd><mtd 
class="array"  columnalign="center">     <mi 
>e</mi>     </mtd><mtd 
class="array"  columnalign="right">       <mi 
>f</mi> </mtd></mtr> <!--|l|cr--></mtable>
</mrow></math></div>
<!--l. 44--><p class="nopar" >
</p>
   <div class="tabular"> <table id="TBL-4" class="tabular" 
cellspacing="0" cellpadding="0" rules="groups" 
><colgroup id="TBL-4-1g"><col 
id="TBL-4-1" /></colgroup><colgroup id="TBL-4-2g"><col 
id="TBL-4-2" /></colgroup><tr  
 style="vertical-align:baseline;" id="TBL-4-1-"><td  style="text-align:left; white-space:nowrap;" id="TBL-4-1-1"  
class="td11"> l  </td><td  style="text-align:left; white-space:nowrap;" id="TBL-4-1-2"  
class="td11"> l  </td></tr><tr 
class="hline"><td><hr /></td><td><hr /></td></tr><tr  
 style="vertical-align:baseline;" id="TBL-4-2-"><td  style="text-align:left; white-space:nowrap;" id="TBL-4-2-1"  
class="td11"> l </td> <td  style="text-align:left; white-space:nowrap;" id="TBL-4-2-2"  
class="td11"> l</td>
</tr><tr  
 style="vertical-align:baseline;" id="TBL-4-3-"><td  style="text-align:left; white-space:nowrap;" id="TBL-4-3-1"  
class="td11">   </td> </tr></table>
</div>
                                                                          

                                                                          
<!--l. 52--><p class="noindent" ><!--tex4ht:inline--></p><div class="tabular"> <table id="TBL-5" class="tabular" 
cellspacing="0" cellpadding="0" rules="groups" 
><colgroup id="TBL-5-1g"><col 
id="TBL-5-1" /></colgroup><colgroup id="TBL-5-2g"><col 
id="TBL-5-2" /></colgroup><tr  
 style="vertical-align:baseline;" id="TBL-5-1-"><td  style="text-align:left; white-space:nowrap;" id="TBL-5-1-1"  
class="td11"> one   </td><td  style="text-align:center; white-space:nowrap;" id="TBL-5-1-2"  
class="td11"> two  </td>
</tr><tr  
 style="vertical-align:baseline;" id="TBL-5-2-"><td  style="text-align:left; white-space:nowrap;" id="TBL-5-2-1"  
class="td11"> three  </td><td  style="text-align:center; white-space:nowrap;" id="TBL-5-2-2"  
class="td11"> four  </td>
</tr><tr  
 style="vertical-align:baseline;" id="TBL-5-3-"><td  style="text-align:left; white-space:nowrap;" id="TBL-5-3-1"  
class="td11"> five    </td><td  style="text-align:center; white-space:nowrap;" id="TBL-5-3-2"  
class="td11"> six  </td></tr></table>
</div>
    
</body> 
</html>
                                                                          


