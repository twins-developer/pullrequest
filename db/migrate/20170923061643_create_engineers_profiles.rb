class CreateEngineersProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :engineers_profiles do |t|

      t.timestamps
    end
  end
end
