class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def create
    name = params[:offer][:name]
    prix = params[:offer][:prix]
    time = params[:offer][:time]
    detail = params[:offer][:detail]

    offer = Offer.create(name: name, prix: prix, time: time, detail: detail)

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
    offer = Offer.find_by(params[:id])
    offer.name = params[:offer][:name]
    offer.prix = params[:offer][:prix]
    offer.time = params[:offer][:time]
    offer.detail = params[:offer][:detail]

    if (offer.save)
      redirect_to offer_path(params[:id])
    else
      render 'edit'
    end

  end

end
