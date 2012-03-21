class Sow < ActiveRecord::Base
  belongs_to :customer
  has_many :tasks

  def percent_complete
    tasks.complete.sum{|t| t.duration.to_f} / tasks.sum {|t| t.duration.to_f} * 100
  end

  def dollars_worked
    percent_complete * self.price / 100
  end

end
