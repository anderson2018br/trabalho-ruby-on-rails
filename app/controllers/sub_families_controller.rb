class SubFamiliesController < ApplicationController
  before_action :set_sub_family, only: [:show, :edit, :update, :destroy]

  # GET /sub_families
  # GET /sub_families.json
  def index
    @sub_families = SubFamily.all
  end

  # GET /sub_families/1
  # GET /sub_families/1.json
  def show
  end

  # GET /sub_families/new
  def new
    @sub_family = SubFamily.new
  end

  # GET /sub_families/1/edit
  def edit
  end

  # POST /sub_families
  # POST /sub_families.json
  def create
    @sub_family = SubFamily.new(sub_family_params)

    respond_to do |format|
      if @sub_family.save
        format.html { redirect_to @sub_family, notice: 'Sub familia foi criada.' }
        format.json { render :show, status: :created, location: @sub_family }
      else
        format.html { render :new }
        format.json { render json: @sub_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_families/1
  # PATCH/PUT /sub_families/1.json
  def update
    respond_to do |format|
      if @sub_family.update(sub_family_params)
        format.html { redirect_to @sub_family, notice: 'Sub família foi atualizada.' }
        format.json { render :show, status: :ok, location: @sub_family }
      else
        format.html { render :edit }
        format.json { render json: @sub_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_families/1
  # DELETE /sub_families/1.json
  def destroy
    genus = Genu.all;
    genus.each do |genu|
        if(genu.sub_family_id == @sub_family.id)
            genu.destroy
            end
    end
    @sub_family.destroy
    respond_to do |format|
      format.html { redirect_to sub_families_url, notice: 'Sub família foi deletada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_family
      @sub_family = SubFamily.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_family_params
      params.require(:sub_family).permit(:name, :created_at, :updated_at)
    end
end
