# -------------------------------------------------------------------------------
# FrameWork
# -------------------------------------------------------------------------------
(1..6).each do |n|
  if n < 6
    FrameWork.create!([
      { name: "Play FrameWork 【#{n}年】", code: 1 },
      { name: "Struts 【#{n}年】", code: 2 },
      { name: "Struts2 【#{n}年】", code: 3 },
      { name: "Slim3 【#{n}年】", code: 4 },
      { name: "Ruby on Rails 3.x 【#{n}年】", code: 5 },
      { name: "Ruby on Rails 4.x 【#{n}年】", code: 6 },
      { name: "Sinatra 【#{n}年】", code: 7 },
      { name: "Backbone.js 【#{n}年】", code: 8 },
      { name: "Ember.js 【#{n}年】", code: 9 },
      { name: "Angular.js 【#{n}年】", code: 10 },
      { name: "jQuery 【#{n}年】", code: 11 },
      { name: "React.js 【#{n}年】", code: 12 }
    ])
  else
    FrameWork.create!([
      { name: "Play FrameWork 【#{n}年〜】", code: 1 },
      { name: "Struts 【#{n}年〜】", code: 2 },
      { name: "Struts2 【#{n}年〜】", code: 3 },
      { name: "Slim3 【#{n}年〜】", code: 4 },
      { name: "Ruby on Rails 3.x 【#{n}年〜】", code: 5 },
      { name: "Ruby on Rails 4.x 【#{n}年〜】", code: 6 },
      { name: "Sinatra 【#{n}年〜】", code: 7 },
      { name: "Backbone.js 【#{n}年〜】", code: 8 },
      { name: "Ember.js 【#{n}年〜】", code: 9 },
      { name: "Angular.js 【#{n}年〜】", code: 10 },
      { name: "jQuery 【#{n}年〜】", code: 11 },
      { name: "React.js 【#{n}年〜】", code: 12 }
    ])
  end
end

# -------------------------------------------------------------------------------
# Skill
# -------------------------------------------------------------------------------
(1..6).each do |n|
  if n < 6
    Skill.create!([
      { name: "PHP 【#{n}年】", code: 1 },
      { name: "Ruby 【#{n}年】", code: 2 },
      { name: "JAVA 【#{n}年】", code: 3 },
      { name: "JAVA(Android) 【#{n}年】", code: 4 },
      { name: "Kotlin(Android) 【#{n}年】", code: 5 },
      { name: "C# 【#{n}年】", code: 6 },
      { name: "C/C++ 【#{n}年】", code: 7 },
      { name: "Node.js 【#{n}年】", code: 8 },
      { name: "Objective-C 【#{n}年】", code: 9 },
      { name: "Swift 【#{n}年】", code: 10 },
      { name: "Go言語 【#{n}年】", code: 11 },
      { name: "Perl 【#{n}年】", code: 12 },
      { name: "JavaScript 【#{n}年】", code: 13 },
      { name: "CSS 【#{n}年】", code: 14 },
      { name: "HTML 【#{n}年】", code: 15 },
      { name: "CMS 【#{n}年】", code: 16 },
      { name: "MySQL 【#{n}年】", code: 17 },
      { name: "Oracle 【#{n}年】", code: 18 },
      { name: "MongoDB 【#{n}年】", code: 19 },
      { name: "AWS 【#{n}年】", code: 20 },
      { name: "その他 【#{n}年】", code: 21 }
    ])
  else
    Skill.create!([
      { name: "PHP 【#{n}年〜】", code: 1 },
      { name: "Ruby 【#{n}年〜】", code: 2 },
      { name: "JAVA 【#{n}年〜】", code: 3 },
      { name: "JAVA(Android) 【#{n}年〜】", code: 4 },
      { name: "Kotlin(Android) 【#{n}年〜】", code: 5 },
      { name: "C# 【#{n}年〜】", code: 6 },
      { name: "C/C++ 【#{n}年〜】", code: 7 },
      { name: "Node.js 【#{n}年〜】", code: 8 },
      { name: "Objective-C 【#{n}年〜】", code: 9 },
      { name: "Swift 【#{n}年〜】", code: 10 },
      { name: "Go言語 【#{n}年〜】", code: 11 },
      { name: "Perl 【#{n}年〜】", code: 12 },
      { name: "JavaScript 【#{n}年〜】", code: 13 },
      { name: "CSS 【#{n}年〜】", code: 14 },
      { name: "HTML 【#{n}年〜】", code: 15 },
      { name: "CMS 【#{n}年〜】", code: 16 },
      { name: "MySQL 【#{n}年〜】", code: 17 },
      { name: "Oracle 【#{n}年〜】", code: 18 },
      { name: "MongoDB 【#{n}年〜】", code: 19 },
      { name: "AWS 【#{n}年〜】", code: 20 },
      { name: "その他 【#{n}年〜】", code: 21 }
    ])
  end
end

# -------------------------------------------------------------------------------
# Tool
# -------------------------------------------------------------------------------
(1..6).each do |n|
  if n < 6
    Tool.create!([
      { name: "Git 【#{n}年】", code: 1 },
      { name: "GitHub 【#{n}年】", code: 2 },
      { name: "BitBucket 【#{n}年】", code: 3 },
      { name: "Subversion 【#{n}年】", code: 4 },
      { name: "Mercurial 【#{n}年】", code: 5 },
      { name: "JIRA 【#{n}年】", code: 6 },
      { name: "Pivotal Tracker 【#{n}年】", code: 7 },
      { name: "Backlog 【#{n}年】", code: 8 },
      { name: "Redmine 【#{n}年】", code: 9 },
      { name: "Chatwork 【#{n}年】", code: 10 },
      { name: "Slack 【#{n}年】", code: 11 },
      { name: "HipChat 【#{n}年】", code: 12 },
      { name: "Qiita Team 【#{n}年】", code: 13 },
      { name: "Office365 【#{n}年】", code: 14 },
      { name: "Google Apps 【#{n}年】", code: 15 },
    ])
  else
    Tool.create!([
      { name: "Git 【#{n}年〜】", code: 1 },
      { name: "GitHub 【#{n}年〜】", code: 2 },
      { name: "BitBucket 【#{n}年〜】", code: 3 },
      { name: "Subversion 【#{n}年〜】", code: 4 },
      { name: "Mercurial 【#{n}年〜】", code: 5 },
      { name: "JIRA 【#{n}年〜】", code: 6 },
      { name: "Pivotal Tracker 【#{n}年〜】", code: 7 },
      { name: "Backlog 【#{n}年〜】", code: 8 },
      { name: "Redmine 【#{n}年〜】", code: 9 },
      { name: "Chatwork 【#{n}年〜】", code: 10 },
      { name: "Slack 【#{n}年〜】", code: 11 },
      { name: "HipChat 【#{n}年〜】", code: 12 },
      { name: "Qiita Team 【#{n}年〜】", code: 13 },
      { name: "Office365 【#{n}年〜】", code: 14 },
      { name: "Google Apps 【#{n}年〜】", code: 15 }
    ])
  end
end
