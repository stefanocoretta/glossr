---
title: "Example gloss"
output:
  pdf_document:
    number_sections: yes
    latex_engine: xelatex
    keep_tex: yes
    template: template.tex # TODO: will need to include it in the package?
    keep_md: yes
header-includes:
- \usepackage{expex}
- \lingset{everygla=,everyglpreamble=\it}
---



# This is a gloss



This is just a gloss to show what glossr can do.

```{=latex}
\ex \begingl
\glpreamble Gila aburun ferma hamišaluǧ güǧüna amuq'dač.//
\gla gila abur-u-n ferma hamišaluǧ güǧüna amuq'-da-č//
\glb now they-OBL-GEN farm forever behind stay-FUT-NEG//
\glft Now their farm will not stay behind forever.//
\endgl \xe
```
