class SupportBundlesController < ApplicationController
  before_action :set_support_bundle, only: [:show, :edit, :update, :destroy]

  # GET /support_bundles
  # GET /support_bundles.json
  def index
    @support_bundles = SupportBundle.all
  end

  # GET /support_bundles/1
  # GET /support_bundles/1.json
  def show
  end

  # GET /support_bundles/new
  def new
    @support_bundle = SupportBundle.new
  end

  # GET /support_bundles/1/edit
  def edit
  end

  # POST /support_bundles
  # POST /support_bundles.json
  def create
    @support_bundle = SupportBundle.new(support_bundle_params)

    respond_to do |format|
      if @support_bundle.save
        format.html { redirect_to @support_bundle, notice: 'Support bundle was successfully created.' }
        format.json { render action: 'show', status: :created, location: @support_bundle }
      else
        format.html { render action: 'new' }
        format.json { render json: @support_bundle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /support_bundles/1
  # PATCH/PUT /support_bundles/1.json
  def update
    respond_to do |format|
      if @support_bundle.update(support_bundle_params)
        format.html { redirect_to @support_bundle, notice: 'Support bundle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @support_bundle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /support_bundles/1
  # DELETE /support_bundles/1.json
  def destroy
    @support_bundle.destroy
    respond_to do |format|
      format.html { redirect_to support_bundles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_bundle
      @support_bundle = SupportBundle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def support_bundle_params
      params.require(:support_bundle).permit(:uid, :date_uploaded, :date_created, :company, :model, :error_type, :environment, :unit_type, :firmware)
    end
end
