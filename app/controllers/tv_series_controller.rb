class TvSeriesController < ApplicationController
  before_action :set_tv_series, only: [:show, :edit, :update, :destroy, :add_date]

  def add_date
    
  end

  # GET /tv_series
  # GET /tv_series.json
  def index
    @tv_series = TvSeries.all
  end

  # GET /tv_series/1
  # GET /tv_series/1.json
  def show
  end

  # GET /tv_series/new
  def new
    @tv_series = TvSeries.new
  end

  # GET /tv_series/1/edit
  def edit
  end

  # POST /tv_series
  # POST /tv_series.json
  def create
    @tv_series = TvSeries.new(tv_series_params)

    respond_to do |format|
      if @tv_series.save
        format.html { redirect_to @tv_series, notice: 'Tv series was successfully created.' }
        format.json { render :show, status: :created, location: @tv_series }
      else
        format.html { render :new }
        format.json { render json: @tv_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tv_series/1
  # PATCH/PUT /tv_series/1.json
  def update
    respond_to do |format|
      if @tv_series.update(tv_series_params)
        format.html { redirect_to @tv_series, notice: 'Tv series was successfully updated.' }
        format.json { render :show, status: :ok, location: @tv_series }
      else
        format.html { render :edit }
        format.json { render json: @tv_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tv_series/1
  # DELETE /tv_series/1.json
  def destroy
    @tv_series.destroy
    respond_to do |format|
      format.html { redirect_to tv_series_index_url, notice: 'Tv series was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tv_series
      @tv_series = TvSeries.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tv_series_params
      params.fetch(:tv_series, {}).permit(:name, :season, :episode, :next_episode_date)
    end
end
