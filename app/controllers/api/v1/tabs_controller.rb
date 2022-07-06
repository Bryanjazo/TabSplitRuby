class Api::V1::TabsController < ApplicationController

    # GET /api/v1/tabs
  def index
    @api_v1_tabs = Api::V1::Test.all

    render json: @api_v1_tabs
  end

  # GET /api/v1/tabs/1
  def show
    render json: @api_v1_tabs
  end

  # POST /api/v1/tabs
  def create
    @api_v1_tabs = Api::V1::Tab.new(api_v1_tabs_params)

    if @api_v1_tabs.save
      render json: @api_v1_tabs, status: :created, location: @api_v1_tabs
    else
      render json: @api_v1_tabs.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/tabs/1
  def update
    if @api_v1_tabs.update(api_v1_test_params)
      render json: @api_v1_tabs
    else
      render json: @api_v1_tabs.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/tabs/1
  def destroy
    @api_v1_tabs.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_tabs
      @api_v1_tabs = Api::V1::Tab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_tab_params
      params.fetch(:api_v1_test, {})
    end
end
