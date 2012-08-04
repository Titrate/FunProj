class CreateCals < ActiveRecord::Migration
  def change
    create_table :cals do |t|

      t.timestamps
    end
  end
end
