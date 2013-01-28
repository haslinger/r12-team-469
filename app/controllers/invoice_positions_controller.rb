class InvoicePositionsController < ApplicationController
load_and_authorize_resource :except => [:calculate_value] 
skip_authorization_check :only => [:calculate_value]

  def create
    @invoice_position.created_by = current_user.id
    if @invoice_position.save
      redirect_to @invoice_position, notice: 'InvoicePosition was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @invoice_position.update_attributes(params[:invoice_position])
      redirect_to @invoice_position, notice: 'InvoicePosition was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @invoice_position.destroy

    redirect_to invoice_positions_url
  end
  
  def calculate_value
    @calculated = params[:price].to_i * params[:quantity].to_i
    
#    respond_to do |format|
#      format.js {render :content_type => 'text/javascript'}
#      format.js
#    end

  end
end
