module DashboardsHelper

  def dev_time
    distance_of_time_in_words(Date.today, Date.new(2016, 03, 30))
  end

  def poet_time
    distance_of_time_in_words(Date.today, Date.new(2005, 07, 30))
  end

end
