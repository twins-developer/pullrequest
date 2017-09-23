class CreateSocialAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :social_accounts do |t|

      t.timestamps
    end
  end
end
