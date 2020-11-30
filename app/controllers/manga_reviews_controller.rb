class MangaReviewsController < ApplicationController
  before_action :set_manga_review, only: [:show, :edit, :update, :destroy]

  # GET /manga_reviews
  # GET /manga_reviews.json
  def index
    @manga_reviews = MangaReview.all
  end

  # GET /manga_reviews/1
  # GET /manga_reviews/1.json
  def show
  end

  # GET /manga_reviews/new
  def new
    @manga_review = MangaReview.new
  end

  # GET /manga_reviews/1/edit
  def edit
  end

  # POST /manga_reviews
  # POST /manga_reviews.json
  def create
    @manga_review = MangaReview.new(manga_review_params)
    @manga_review.user_id = current_user.id

    respond_to do |format|
      if @manga_review.save
             url = "/mangas/" + @manga_review.manga_id.to_s
        format.html { redirect_to url, notice: 'Manga review was successfully created.' }
        format.json { render :show, status: :created, location: @manga_review }
      else
        format.html { render :new }
        format.json { render json: @manga_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manga_reviews/1
  # PATCH/PUT /manga_reviews/1.json
  def update
    respond_to do |format|
      if @manga_review.update(manga_review_params)
        format.html { redirect_to @manga_review, notice: 'Manga review was successfully updated.' }
        format.json { render :show, status: :ok, location: @manga_review }
      else
        format.html { render :edit }
        format.json { render json: @manga_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manga_reviews/1
  # DELETE /manga_reviews/1.json
  def destroy
    @manga_review.destroy
    respond_to do |format|
      format.html { redirect_to manga_reviews_url, notice: 'Manga review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manga_review
      @manga_review = MangaReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def manga_review_params
      params.require(:manga_review).permit(:user_id, :manga_id, :review)
    end
end
