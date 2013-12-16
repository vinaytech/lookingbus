class InstitutionAppPagesSectionsController < ApplicationController
  before_action :set_institution_app_pages_section, only: [:show, :edit, :update, :destroy]

  # GET /institution_app_pages_sections
  # GET /institution_app_pages_sections.json
  def index
    @institution_app_pages_sections = InstitutionAppPagesSection.all
  end

  # GET /institution_app_pages_sections/1
  # GET /institution_app_pages_sections/1.json
  def show
  end

  # GET /institution_app_pages_sections/new
  def new
    @institution_app_pages_section = InstitutionAppPagesSection.new
  end

  # GET /institution_app_pages_sections/1/edit
  def edit
  end

  # POST /institution_app_pages_sections
  # POST /institution_app_pages_sections.json
  def create
    @institution_app_pages_section = InstitutionAppPagesSection.new(institution_app_pages_section_params)

    respond_to do |format|
      if @institution_app_pages_section.save
        format.html { redirect_to @institution_app_pages_section, notice: 'Institution app pages section was successfully created.' }
        format.json { render action: 'show', status: :created, location: @institution_app_pages_section }
      else
        format.html { render action: 'new' }
        format.json { render json: @institution_app_pages_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /institution_app_pages_sections/1
  # PATCH/PUT /institution_app_pages_sections/1.json
  def update
    respond_to do |format|
      if @institution_app_pages_section.update(institution_app_pages_section_params)
        format.html { redirect_to @institution_app_pages_section, notice: 'Institution app pages section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @institution_app_pages_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institution_app_pages_sections/1
  # DELETE /institution_app_pages_sections/1.json
  def destroy
    @institution_app_pages_section.destroy
    respond_to do |format|
      format.html { redirect_to institution_app_pages_sections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institution_app_pages_section
      @institution_app_pages_section = InstitutionAppPagesSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def institution_app_pages_section_params
      params.require(:institution_app_pages_section).permit(:institution_app_pages_id, :head_name, :body_text)
    end
end
