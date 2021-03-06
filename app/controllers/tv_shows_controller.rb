class TvShowsController < ApplicationController
  before_action :set_tv_show, only: [:show, :edit, :update, :destroy, :vote]

  # GET /tv_shows
  # GET /tv_shows.json
  def index
    @tv_shows = TvShow.all
  end

  # GET /tv_shows/1
  # GET /tv_shows/1.json
  def show
  end

  # GET /tv_shows/new
  def new
    @tv_show = TvShow.new
  end

  # GET /tv_shows/1/edit
  def edit
  end

  # POST /tv_shows
  # POST /tv_shows.json
  def create
    @tv_show = TvShow.new(tv_show_params)

    respond_to do |format|
      if @tv_show.save
        format.html { redirect_to @tv_show, notice: 'Tv show was successfully created.' }
        format.json { render :show, status: :created, location: @tv_show }
      else
        format.html { render :new }
        format.json { render json: @tv_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tv_shows/1
  # PATCH/PUT /tv_shows/1.json
  def update
    respond_to do |format|
      if @tv_show.update(tv_show_params)
        format.html { redirect_to @tv_show, notice: 'Tv show was successfully updated.' }
        format.json { render :show, status: :ok, location: @tv_show }
      else
        format.html { render :edit }
        format.json { render json: @tv_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tv_shows/1
  # DELETE /tv_shows/1.json
  def destroy
    @tv_show.destroy
    respond_to do |format|
      format.html { redirect_to tv_shows_url, notice: 'Tv show was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def vote
    user_evaluation = params[:ranking_vote][:evaluation]
    ranking_vote = @tv_show.ranking_votes.create(
      email: nil,
      ip: request.ip,
      evaluation: user_evaluation
    )
    if ranking_vote.persisted?
      session["votes_#{@tv_show.id}"] = user_evaluation
      redirect_to tv_show_url(@tv_show), notice: 'Votacion almacenada'
    else
      render 'show', alert: 'Error al almacenar tu voto. Favor reintenta.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tv_show
      @tv_show = TvShow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tv_show_params
      params.require(:tv_show).permit(:category, :description, :image_url, :ranking, :title)
    end
end
