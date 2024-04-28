#import "@preview/cuti:0.2.1": show-cn-fakebold
#show: show-cn-fakebold
// Font Size
// 可以参考 https://zhuanlan.zhihu.com/p/504550803 表格找到pt和号数的对应关系
#let Special-Large = 63pt
#let Special = 54pt
// 初号
#let Initial = 42pt
#let Initial-Small = 36pt
// 一号
#let No1 = 26pt
#let No1-Small = 24pt
#let No2 = 22pt
#let No2-Small = 18pt
#let No3 = 16pt
#let No3-Small = 15pt
#let No4 = 14pt
#let No4-Small = 12pt
#let No5 = 10.5pt
#let No5-Small = 9pt
#let No6 = 7.5pt
#let No6-Small = 6.5pt
#let No7 = 5.5pt
#let No8 = 5pt

// Headings and paragraphs

// Framework of heading, text

// 黑体 HeiTi
#let FZHei = "FZHei-B01S"
#let SourceHei = "Source Han Sans SC"

// 宋体 SongTi
#let FZSong = "FZShuSong-Z01S"
#let SourceSong = "Source Han Serif"

// 仿宋 FangSong
#let GBFangSong = "FangSong_GB2312"
#let FZFangSong = "FZFangSong-Z02S"

// 楷体 Kai
#let GBKai = "KaiTi_GB2312"
#let FZKai = "FZKai-Z03S"

// TODO: 判断typst变量“HasMicrosoftWordFont” 
// 是否已经存在，如果不存在，就设为默认值，否则按照外面的值
#let HasMicrosoftWordFont = true
// 全局字体选项
#let HeiTi = (
  "Times New Roman", 
  if HasMicrosoftWordFont {"SimHei"} else {FZHei}
  )

#let SongTi = (
  "Times New Roman",
  if HasMicrosoftWordFont {"SimSun"} else {SourceSong}
)

#let FangSong = if HasMicrosoftWordFont {"FangSong"} else {FZFangSong}

#let KaiTi = if HasMicrosoftWordFont {"STKaiti"} else {FZKai}