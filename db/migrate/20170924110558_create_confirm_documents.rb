class CreateConfirmDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :confirm_documents do |t|
      t.belongs_to :unconfirmed_address, foreign_key: true
      t.string :image
      t.timestamps
    end
  end
end
