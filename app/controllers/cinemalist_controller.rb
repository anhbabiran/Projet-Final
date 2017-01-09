class CinemalistController < ApplicationController
    def index
      end

    def create
        @cinema = Cinema.new(cinema_params)

        if @cinema.save
            redirect_to @cinema
        else
            flash[:error] = 'Error: Cannot create new cinema'
            render 'new'
        end
    end

    def new
        @cinema = Cinema.new
    end

    def show
        @cinema = Cinema.find(params[:id])
    end

    def cinema_params
        params.require(:cinema).permit(:name, :image)
    end
end
