require 'octokit'

client = Octokit::Client.new login: 'sagaekeiga', password: 's19930528'
client.user.name

# リポジトリ一覧の取得
# puts client.user.rels[:repos].href

#
# puts client.user.rels[:repos].get.data

# github user name
# @name = 'sagaekeiga'
#
# options = {
#   auto_paginate: true,
#   access_token: nil, # 必要に応じて入力する
# }

# Clientオブジェクトを生成
# @client = Octokit::Client.new(options)

# Repositories情報を取得
# repos = @client.repositories(@name)

# リポジトリ情報の出力
# repos.each do |repo|
#   # puts "name: #{repo.name}, language: #{repo.language}"
#   # puts "url: #{repo.url}"
#   puts "repository info = #{repo.attrs}"
#   puts ""
# end

client = Octokit::Client.new(:access_token => "<your 40 char token>")

user = client.user
user.login
