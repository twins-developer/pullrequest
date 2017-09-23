class CreateEngineerWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :engineer_works do |t|

      t.timestamps
    end
  end
end
