require "application_system_test_case"

class TvShowsTest < ApplicationSystemTestCase
  setup do
    @tv_show = tv_shows(:one)
  end

  test "visiting the index" do
    visit tv_shows_url
    assert_selector "h1", text: "Tv Shows"
  end

  test "creating a Tv show" do
    visit tv_shows_url
    click_on "New Tv Show"

    fill_in "Category", with: @tv_show.category
    fill_in "Description", with: @tv_show.description
    fill_in "Image Url", with: @tv_show.image_url
    fill_in "Ranking", with: @tv_show.ranking
    fill_in "Title", with: @tv_show.title
    click_on "Create Tv show"

    assert_text "Tv show was successfully created"
    click_on "Back"
  end

  test "updating a Tv show" do
    visit tv_shows_url
    click_on "Edit", match: :first

    fill_in "Category", with: @tv_show.category
    fill_in "Description", with: @tv_show.description
    fill_in "Image Url", with: @tv_show.image_url
    fill_in "Ranking", with: @tv_show.ranking
    fill_in "Title", with: @tv_show.title
    click_on "Update Tv show"

    assert_text "Tv show was successfully updated"
    click_on "Back"
  end

  test "destroying a Tv show" do
    visit tv_shows_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tv show was successfully destroyed"
  end
end
