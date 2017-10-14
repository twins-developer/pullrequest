# デモ環境

[デモ環境](https://fathomless-sierra-97899.herokuapp.com/){target: '_blank'}

# 開発について

## インデント

## 関数

### アクションにはパスをコメントする

```
  # GET /engineers/applies
  # GET /engineers/applies.json
  def index
    @applies = current_engineer.applies.page(params[:page])
  end
```
