#import "template.typ": icon, item_3c, config, theme-color, header, edu, skill, project
#show: config.with(theme-color: theme-color)

#import "header.typ":data as hd
#header(center: true, hd)

#import "edu.typ":data as ed
#if ed.len() != 0 {
  [ == #icon("graduation-cap") 教育 ]
}

#for item in ed {
  edu(item)
}

#import "skill.typ":data as sd
#if sd.len() != 0 {
  [ == #icon("wrench") 技能 ]
}

#for item in sd {
  skill(item)
}

#import "award.typ":data as ad
#if ad.len() != 0 {
  [ == #icon("award") 获奖情况 ]
} 

#for item in ad {
  item_3c(
    strong(item.contest),
    strong(item.honor),
    item.date.display()
  )
}

#import "project.typ": data as pd
#if pd.len() != 0 {
  [ == #icon("code") 项目 ]
}

#for item in pd {
  project(item)
}

#import "experience.typ":data as ed
#if ed.len() != 0 {
  [ == #icon("building-columns") 经历 ]
}

#for item in ed {
  item_3c(
    strong(item.name),
    item.des,
    item.date,
  )
}
