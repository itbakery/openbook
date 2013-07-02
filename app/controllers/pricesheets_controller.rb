class PricesheetsController < ApplicationController
  # GET /pricesheets
  # GET /pricesheets.json
  def index
    @pricesheets = Pricesheet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pricesheets }
    end
  end

  # GET /pricesheets/1
  # GET /pricesheets/1.json
  def show
    @pricesheet = Pricesheet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pricesheet }
    end
  end

  # GET /pricesheets/new
  # GET /pricesheets/new.json
  def new
    @pricesheet = Pricesheet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pricesheet }
    end
  end

  # GET /pricesheets/1/edit
  def edit
    @pricesheet = Pricesheet.find(params[:id])
  end

  # POST /pricesheets
  # POST /pricesheets.json
  def create
    @pricesheet = Pricesheet.new(params[:pricesheet])

    respond_to do |format|
      if @pricesheet.save
        format.html { redirect_to @pricesheet, notice: 'Pricesheet was successfully created.' }
        format.json { render json: @pricesheet, status: :created, location: @pricesheet }
      else
        format.html { render action: "new" }
        format.json { render json: @pricesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pricesheets/1
  # PUT /pricesheets/1.json
  def update
    @pricesheet = Pricesheet.find(params[:id])

    respond_to do |format|
      if @pricesheet.update_attributes(params[:pricesheet])
        format.html { redirect_to @pricesheet, notice: 'Pricesheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pricesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pricesheets/1
  # DELETE /pricesheets/1.json
  def destroy
    @pricesheet = Pricesheet.find(params[:id])
    @pricesheet.destroy

    respond_to do |format|
      format.html { redirect_to pricesheets_url }
      format.json { head :no_content }
    end
  end
end
