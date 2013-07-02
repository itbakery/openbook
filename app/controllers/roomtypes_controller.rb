class RoomtypesController < ApplicationController
  # GET /roomtypes
  # GET /roomtypes.json
  def index
    @roomtypes = Roomtype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @roomtypes }
    end
  end

  # GET /roomtypes/1
  # GET /roomtypes/1.json
  def show
    @roomtype = Roomtype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @roomtype }
    end
  end

  # GET /roomtypes/new
  # GET /roomtypes/new.json
  def new
    @roomtype = Roomtype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @roomtype }
    end
  end

  # GET /roomtypes/1/edit
  def edit
    @roomtype = Roomtype.find(params[:id])
  end

  # POST /roomtypes
  # POST /roomtypes.json
  def create
    @roomtype = Roomtype.new(params[:roomtype])

    respond_to do |format|
      if @roomtype.save
        format.html { redirect_to @roomtype, notice: 'Roomtype was successfully created.' }
        format.json { render json: @roomtype, status: :created, location: @roomtype }
      else
        format.html { render action: "new" }
        format.json { render json: @roomtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /roomtypes/1
  # PUT /roomtypes/1.json
  def update
    @roomtype = Roomtype.find(params[:id])

    respond_to do |format|
      if @roomtype.update_attributes(params[:roomtype])
        format.html { redirect_to @roomtype, notice: 'Roomtype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @roomtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roomtypes/1
  # DELETE /roomtypes/1.json
  def destroy
    @roomtype = Roomtype.find(params[:id])
    @roomtype.destroy

    respond_to do |format|
      format.html { redirect_to roomtypes_url }
      format.json { head :no_content }
    end
  end
end
