class Account::InvoicelinesController < ApplicationController
  # GET /invoicelines
  # GET /invoicelines.json
  def index
    @invoicelines = Invoiceline.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @invoicelines }
    end
  end

  # GET /invoicelines/1
  # GET /invoicelines/1.json
  def show
    @invoiceline = Invoiceline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @invoiceline }
    end
  end

  # GET /invoicelines/new
  # GET /invoicelines/new.json
  def new
    @invoiceline = Invoiceline.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @invoiceline }
    end
  end

  # GET /invoicelines/1/edit
  def edit
    @invoiceline = Invoiceline.find(params[:id])
  end

  # POST /invoicelines
  # POST /invoicelines.json
  def create
    @invoiceline = Invoiceline.new(params[:invoiceline])

    respond_to do |format|
      if @invoiceline.save
        format.html { redirect_to [:account,@invoiceline], notice: 'Invoiceline was successfully created.' }
        format.json { render json: @invoiceline, status: :created, location: @invoiceline }
      else
        format.html { render action: "new" }
        format.json { render json: @invoiceline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /invoicelines/1
  # PUT /invoicelines/1.json
  def update
    @invoiceline = Invoiceline.find(params[:id])

    respond_to do |format|
      if @invoiceline.update_attributes(params[:invoiceline])
        format.html { redirect_to [:account,@invoiceline], notice: 'Invoiceline was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @invoiceline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoicelines/1
  # DELETE /invoicelines/1.json
  def destroy
    @invoiceline = Invoiceline.find(params[:id])
    @invoiceline.destroy

    respond_to do |format|
      format.html { redirect_to account_invoicelines_url }
      format.json { head :no_content }
    end
  end
end
