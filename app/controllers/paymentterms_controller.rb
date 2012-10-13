class PaymenttermsController < ApplicationController
  # GET /paymentterms
  # GET /paymentterms.json
  def index
    @paymentterms = Paymentterm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @paymentterms }
    end
  end

  # GET /paymentterms/1
  # GET /paymentterms/1.json
  def show
    @paymentterm = Paymentterm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @paymentterm }
    end
  end

  # GET /paymentterms/new
  # GET /paymentterms/new.json
  def new
    @paymentterm = Paymentterm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @paymentterm }
    end
  end

  # GET /paymentterms/1/edit
  def edit
    @paymentterm = Paymentterm.find(params[:id])
  end

  # POST /paymentterms
  # POST /paymentterms.json
  def create
    @paymentterm = Paymentterm.new(params[:paymentterm])

    respond_to do |format|
      if @paymentterm.save
        format.html { redirect_to @paymentterm, notice: 'Paymentterm was successfully created.' }
        format.json { render json: @paymentterm, status: :created, location: @paymentterm }
      else
        format.html { render action: "new" }
        format.json { render json: @paymentterm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /paymentterms/1
  # PUT /paymentterms/1.json
  def update
    @paymentterm = Paymentterm.find(params[:id])

    respond_to do |format|
      if @paymentterm.update_attributes(params[:paymentterm])
        format.html { redirect_to @paymentterm, notice: 'Paymentterm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @paymentterm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paymentterms/1
  # DELETE /paymentterms/1.json
  def destroy
    @paymentterm = Paymentterm.find(params[:id])
    @paymentterm.destroy

    respond_to do |format|
      format.html { redirect_to paymentterms_url }
      format.json { head :no_content }
    end
  end
end