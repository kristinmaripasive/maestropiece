class MusicsController < ApplicationController
  before_action :set_music, only: [:show, :edit, :update, :destroy]

  # GET /musics
  # GET /musics.json
  def index
    @musics = Music.all
  end

  # GET /musics/1
  # GET /musics/1.json
  def show
    @musician = Musician.find(params[:musician_id])
  end

  # GET /musics/new
  def new
    @musician = Musician.find(params[:musician_id])
    @music = Music.new
  end

  # GET /musics/1/edit
  def edit
    @musician = Musician.find(params[:musician_id])
    @music = Music.find(params[:id])
  end

  # POST /musics
  # POST /musics.json
  def create
    @musician = Musician.find(params[:musician_id])
    @music = @musician.musics.create(music_params)

    respond_to do |format|
      if @music.save
        format.html { redirect_to (@musician), notice: 'Music was successfully created.' }
        format.json { render :show, status: :created, location: @music }
      else
        format.html { render :new }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musics/1
  # PATCH/PUT /musics/1.json
  def update
    @musician = Musician.find(params[:musician_id])
    @music = Music.find(params[:id])
    respond_to do |format|
      if @music.update(music_params)
        format.html { redirect_to musician_music_path, notice: 'Music was successfully updated.' }
        format.json { render :show, status: :ok, location: @music }
      else
        format.html { render :edit }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musics/1
  # DELETE /musics/1.json
  def destroy
    @musician = Musician.find(params[:musician_id])
    @music = Music.find(params[:id])
    @music.destroy
    respond_to do |format|
      format.html { redirect_to @musician, notice: 'Music was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music
      @music = Music.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def music_params
      params.require(:music).permit(:name, :description, :photo_url, :preview_url, :musician_id)
    end
end
