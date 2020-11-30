require 'test_helper'

class MangaReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manga_review = manga_reviews(:one)
  end

  test "should get index" do
    get manga_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_manga_review_url
    assert_response :success
  end

  test "should create manga_review" do
    assert_difference('MangaReview.count') do
      post manga_reviews_url, params: { manga_review: { manga_id: @manga_review.manga_id, review: @manga_review.review, user_id: @manga_review.user_id } }
    end

    assert_redirected_to manga_review_url(MangaReview.last)
  end

  test "should show manga_review" do
    get manga_review_url(@manga_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_manga_review_url(@manga_review)
    assert_response :success
  end

  test "should update manga_review" do
    patch manga_review_url(@manga_review), params: { manga_review: { manga_id: @manga_review.manga_id, review: @manga_review.review, user_id: @manga_review.user_id } }
    assert_redirected_to manga_review_url(@manga_review)
  end

  test "should destroy manga_review" do
    assert_difference('MangaReview.count', -1) do
      delete manga_review_url(@manga_review)
    end

    assert_redirected_to manga_reviews_url
  end
end
