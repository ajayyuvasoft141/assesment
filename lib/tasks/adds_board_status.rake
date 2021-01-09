namespace :adds_board_status do
	desc "Expired adds when time duration is done."
	task :expired => :environment do
  	@ad_boards = Adboard::active_adds
  		
#   	created = @ad_boards[0].created_at
#   	current_date = DateTime.now
  	
#   	created = @ad_boards[0].created_at
# updated = @ad_boards[0].updated_at
# minutes = ((current_date - updated) * 24 * 60).to_i	

	# <%= f.select :ads_category_id, options_for_select(AdsCategory.all.collect{|ad| [ad.ads_type, ad.id]}), :prompt => "Select One"%><br>
	# <%= f.label "Add Size"%>
	# <%= f.select :ads_size_id, options_for_select(AdsSize.all.collect{|ad| [ad.ads_size, ad.id]}), :prompt => "Select One"%><br>
	# <%= f.label "Add Duration"%>

  end
end
