class RacketsController < ApplicationController
  def index
    @rackets = Racket.all
  end

  def new
    @racket = Racket.new
  end

  def create
    Racket.create(racket_params)
  end

  def destroy
    racket = Racket.find(params[:id])
    racket.destroy
  end

  def edit
    @racket = Racket.find(params[:id])
  end

  def update
    racket = Racket.find(params[:id])
    racket.update(racket_params)
  end

  private
    def racket_params
      params.require(:racket).permit(:name, :price, :kind, :image)
    end
end
