require "application_system_test_case"

class MangaReviewsTest < ApplicationSystemTestCase
  setup do
    @manga_review = manga_reviews(:one)
  end

  test "visiting the index" do
    visit manga_reviews_url
    assert_selector "h1", text: "Manga Reviews"
  end

  test "creating a Manga review" do
    visit manga_reviews_url
    click_on "New Manga Review"

    fill_in "Manga", with: @manga_review.manga_id
    fill_in "Review", with: @manga_review.review
    fill_in "User", with: @manga_review.user_id
    click_on "Create Manga review"

    assert_text "Manga review was successfully created"
    click_on "Back"
  end

  test "updating a Manga review" do
    visit manga_reviews_url
    click_on "Edit", match: :first

    fill_in "Manga", with: @manga_review.manga_id
    fill_in "Review", with: @manga_review.review
    fill_in "User", with: @manga_review.user_id
    click_on "Update Manga review"

    assert_text "Manga review was successfully updated"
    click_on "Back"
  end

  test "destroying a Manga review" do
    visit manga_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manga review was successfully destroyed"
  end
end
