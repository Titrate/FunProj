class SysCheck < ActiveRecord::Base
  attr_accessible :hd_usage, :mem_usage, :sys_op_id, :time_running
end
