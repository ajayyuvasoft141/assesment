class ApplicationJob < ActiveJob::Base
  queue_as :default
 
  def perform
  	Adboard.all.each do |board|
  		if board.adds::active_adds.where.not(start_add: nil).present?
  			add = board.adds::active_adds.where.not(start_add: nil).first
  			start_time = add.start_add
  			end_time = Time.now.utc
  			seconds_diff = (start_time - end_time).to_i.abs
  			hours = seconds_diff / 3600
  			seconds_diff -= hours * 3600
  			minutes = seconds_diff / 60
  			if (minutes > add.ads_duration)
  				add.active = false
  				add.save
  				puts "update"
  			end
  		elsif board.adds::active_adds.where(start_add: nil).present?
  			add = board.adds::active_adds.where(start_add: nil).first
  			add.start_add = Time.now.utc
  			add.save
  		else
  		end
  	end
  end
end
