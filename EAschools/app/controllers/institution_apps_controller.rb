class InstitutionAppsController < ApplicationController
  before_action :set_institution_app, only: [:show, :edit, :update, :destroy]

  # GET /institution_apps
  # GET /institution_apps.json
  def index
    @institution_apps = InstitutionApp.all
  end

  # GET /institution_apps/1
  # GET /institution_apps/1.json
  def show
  end

  # GET /institution_apps/new
  def new
    @institution_app = InstitutionApp.new
  end

  # GET /institution_apps/1/edit
  def edit
  end

  # POST /institution_apps
  # POST /institution_apps.json
  def create
    @institution_app = InstitutionApp.new(institution_app_params)

    respond_to do |format|
      if @institution_app.save
        format.html { redirect_to @institution_app, notice: 'Institution app was successfully created.' }
        format.json { render action: 'show', status: :created, location: @institution_app }
      else
        format.html { render action: 'new' }
        format.json { render json: @institution_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /institution_apps/1
  # PATCH/PUT /institution_apps/1.json
  def update
    respond_to do |format|
      if @institution_app.update(institution_app_params)
        format.html { redirect_to @institution_app, notice: 'Institution app was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @institution_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institution_apps/1
  # DELETE /institution_apps/1.json
  def destroy
    @institution_app.destroy
    respond_to do |format|
      format.html { redirect_to institution_apps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institution_app
      @institution_app = InstitutionApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def institution_app_params
      params.require(:institution_app).permit(:institution_id, :name, :splash_screen_image, :splash_screen_url, :splash_screen_text, :splash_screen_slogans, :google_url, :app_logo, :app_logo_text, :app_logo_url)
    end
end
