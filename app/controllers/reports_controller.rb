class ReportsController < ApplicationController

  def engagements
    @sows = Sow.find(:all)
    @total_dollars_worked = 0
    @total_dollars = 0
    @sows.each do |s|
      @total_dollars_worked += s.dollars_worked
      @total_dollars += s.price
    end
  end

end
