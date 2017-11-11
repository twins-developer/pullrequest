class CreateCompaniesBasicInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :companies_basic_infos do |t|
      t.belongs_to :company, foreign_key: true
      t.integer :status
      t.string :name
      t.string :image
      t.date :founded_on
      t.string :address
      t.string :tel
      t.string :capital
      t.string :ceo
      t.string :responsible_person

      t.timestamps
    end
  end
end
