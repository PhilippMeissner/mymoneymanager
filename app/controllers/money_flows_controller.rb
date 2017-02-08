class MoneyFlowsController < ApplicationController
  before_action :set_money_flow, only: [:show, :edit, :update, :destroy]

  # GET /money_flows
  # GET /money_flows.json
  def index
    @money_flows = MoneyFlow.all
  end

  # GET /money_flows/1
  # GET /money_flows/1.json
  def show
  end

  # GET /money_flows/new
  def new
    @money_flow = MoneyFlow.new
  end

  # GET /money_flows/1/edit
  def edit
  end

  # POST /money_flows
  # POST /money_flows.json
  def create
    @money_flow = MoneyFlow.new(money_flow_params)

    respond_to do |format|
      if @money_flow.save
        format.html { redirect_to @money_flow, notice: 'Money flow was successfully created.' }
        format.json { render :show, status: :created, location: @money_flow }
      else
        format.html { render :new }
        format.json { render json: @money_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /money_flows/1
  # PATCH/PUT /money_flows/1.json
  def update
    respond_to do |format|
      if @money_flow.update(money_flow_params)
        format.html { redirect_to @money_flow, notice: 'Money flow was successfully updated.' }
        format.json { render :show, status: :ok, location: @money_flow }
      else
        format.html { render :edit }
        format.json { render json: @money_flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /money_flows/1
  # DELETE /money_flows/1.json
  def destroy
    @money_flow.destroy
    respond_to do |format|
      format.html { redirect_to money_flows_url, notice: 'Money flow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_money_flow
      @money_flow = MoneyFlow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def money_flow_params
      params.require(:money_flow).permit(:amount_cents, :description, :name, :flow_type)
    end
end
