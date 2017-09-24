class CreateCompaniesCareers < ActiveRecord::Migration[5.1]
  def change
    create_table :companies_careers do |t|
      t.belongs_to :company, foreign_key: true
      t.text :summary, limit: 100
      t.text :what_note, limit: 1000
      t.text :why_note, limit: 1000
      t.text :other_note, limit: 1000

      t.timestamps
    end
  end
end
