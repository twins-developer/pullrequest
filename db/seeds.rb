tags = Tag.create([
  {
    name: 'Ruby on Rails',
    note: 'オープンソースのWebアプリケーションフレームワークである。
    RoRまたは単にRailsと呼ばれる。 その名にも示されているようにRubyで書かれている。
    またModel View Controller（MVC）アーキテクチャに基づいて構築されている。',
    image: File.open("#{Rails.root}/db/seeds/ror.png"),
    category: :language
  },
  {
    name: 'GitHub',
    note: 'GitHubはソフトウェア開発プロジェクトのための共有ウェブサービスであり、
    Gitバージョン管理システムを使用する。
    Ruby on RailsおよびErlangで記述されており、GitHub社によって保守されている。',
    image: File.open("#{Rails.root}/db/seeds/github.png"),
    category: :tool
  },
  {
    name: 'jQuery',
    note: 'ウェブブラウザ用のJavaScriptコードをより容易に記述できるようにするために設計されたJavaScriptライブラリである。',
    image: File.open("#{Rails.root}/db/seeds/jquery.jpg"),
    category: :language
  }
])
