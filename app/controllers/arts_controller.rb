class ArtsController < ApplicationController
  before_action :set_art, only: [:show, :edit, :update, :destroy]

  # GET /arts
  # GET /arts.json
  def index
    @arts = Art.all
  end

  # GET /arts/1
  # GET /arts/1.json
  def show
    @artist = Artist.find(params[:artist_id])

  end

  # GET /arts/new
  def new
    @artist = Artist.find(params[:artist_id])
    @art = Art.new
  end

  # GET /arts/1/edit
  def edit
    @artist = Artist.find(params[:artist_id])
    @art = Art.find(params[:id])
  end

  # POST /arts
  # POST /arts.json
  def create
    @artist = Artist.find(params[:artist_id])
    @art = @artist.arts.create(art_params)

    respond_to do |format|
      if @art.save
        format.html { redirect_to (@artist), notice: 'Art was successfully created.' }
        format.json { render :show, status: :created, location: @art }
      else
        format.html { render :new }
        format.json { render json: @art.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /arts/1
  # PATCH/PUT /arts/1.json
  def update
    @artist = Artist.find(params[:artist_id])
    @art = Art.find(params[:id])
    respond_to do |format|
      if @art.update(art_params)
        format.html { redirect_to artist_art_path, notice: 'Art was successfully updated.' }
        format.json { render :show, status: :ok, location: @art }
      else
        format.html { render :edit }
        format.json { render json: @art.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arts/1
  # DELETE /arts/1.json
  def destroy
    @artist = Artist.find(params[:artist_id])
    @art = Art.find(params[:id])
    @art.destroy
    respond_to do |format|
      format.html { redirect_to @artist, notice: 'Art was successfully destroyed.' }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art
      @art = Art.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def art_params
      params.require(:art).permit(:name, :description, :photo_url, :artist_id)
    end
end
