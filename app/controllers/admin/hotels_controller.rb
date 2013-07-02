class Admin::HotelsController < ApplicationController
  include ActionView::Helpers::AssetTagHelper
  # GET /hotels
  # GET /hotels.json
  def index
    @hotels = Hotel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hotels }
    end
  end

  # GET /hotels/1
  # GET /hotels/1.json
  def show
    @hotel = Hotel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hotel }
    end
  end

  # GET /hotels/new
  # GET /hotels/new.json
  def new
    @hotel = Hotel.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hotel }
    end
  end

  # GET /hotels/1/edit
  def edit
    @hotel = Hotel.find(params[:id])
    @lat   = @hotel.latitude
    @lng   = @hotel.longitude
    @ratesheet = @hotel.ratesheets.build
    respond_to do |format|
      format.html
      format.json { render json: @hotel }
    end

  end

  # POST /hotels
  # POST /hotels.json
  def create
    @hotel = Hotel.new(params[:hotel])

    respond_to do |format|
      if @hotel.save
        format.html { redirect_to [:admin,@hotel], notice: 'Hotel was successfully created.' }
        format.json { render json: @hotel, status: :created, location: @hotel }
      else
        format.html { render action: "new" }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hotels/1
  # PUT /hotels/1.json
  def update
    @hotel = Hotel.find(params[:id])
    respond_to do |format|
      if @hotel.update_attributes(params[:hotel])
        format.html { redirect_to [:admin,@hotel], notice: 'Hotel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotels/1
  # DELETE /hotels/1.json
  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy

    respond_to do |format|
      format.html { redirect_to admin_hotels_url }
      format.json { head :no_content }
    end
  end
  def all_ratesheet
    @hotel = Hotel.find(params[:id])
    @ratesheets = @hotel.ratesheets
    respond_to do |format|
      format.js
    end
  end
  def edit_ratesheet
    @ratesheet = Ratesheet.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def hotelinfo
    @hotel = Hotel.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def destroy_ratesheet

    @ratesheet = Ratesheet.find(params[:id])
    @ratesheet.destroy
    @hotel = @ratesheet.hotel

    respond_to do |format|
      format.html { redirect_to edit_admin_hotel_url(@hotel), alert: "Ratesheet Deleted"}
      format.json { head :no_content }
    end
  end
  def update_ratesheet
    @ratesheet = Ratesheet.find(params[:id])
    respond_to do |format|
      if @ratesheet.update_attributes(params[:ratesheet])
        format.js  {alert("update  #{@ratesheet}success"); }
      end
    end
  end

  def create_ratesheet
    @ratesheet = Ratesheet.find_or_create_by(params[:ratesheet])

    respond_to do |format|
      if @ratesheet.save
        @vf = @ratesheet.period.valid_from
        @vt = @ratesheet.period.valid_to

        @vf.upto(@vt) do |d|
          @pricesheet = @ratesheet.pricesheets.build
          @pricesheet.date = d
          @pricesheet.day = d.strftime('%A')
          @pricesheet.minstay = 1
          @pricesheet.price = 0.0
          @pricesheet.message = "message"
          @pricesheet.isactive = true
          @pricesheet.save
        end
        @pricesheets = @ratesheet.pricesheets
        format.js
      else
      end
    end
  end
end
