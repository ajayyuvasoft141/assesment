class AddsController < ApplicationController
  before_action :get_board, only: [:new]

  def index
  	ApplicationJob.perform_later
  end

  def new
  	@add = @board.adds.new
  end

  def create
  	@add = Add.new(adds_params)
  	if @add.save
  		redirect_to root_path, notice: 'Your adds create.'
  	else
  		render :new
  	end 
  end

  private 

  def get_board
  	@board = Adboard.find_by(id: params[:board_id])
  end

  def adds_params
  	params.require(:add).permit(:name, :adboard_id, :ads_category_id, :ads_size_id, :ads_duration)
  end
end
