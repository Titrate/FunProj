class CreateSysOps < ActiveRecord::Migration
  def change
    create_table :sys_ops do |t|
      t.datetime :start_time_column
      t.string :title

      t.timestamps
    end
  end
end
