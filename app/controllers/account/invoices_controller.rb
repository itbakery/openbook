class Account::InvoicesController < ApplicationController
  # GET /invoices
  # GET /invoices.json
  layout 'account'
  before_filter  :authenticate_user! , :except => [:confirmpayment]
  def index
    @invoices = Invoice.all
    @invoice = Invoice.new
    @customer = Customer.new
    3.times {@invoice.invoicelines.build}
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @invoices }
    end
  end

  # GET /invoices/1
  # GET /invoices/1.json
  def show
    @invoice = Invoice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @invoice }
    end
  end

  # GET /invoices/new
  # GET /invoices/new.json
  def new
    @invoice = Invoice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @invoice }
    end
  end

  # GET /invoices/1/edit
  def edit
    @invoice = Invoice.find(params[:id])
    @customer = @invoice.customer
    @invoicelines = @invoice.invoicelines
  end

  # POST /invoices
  # POST /invoices.json
  def create
    @invoice = Invoice.new(params[:invoice])

    respond_to do |format|
      if @invoice.save
        format.html { redirect_to [:account,@invoice], notice: 'Invoice was successfully created.' }
        format.json { render json: @invoice, status: :created, location: @invoice }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /invoices/1
  # PUT /invoices/1.json
  def update
    @invoice = Invoice.find(params[:id])

    respond_to do |format|
      if @invoice.update_attributes(params[:invoice])
        format.html { redirect_to [:account,@invoice], notice: 'Invoice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  def destroy
    @invoice = Invoice.find(params[:id])
    @invoice.destroy

    respond_to do |format|
      format.html { redirect_to account_invoices_url }
      format.json { head :no_content }
    end
  end

  def sendconfirm
    @invoice = Invoice.find(params[:id])
    #mailer object
    InvoiceMailer.confirm_payment(@invoice).deliver
    #render nothing: true
    respond_to do |format|
      format.js
    end
  end

  def thankyou
    respond_to do |format|
      format.html {render  :layout => 'thankyou' }
    end

  end

  def confirmpayment
    @invoice = Invoice.where(invoice_no: params[:invoice_no]).first

    if @invoice
      @invoice.status="return"
      @invoice.senddate= Time.now
      @invoice.save
      if @invoice.currency.code =="th_TH"
        @bank_arg = {
          "MERCHANT2"=>"451005032751001",
          "TERM2"=>"70347806",
          "URL2"=>"www.sitourtravel.com/thankyou",
          "RESPURL"=>"www.sitourtravel.com",
          "IPCUST2"=>"203.146.127.179",
        }
      end
      if  @invoice.currency.code =="us_US"
        @bank_arg = {
          "MERCHANT2"=>"402001536444001",
          "TERM2"=>"70348572",
          "URL2"=>"www.sitourtravel.com/thankyou",
          "RESPURL"=>"www.sitourtravel.com",
          "IPCUST2"=>"203.146.127.179",
        }
      end
      #DETAIL2  Product Description
      #AMOUNT2  Total Amount of purchased order
      #         No decimal must multiple of 100  781.25 -> 78125
      @form_arg = {
        "DETAIL2" => @invoice.note,
        "AMOUNT2" => @invoice.grandtotal.to_i*100,
        "INVMERCHANT" => @invoice.invoice_no.to_i,
        "FILLSPACE" => "Y",
      }
    else
      render :text => "Sorry!! Can not found your payment code",:layout => 'customer'
    end
    respond_to do |format|
      format.html {render  :layout => 'kbank' }
    end
  end
end
