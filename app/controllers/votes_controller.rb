class VotesController < ApplicationController
  def create
    @vote = Vote.new(vote_params)
    @votes = Vote.all
    if @vote.save
      render :index, layout: false
    else
      flash[:notice] = "There was an error"
      render :index, layout: false
    end
  end

  def update
  end

  def index
    @vote = Vote.new
    @votes = Vote.all
    render :index, layout: false
  end

  private
  def vote_params
    params.require(:vote).permit!
  end
end
