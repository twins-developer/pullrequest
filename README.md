# デモ環境

[デモ環境](https://fathomless-sierra-97899.herokuapp.com/)

# 開発について

## 開発言語

### バックエンド

Ruby on Rails

![RubyonRails](http://rubyonrails.org/images/rails-logo.svg "Ruby")

[公式サイト](http://rubyonrails.org/)

### Javascript

Coffee Script

![CoffeeScript](http://cdn-ak.f.st-hatena.com/images/fotolife/l/lo25131/20140326/20140326182112.png, "CoffeeScript")

[公式サイト](http://coffeescript.org/)

### テンプレートエンジン

Haml

![Haml](http://haml.info/)
[公式サイト](http://haml.info/)

## インデント

### インデントは揃える


NG
```
  def index
  @applies = current_engineer.applies.page(params[:page])
    end
```

OK
```
  def index
    @applies = current_engineer.applies.page(params[:page])
  end
```

## 関数・アクション・メソッド

### アクションにはパスをコメントする

```
  # GET /engineers/applies
  # GET /engineers/applies.json
  def index
    @applies = current_engineer.applies.page(params[:page])
  end
```

### 関数には説明をコメントする

```
  #
  # 指定された日時に面談可能時間が存在するかを返す
  #
  # @param [Array] interview_hours 面談可能時間
  #
  # @param [Date] day 日にち
  #
  # @param [Integer] hour 時間
  #
  # @return [Boolean] 面談可能時間があればtrue、なければfalse
  #
  def filled_interview_hour?(interview_hours, day, hour)
    interview_hours.find do |interview_hour|
      interview_hour.interviewed_on == day &&
      interview_hour.hour == hour
    end.present?
  end
```
