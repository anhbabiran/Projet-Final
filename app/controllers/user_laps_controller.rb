class UserLapsController < ApplicationController
  before_action :set_user_lap, only: [:show, :edit, :update, :destroy]

  # GET /user_laps
  # GET /user_laps.json
  def index
    @user_laps = UserLap.all
  end

  # GET /user_laps/1
  # GET /user_laps/1.json
  def show
  end

  # GET /user_laps/new
  def new
    @user_lap = UserLap.new
  end

  # GET /user_laps/1/edit
  def edit
  end

  # POST /user_laps
  # POST /user_laps.json
  def create
    @user_lap = UserLap.new(user_lap_params)

    respond_to do |format|
      if @user_lap.save
      MyMailMailer .signup_confirm(@user_lap).deliver
        format.html { redirect_to @user_lap, notice: 'User lap was successfully created.' }
        format.json { render :show, status: :created, location: @user_lap }
      else
        format.html { render :new }
        format.json { render json: @user_lap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_laps/1
  # PATCH/PUT /user_laps/1.json
  def update
    respond_to do |format|
      if @user_lap.update(user_lap_params)
        format.html { redirect_to @user_lap, notice: 'User lap was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_lap }
      else
        format.html { render :edit }
        format.json { render json: @user_lap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_laps/1
  # DELETE /user_laps/1.json
  def destroy
    @user_lap.destroy
    respond_to do |format|
      format.html { redirect_to user_laps_url, notice: 'User lap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_lap
      @user_lap = UserLap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_lap_params
      params.require(:user_lap).permit(:name, :email)
    end
end
