class CharactersController < ApplicationController

  def index
    @characters = Character.all.order('created_at DESC').page(params[:page]).per(10)
  end

end