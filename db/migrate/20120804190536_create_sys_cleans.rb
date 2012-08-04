class CreateSysCleans < ActiveRecord::Migration
  def change
    create_table :sys_cleans do |t|
      t.text :trash_bin_contents
      t.text :new_packages
      t.integer :sys_op_id

      t.timestamps
    end
  end
end
