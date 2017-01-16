class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update] # probably want to keep using this

 # GET /users
 # GET /users.json
 def index
   @clients = Client.all
 end

 # # GET /users/1
 # # GET /users/1.json
 def show

 end

 # GET /users/1/edit
 def edit

 end

 # # PATCH/PUT /users/1
 # # PATCH/PUT /users/1.json
 def update
   respond_to do |format|
     if @client.update(user_params)
       format.html { redirect_to @client, notice: 'User was successfully updated.' }
       format.json { render :show, status: :ok, location: @v }
     else
       format.html { render :edit }
       format.json { render json: @client.errors, status: :unprocessable_entity }
     end
   end
 end

 private
   # Use callbacks to share common setup or constraints between actions.
   def set_client
     @client = Client.find(params[:id])
   end

   # Never trust parameters from the scary internet, only allow the white list through.
   def user_params
     params.require(:user).permit(:role, :user_name)
   end

end
