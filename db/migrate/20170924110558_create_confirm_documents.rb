class CreateConfirmDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :confirm_documents do |t|

      t.timestamps
    end
  end
end
