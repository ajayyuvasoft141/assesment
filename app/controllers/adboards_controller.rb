class AdboardsController < ApplicationController
  
  def index
    ApplicationJob.perform_later
  	@ad_boards = Adboard.includes(:adds)
  end

  def new
  	@ad_board = Adboard.new
  end

  def create
  	@ad_board = Adboard.new(ad_board_params)
  	if @ad_board.save
  		redirect_to root_path, notice: 'Your add borad create.'
  	else
  		render :new
  	end 
  end

  private 

  def ad_board_params
  	params.require(:adboard).permit(:name, :total_revenue)
  end

end
