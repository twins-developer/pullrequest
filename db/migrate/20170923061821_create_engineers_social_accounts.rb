class CreateEngineersSocialAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :engineers_social_accounts do |t|
      t.belongs_to :engineer, foreign_key: true
      t.string :name
      
      t.timestamps
    end
  end
end
