class CreateEngineers < ActiveRecord::Migration[5.1]
  def change
    create_table :engineers do |t|

      t.timestamps
    end
  end
end
