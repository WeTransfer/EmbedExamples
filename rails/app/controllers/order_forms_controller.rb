class OrderFormsController < ApplicationController
  before_action :set_order_form, only: [:show, :edit, :update, :destroy]

  # GET /order_forms
  # GET /order_forms.json
  def index
    @order_forms = OrderForm.all
  end

  # GET /order_forms/1
  # GET /order_forms/1.json
  def show
  end

  # GET /order_forms/new
  def new
    @order_form = OrderForm.new
  end

  # GET /order_forms/1/edit
  def edit
  end

  # POST /order_forms
  # POST /order_forms.json
  def create
    @order_form = OrderForm.new(order_form_params)

    respond_to do |format|
      if @order_form.save
        format.html { redirect_to @order_form, notice: 'Order form was successfully created.' }
        format.json { render :show, status: :created, location: @order_form }
      else
        format.html { render :new }
        format.json { render json: @order_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_forms/1
  # PATCH/PUT /order_forms/1.json
  def update
    respond_to do |format|
      if @order_form.update(order_form_params)
        format.html { redirect_to @order_form, notice: 'Order form was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_form }
      else
        format.html { render :edit }
        format.json { render json: @order_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_forms/1
  # DELETE /order_forms/1.json
  def destroy
    @order_form.destroy
    respond_to do |format|
      format.html { redirect_to order_forms_url, notice: 'Order form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_form
      @order_form = OrderForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_form_params
      params.require(:order_form).permit(:description, :quantity, :uploaded_material)
    end
end
