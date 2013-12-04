class RepresenativesController < ApplicationController
  require 'Congress'
  Congress.key = '0ef8e130fe124b69a2388d253fd05e63'
  #before_action :set_represenative, only: [:show, :edit, :update, :destroy]

  # GET /represenatives
  # GET /represenatives.json
  def index
    @represenatives = Congress.legislators(per_page: "all")["results"] 
    @house  = @represenatives.select { |leg| leg.chamber == "house" }
    @senate = @represenatives.select { |leg| leg.chamber == "senate" }
  end

  # GET /represenatives/1
  # GET /represenatives/1.json
  #def show
  #end

  # GET /represenatives/new
  #def new
   # @represenative = Represenative.new
  #end

  # GET /represenatives/1/edit
  #def edit
  #end

  # POST /represenatives
  # POST /represenatives.json
  #def create
   # @represenative = Represenative.new(represenative_params)

    #respond_to do |format|
     # if @represenative.save
      #  format.html { redirect_to @represenative, notice: 'Represenative was successfully created.' }
       # format.json { render action: 'show', status: :created, location: @represenative }
      #else
       # format.html { render action: 'new' }
        #format.json { render json: @represenative.errors, status: :unprocessable_entity }
      #end
    #end
  #end

  # PATCH/PUT /represenatives/1
  # PATCH/PUT /represenatives/1.json
  #def update
   # respond_to do |format|
    #  if @represenative.update(represenative_params)
     #   format.html { redirect_to @represenative, notice: 'Represenative was successfully updated.' }
      #  format.json { head :no_content }
      #else
       # format.html { render action: 'edit' }
        #format.json { render json: @represenative.errors, status: :unprocessable_entity }
      #end
    #end
  #end

  # DELETE /represenatives/1
  # DELETE /represenatives/1.json
  #def destroy
   # @represenative.destroy
    #respond_to do |format|
     # format.html { redirect_to represenatives_url }
      #format.json { head :no_content }
    #end
  #end

  #private
    # Use callbacks to share common setup or constraints between actions.
   # def set_represenative
    #  @represenative = Represenative.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    #def represenative_params
     # params[:represenative]
   # end
end
