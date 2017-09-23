class CreateEngineersSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :engineers_settings do |t|

      t.timestamps
    end
  end
end
