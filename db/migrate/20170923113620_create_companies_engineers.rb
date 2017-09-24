class CreateCompaniesEngineers < ActiveRecord::Migration[5.1]
  def change
    create_table :companies_engineers do |t|
      t.belongs_to :company, foreign_key: true
      t.belongs_to :engineer, foreign_key: true
      t.date :joined_on

      t.timestamps
    end
  end
end
