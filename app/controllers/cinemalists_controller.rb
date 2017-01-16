class CinemalistsController < ApplicationController
  def index
    @cinemalists = Cinemalist.search(params[:q]).ordering(params[:sort_mode])
      respond_to do |format|
          format.json { render json: @cinemalists }
          format.html { render 'index' }
      end
    end

    def new
        @cinemalist = Cinemalist.new
    end
  def create
      @cinemalist = Cinemalist.new(cinemalist_params)

      if @cinemalist.save
          redirect_to @cinemalist
      else
          flash[:error] = 'Error: Cannot create new cinema'
          render 'new'
      end
  end

  def edit
        @cinemalist = Cinemalist.find(params[:id])
    end

  def show
      @cinemalist = Cinemalist.find(params[:id])
  end
  def update
      @cinemalist = Cinemalist.find(params[:id])

      if @cinemalist.update(cinemalist_params).present?
              redirect_to @cinemalist
          else
        render 'edit'
      end
    end

    def destroy
      @cinemalist = Cinemalist.find(params[:id])
      @cinemalist.destroy
      redirect_to cinemalists_path
    end
  private
    def cinemalist_params
        params.require(:cinemalist).permit(:name, :image, :images, :address, :web, :phone)
    end
end
