#import "../src/template.typ": icon, item_3c, config, theme-color, header, edu, skill, project, experience
#show: config.with(theme-color: theme-color)

#import "../data/header.typ":data as hd
#header(center: true, hd)

#import "../data/edu.typ":data as ed
#if ed.len() != 0 {
  [ == #icon("graduation-cap") 教育 ]
}

#for item in ed {
  edu(item)
}

#import "../data/skill.typ":data as sd
#if sd.len() != 0 {
  [ == #icon("wrench") 技能 ]
}

#skill(sd)

#import "../data/award.typ":data as ad
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

#import "../data/experience.typ":data as ed
#if ed.len() != 0 {
  [ == #icon("work") 经历 ]
}

#for item in ed {
  experience(item)
}

#import "../data/project.typ": data as pd
#if pd.len() != 0 {
  [ == #icon("code") 项目 ]
}

#for item in pd {
  project(item)
}

