class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def create
    name = params[:offer][:name]
    prix = params[:offer][:prix]
    time = params[:offer][:time]
    detail = params[:offer][:detail]
    image = params[:offer][:image]

    offer = Offer.create(name: name, prix: prix, time: time, detail: detail, image: image)

    if (offer.nil?)
      render 'new'
    else
      redirect_to offers_path
    end
  end

  def new
    @offer = Offer.new
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    offer = Offer.find(params[:id])
    offer.name = params[:offer][:name]
    offer.prix = params[:offer][:prix]
    offer.time = params[:offer][:time]
    offer.detail = params[:offer][:detail]
    offer.image = params[:offer][:image]

    if (offer.save)
      redirect_to offer_path(params[:id])
    else
      render 'edit'
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy

    redirect_to offers_path
  end

end
