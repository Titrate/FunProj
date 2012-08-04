class SysClean < ActiveRecord::Base
  attr_accessible :new_packages, :sys_op_id, :trash_bin_contents
end
