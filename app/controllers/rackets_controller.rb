class RacketsController < ApplicationController
  def index
    racket = Racket.new(params_racket_search)
    @rackets = racket.search
    @rackets = @rackets.order(:name).page params[:page]
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

  def show
    @racket = Racket.find(params[:id])
  end

  private
    def racket_params
      params.require(:racket).permit(:name, :price, :kind, :image, :remove_image)
    end

    def params_racket_search
      params.permit(:search_name, :search_price, :search_kind, :search_image)
    end
end
