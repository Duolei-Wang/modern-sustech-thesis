// 离线编译运行
#import "../lib.typ": sustech-thesis
// 上线之后采用此段注释
// #import "@preview/modern-sustech-thesis:0.1.1": sustech-thesis
// 离线测试使用
// #import "@local/modern-sustech-thesis:0.1.1": sustech-thesis

// template-curryst
#import "@preview/curryst:0.3.0": rule, proof-tree
#import "@preview/ctheorems:1.1.2": *
#set text(
  font: "sims"
)

#show: thmrules.with(
  qed-symbol: $square$
)

// template-theorem
#let indent = h(2em)

#let define = thmbox(
  "def",
  "定义"
)

#let theorem = thmbox(
  "def",
  "定理",
)

#let prop = thmbox(
  "def",
  "性质",
)

#let notation = thmbox(
  "def",
  "符号",
)

#let example = thmbox(
  "def",
  "例子",
)

#let remark = thmbox(
  "def",
  "评注",
)

#let proof = thmproof(
  "proof",
  text[证明],
)

#set math.cases(
  gap: 1em,
)

// template-sustech-thesis
#let indent = h(2em)
#show: sustech-thesis.with(
  isCN: false,
  information: (
    title: (
      [Title line 1],
      [Title line 2],
      [],
    ),
    subtitle: [Substitle],
    abstract-body: (
        [#lorem(40)],
        [#lorem(40)]
    ),

    keywords: (
      [Keyword 1],
      [Keyword 2],
      [Keyword 3],
      [Keyword 4],
    ),
    author: [MuTsing QAQ],
    department: [Math],
    major: [Mathematics and Applied Mathematics],
    advisor: [Academic#h(1em)Advisor],
  ),
  
  information-EN: (
    title: (
      [#lorem(10)],
      [#lorem(10)],
    ),
    subtitle: [#lorem(4)],
    abstract-body: (
        [#lorem(40)],
        [#lorem(40)]
    ),

    keywords: (
      [#lorem(10)],
      [#lorem(10)],
    ),
    author: [慕青],
    department: [Math],
    major: [Math],
    advisor: [Advisor],
  ),
  toc-title: [目录],
)

= h1

== h1.1

= h2

== h2.1

#lorem(299)@wang2010guide

#pagebreak()

#bibliography(
  "refer.bib",
  
)