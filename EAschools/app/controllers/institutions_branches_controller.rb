class InstitutionsBranchesController < ApplicationController
  before_action :set_institutions_branch, only: [:show, :edit, :update, :destroy]

  # GET /institutions_branches
  # GET /institutions_branches.json
  def index
    @institutions_branches = InstitutionsBranch.all
  end

  # GET /institutions_branches/1
  # GET /institutions_branches/1.json
  def show
  end

  # GET /institutions_branches/new
  def new
    @institutions_branch = InstitutionsBranch.new
  end

  # GET /institutions_branches/1/edit
  def edit
  end

  # POST /institutions_branches
  # POST /institutions_branches.json
  def create
    @institutions_branch = InstitutionsBranch.new(institutions_branch_params)

    respond_to do |format|
      if @institutions_branch.save
        format.html { redirect_to @institutions_branch, notice: 'Institutions branch was successfully created.' }
        format.json { render action: 'show', status: :created, location: @institutions_branch }
      else
        format.html { render action: 'new' }
        format.json { render json: @institutions_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /institutions_branches/1
  # PATCH/PUT /institutions_branches/1.json
  def update
    respond_to do |format|
      if @institutions_branch.update(institutions_branch_params)
        format.html { redirect_to @institutions_branch, notice: 'Institutions branch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @institutions_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institutions_branches/1
  # DELETE /institutions_branches/1.json
  def destroy
    @institutions_branch.destroy
    respond_to do |format|
      format.html { redirect_to institutions_branches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institutions_branch
      @institutions_branch = InstitutionsBranch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def institutions_branch_params
      params.require(:institutions_branch).permit(:address_1, :address_2, :state, :country, :zip_code, :institution_id, :land_mark, :status)
    end
end
