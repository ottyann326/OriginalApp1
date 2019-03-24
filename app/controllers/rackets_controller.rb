class RacketsController < ApplicationController
  before_action :set_racket, only: [:destroy, :edit, :update, :show]

  def index
    racket = Racket.new(params_racket_search)
    @rackets = racket.search
    @rackets = @rackets.order(:name).page params[:page]
  end

# before_actionにより、destroy, edit, update, showメソッドでは、@racket = Racket.find(params[:id])の記述はいらなくなる。

  def new
    @racket = Racket.new
  end

  def create
    Racket.create(name: racket_params[:name], price: racket_params[:price],kind: racket_params[:kind],image: racket_params[:image],user_id: current_user.id)
  end

  def destroy
    @racket.destroy
  end

  def edit
  end

  def update
    @racket.update(racket_params)
  end

  def show
  end

  private
    def racket_params
      params.require(:racket).permit(:name, :price, :kind, :image, :remove_image)
    end

    def params_racket_search
      params.permit(:search_name, :search_price, :search_kind, :search_image)
    end

    def set_racket
      @racket = Racket.find(params[:id])
    end
end
