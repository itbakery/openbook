class Admin::RatesheetsController < ApplicationController
  # GET /ratesheets
  # GET /ratesheets.json
  def index
    @ratesheets = Ratesheet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ratesheets }
    end
  end

  # GET /ratesheets/1
  # GET /ratesheets/1.json
  def show
    @ratesheet = Ratesheet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ratesheet }
    end
  end

  # GET /ratesheets/new
  # GET /ratesheets/new.json
  def new
    @ratesheet = Ratesheet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ratesheet }
    end
  end

  # GET /ratesheets/1/edit
  def edit
    @ratesheet = Ratesheet.find(params[:id])
  end

  # POST /ratesheets
  # POST /ratesheets.json
  def create
    @ratesheet = Ratesheet.new(params[:ratesheet])

    respond_to do |format|
      if @ratesheet.save
        format.html { redirect_to [:admin,@ratesheet], notice: 'Ratesheet was successfully created.' }
        format.json { render json: @ratesheet, status: :created, location: @ratesheet }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @ratesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ratesheets/1
  # PUT /ratesheets/1.json
  def update
    @ratesheet = Ratesheet.find(params[:id])

    respond_to do |format|
      if @ratesheet.update_attributes(params[:ratesheet])
        format.html { redirect_to [:admin,@ratesheet], notice: 'Ratesheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ratesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ratesheets/1
  # DELETE /ratesheets/1.json
  def destroy
    @ratesheet = Ratesheet.find(params[:id])
    @ratesheet.destroy

    respond_to do |format|
      format.html { redirect_to admin_ratesheets_url }
      format.json { head :no_content }
    end
  end
end
