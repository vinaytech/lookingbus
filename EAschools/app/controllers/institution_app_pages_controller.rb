class InstitutionAppPagesController < ApplicationController
  before_action :set_institution_app_page, only: [:show, :edit, :update, :destroy]

  # GET /institution_app_pages
  # GET /institution_app_pages.json
  def index
    @institution_app_pages = InstitutionAppPage.all
  end

  # GET /institution_app_pages/1
  # GET /institution_app_pages/1.json
  def show
  end

  # GET /institution_app_pages/new
  def new
    @institution_app_page = InstitutionAppPage.new
  end

  # GET /institution_app_pages/1/edit
  def edit
  end

  # POST /institution_app_pages
  # POST /institution_app_pages.json
  def create
    @institution_app_page = InstitutionAppPage.new(institution_app_page_params)

    respond_to do |format|
      if @institution_app_page.save
        format.html { redirect_to @institution_app_page, notice: 'Institution app page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @institution_app_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @institution_app_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /institution_app_pages/1
  # PATCH/PUT /institution_app_pages/1.json
  def update
    respond_to do |format|
      if @institution_app_page.update(institution_app_page_params)
        format.html { redirect_to @institution_app_page, notice: 'Institution app page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @institution_app_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institution_app_pages/1
  # DELETE /institution_app_pages/1.json
  def destroy
    @institution_app_page.destroy
    respond_to do |format|
      format.html { redirect_to institution_app_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institution_app_page
      @institution_app_page = InstitutionAppPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def institution_app_page_params
      params.require(:institution_app_page).permit(:institution_app_id, :name, :url)
    end
end
