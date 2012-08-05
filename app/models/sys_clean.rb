class SysClean < ActiveRecord::Base
  attr_accessible :new_packages, :sys_op_id, :trash_bin_contents

  belongs_to :sys_op, :autosave => :true

  after_create :collect_data #tells method collect_data to run after creation of the report

  def collect_data
    #Put code to collect data here
  end
  handle_asynchronously :collect_data #This statement gives the method to our dj worker to complete the task

end
