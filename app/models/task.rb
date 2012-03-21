class Task < ActiveRecord::Base
  belongs_to :sow
  belongs_to :architect
  scope :complete, :conditions => {:complete => true}
  scope :incomplete, :conditions => {:complete => false }
end
