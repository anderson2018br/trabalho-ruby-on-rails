class GenusController < ApplicationController
  before_action :set_genu, only: [:show, :edit, :update, :destroy]


  # GET /genus
  # GET /genus.json
  def index
    @genus = Genu.all
    @sub_family = SubFamily.all
  end

  # GET /genus/1
  # GET /genus/1.json
  def show
  @sub_family = SubFamily.all
  @notes = GenusNote.all
  end

  # GET /genus/new
  def new
    @genu = Genu.new
    @sub_family = SubFamily.all
  end

  # GET /genus/1/edit
  def edit
      @sub_family = SubFamily.all
  end

  # POST /genus
  # POST /genus.json
  def create
    @genu = Genu.new(genu_params)
    @sub_family = SubFamily.all

    respond_to do |format|
      if @genu.save
        format.html { redirect_to @genu, notice: 'Genus Criado.' }
        format.json { render :show, status: :created, location: @genu }
      else
        format.html { render :new }
        format.json { render json: @genu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genus/1
  # PATCH/PUT /genus/1.json
  def update
    @sub_family = SubFamily.all
    respond_to do |format|
      if @genu.update(genu_params)
        format.html { redirect_to @genu, notice: 'Genus Atualizado.' }
        format.json { render :show, status: :ok, location: @genu }
      else
        format.html { render :edit }
        format.json { render json: @genu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genus/1
  # DELETE /genus/1.json
  def destroy
    @sub_family = SubFamily.all
    @genu.destroy
    respond_to do |format|
      format.html { redirect_to genus_url, notice: 'Genus Deletado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genu
      @genu = Genu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genu_params
      params.require(:genu).permit(:name, :sub_family_id, :species_count, :is_published, :first_discovered_at, :fun_fact, :created_at, :updated_at)
    end
end
