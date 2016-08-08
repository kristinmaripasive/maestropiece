class CollabsController < ApplicationController
  before_action :set_collab, only: [:show, :edit, :update, :destroy]

  # GET /collabs
  # GET /collabs.json
  def index
    @collabs = Collab.all
  end

  # GET /collabs/1
  # GET /collabs/1.json
  def show
    @artists = Artist.find(@collab.artist_id)
    @musicians = Musician.find(@collab.musician_id)
  end

  # GET /collabs/new
  def new
    @collab = Collab.new
    @artists = Artist.all
    @musicians = Musician.all
  end

  # GET /collabs/1/edit
  def edit
    @artists = Artist.all
    @musicians = Musician.all
  end

  # POST /collabs
  # POST /collabs.json
  def create
    @collab = Collab.new(collab_params)
    @artists = Artist.all
    @musicians = Musician.all

    respond_to do |format|
      if @collab.save
        format.html { redirect_to @collab, notice: 'Collab was successfully created.' }
        format.json { render :show, status: :created, location: @collab }
      else
        format.html { render :new }
        format.json { render json: @collab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collabs/1
  # PATCH/PUT /collabs/1.json
  def update

    respond_to do |format|
      if @collab.update(collab_params)
        format.html { redirect_to @collab, notice: 'Collab was successfully updated.' }
        format.json { render :show, status: :ok, location: @collab }
      else
        format.html { render :edit }
        format.json { render json: @collab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collabs/1
  # DELETE /collabs/1.json
  def destroy
    @collab.destroy
    respond_to do |format|
      format.html { redirect_to collabs_url, notice: 'Collab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collab
      @collab = Collab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collab_params
      params.require(:collab).permit(:title, :description, :photo_url, :artist_id, :musician_id)
    end

end
