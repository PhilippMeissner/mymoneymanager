class FlowTypesController < ApplicationController
  before_action :set_flow_type, only: [:show, :edit, :update, :destroy]

  # GET /flow_types
  # GET /flow_types.json
  def index
    @flow_types = FlowType.all
  end

  # GET /flow_types/1
  # GET /flow_types/1.json
  def show
  end

  # GET /flow_types/new
  def new
    @flow_type = FlowType.new
  end

  # GET /flow_types/1/edit
  def edit
  end

  # POST /flow_types
  # POST /flow_types.json
  def create
    @flow_type = FlowType.new(flow_type_params)

    respond_to do |format|
      if @flow_type.save
        format.html { redirect_to @flow_type, notice: 'Flow type was successfully created.' }
        format.json { render :show, status: :created, location: @flow_type }
      else
        format.html { render :new }
        format.json { render json: @flow_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flow_types/1
  # PATCH/PUT /flow_types/1.json
  def update
    respond_to do |format|
      if @flow_type.update(flow_type_params)
        format.html { redirect_to @flow_type, notice: 'Flow type was successfully updated.' }
        format.json { render :show, status: :ok, location: @flow_type }
      else
        format.html { render :edit }
        format.json { render json: @flow_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flow_types/1
  # DELETE /flow_types/1.json
  def destroy
    @flow_type.destroy
    respond_to do |format|
      format.html { redirect_to flow_types_url, notice: 'Flow type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flow_type
      @flow_type = FlowType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flow_type_params
      params.require(:flow_type).permit(:name)
    end
end
