class UserAdsController < ApplicationController
  before_action :set_user_ad, only: [:show, :edit, :update, :destroy]

  # GET /user_ads
  # GET /user_ads.json
  def index
    @user_ads = UserAd.all
  end

  # GET /user_ads/1
  # GET /user_ads/1.json
  def show
  end

  # GET /user_ads/new
  def new
    @user_ad = UserAd.new
  end

  # GET /user_ads/1/edit
  def edit
  end

  # POST /user_ads
  # POST /user_ads.json
  def create
    @user_ad = UserAd.new(user_ad_params)

    respond_to do |format|
      if @user_ad.save
        format.html { redirect_to @user_ad, notice: 'User ad was successfully created.' }
        format.json { render :show, status: :created, location: @user_ad }
      else
        format.html { render :new }
        format.json { render json: @user_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_ads/1
  # PATCH/PUT /user_ads/1.json
  def update
    respond_to do |format|
      if @user_ad.update(user_ad_params)
        format.html { redirect_to @user_ad, notice: 'User ad was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_ad }
      else
        format.html { render :edit }
        format.json { render json: @user_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_ads/1
  # DELETE /user_ads/1.json
  def destroy
    @user_ad.destroy
    respond_to do |format|
      format.html { redirect_to user_ads_url, notice: 'User ad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_ad
      @user_ad = UserAd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_ad_params
      params.require(:user_ad).permit(:name, :email)
    end
end
