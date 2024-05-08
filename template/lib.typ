// Construct the sections as aranged.
#import "./configs/cover.typ": cover
#import "./configs/commitment.typ": commitment
#import "./configs/abstract.typ": abstract
#import "./configs/outline.typ": toc
#import "configs/mathstyle.typ": mathstyle

#let std-bibliography = bibliography

#let sustech-thesis(
  isCN: true,
  information: (
    title: (
      [第一行],
      [第二行],
    ),
    subtitle: [subtitle],

    abstract-body: (
      [#lorem(40)],
      [#lorem(40)],
    ),

    keywords: (
      [Keyword1],
      [关键词2],
      [啦啦啦],
      [你好]
    ),

    author: [慕青QAQ],
    department: [数学系],
    major: [数学],
    advisor: [木木],
  ),
  information-EN: (
    title: (
      [第一行],
      [第二行],
    ),
    subtitle: [subtitle],

    abstract-body: (
      [#lorem(40)],
      [#lorem(40)],
    ),

    keywords: (
      [Keyword1],
      [关键词2],
      [啦啦啦],
      [你好]
    ),

    author: [慕青QAQ],
    department: [数学系],
    major: [数学],
    advisor: [木木],
  ),
  toc-title: [目录],
  body,
) = {
  // 设置中文字体 Setting Style of Text which is Chinese Character (or CJK?)
  // 中英文封面页 Cover
  cover(
    isCN: isCN,
    title: information.title,
    subtitle: information.subtitle,
    author: information.author,
    department: information.department,
    major: information.major,
    advisor: information.advisor,
  )
  pagebreak()

  // 设定目录编号格式
  set heading(numbering: "1.1.1.")
  // 设定非正文部分页码
  set page(numbering: "I")
  counter(page).update(0)
  if(isCN){
    commitment(
      isCN: true,
    )

    commitment(
      isCN: false,
    )
  }



  pagebreak()
  if(isCN){
    // 插入摘要页
    abstract(
      isCN: true,
      information: information,
      body: information.abstract-body,
    )
    // Abstract-EN
    abstract(
      isCN: false,
      information: information-EN,
      body: information-EN.abstract-body,
    )
  }else{
    // Abstract-EN
    abstract(
      isCN: false,
      information: information-EN,
      body: information-EN.abstract-body,
    )
  }

  // 设定正文部分页码
  // 插入目录页
  toc(
    isCN: isCN,
    toc-title: toc-title,
  )

  set page(numbering: "1")
  counter(page).update(1)

  pagebreak()
  // body style
  import "./configs/font.typ" as fonts
  // headings
  show heading.where(level: 1): it =>{
    set text(
      font: fonts.HeiTi,
      size: fonts.No3,
      weight: "regular",
    )
    align(center)[
      // #it
      #strong(it)
    ]
    text()[#v(1em)]
  }

  show heading.where(level: 2): it =>{
    set text(
      font: fonts.HeiTi,
      size: fonts.No4,
      weight: "regular"
      )
    text()[#v(0.5em)]
    it
    text()[#v(1em)]
  }

  show heading.where(level: 3): it =>{
    set text(
      font: fonts.HeiTi,
      size: fonts.No4-Small,
      weight: "regular"
      )
    it
    text()[#v(1em)] 
  }

  // paragraph
  set block(spacing: 1.5em)
  set par(
    justify: true,
    first-line-indent: 2em,
    leading: 1.5em)

  set text(
      font: fonts.SongTi,
      size: fonts.No4-Small,
  )

  show std-bibliography: it => {
    show heading: title => {
      set text(
        font: fonts.HeiTi,
        size: fonts.No3,
      )
      title
    }

    set text(
      size: fonts.No5,
      font: fonts.SongTi,
    )
    it
  }

  body
}