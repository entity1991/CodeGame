class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def create
    puts params
    @game = Game.new params[:game]
    if @game.save
      redirect_to root_path, :notice => 'Successfully created Game.'
    else
      render :action => 'new'
    end
  end

  def show
    @game = Game.find_by_id params[:id]
  end

  def new
    @game = Game.new
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update_attributes(params[:game])
      redirect_to universities_url, :notice  => "Successfully updated Game."
    else
      render :action => 'edit'
    end
  end
end