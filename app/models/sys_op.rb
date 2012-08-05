class SysOp < ActiveRecord::Base
  attr_accessible :start_time_column, :title

  has_one :sys_clean, :dependent => :destroy
  has_one :sys_check,	:dependent => :destroy

  validates_presence_of :title

  after_create :init_report

  def init_report
    if title == "Clean System Operation"
      self.create_sys_clean
    else
      self.create_sys_check
    end

    self.update_attributes(start_time_column: Time.now)
  end


end
