class GenusNotesController < ApplicationController
  before_action :set_genus_note, only: [:show, :edit, :update, :destroy]

  # GET /genus_notes
  # GET /genus_notes.json
  def index
    @genus = Genu.all
    @genus_notes = GenusNote.all
  end

  # GET /genus_notes/1
  # GET /genus_notes/1.json
  def show
  @genus = Genu.all
  end

  # GET /genus_notes/new
  def new
    @genus = Genu.all
    @genus_note = GenusNote.new
  end

  # GET /genus_notes/1/edit
  def edit
  @genus = Genu.all
  end

  # POST /genus_notes
  # POST /genus_notes.json
  def create
    @genus = Genu.all
    @genus_note = GenusNote.new(genus_note_params)

    respond_to do |format|
      if @genus_note.save
        format.html { redirect_to @genus_note, notice: 'Nota Criada.' }
        format.json { render :show, status: :created, location: @genus_note }
      else
        format.html { render :new }
        format.json { render json: @genus_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genus_notes/1
  # PATCH/PUT /genus_notes/1.json
  def update
    @genus = Genu.all
    respond_to do |format|
      if @genus_note.update(genus_note_params)
        format.html { redirect_to @genus_note, notice: 'Nota Atualizada' }
        format.json { render :show, status: :ok, location: @genus_note }
      else
        format.html { render :edit }
        format.json { render json: @genus_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genus_notes/1
  # DELETE /genus_notes/1.json
  def destroy
    @genus = Genu.all
    @genus_note.destroy
    respond_to do |format|
      format.html { redirect_to genus_notes_url, notice: 'Nota Deletada' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genus_note
      @genus_note = GenusNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genus_note_params
      params.require(:genus_note).permit(:genus_id, :user_avatar_filename, :note, :created_at, :updated_at)
    end
end
