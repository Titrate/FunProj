class CreateSysChecks < ActiveRecord::Migration
  def change
    create_table :sys_checks do |t|
      t.string :hd_usage
      t.string :mem_usage
      t.string :time_running
      t.integer :sys_op_id

      t.timestamps
    end
  end
end
