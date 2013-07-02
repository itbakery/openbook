class RoomratesController < ApplicationController
  # GET /roomrates
  # GET /roomrates.json
  def index
    @roomrates = Roomrate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @roomrates }
    end
  end

  # GET /roomrates/1
  # GET /roomrates/1.json
  def show
    @roomrate = Roomrate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @roomrate }
    end
  end

  # GET /roomrates/new
  # GET /roomrates/new.json
  def new
    @roomrate = Roomrate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @roomrate }
    end
  end

  # GET /roomrates/1/edit
  def edit
    @roomrate = Roomrate.find(params[:id])
  end

  # POST /roomrates
  # POST /roomrates.json
  def create
    @roomrate = Roomrate.new(params[:roomrate])

    respond_to do |format|
      if @roomrate.save
        format.html { redirect_to @roomrate, notice: 'Roomrate was successfully created.' }
        format.json { render json: @roomrate, status: :created, location: @roomrate }
      else
        format.html { render action: "new" }
        format.json { render json: @roomrate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /roomrates/1
  # PUT /roomrates/1.json
  def update
    @roomrate = Roomrate.find(params[:id])

    respond_to do |format|
      if @roomrate.update_attributes(params[:roomrate])
        format.html { redirect_to @roomrate, notice: 'Roomrate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @roomrate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roomrates/1
  # DELETE /roomrates/1.json
  def destroy
    @roomrate = Roomrate.find(params[:id])
    @roomrate.destroy

    respond_to do |format|
      format.html { redirect_to roomrates_url }
      format.json { head :no_content }
    end
  end
end
