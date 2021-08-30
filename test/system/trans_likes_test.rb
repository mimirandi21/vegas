require "application_system_test_case"

class TransLikesTest < ApplicationSystemTestCase
  setup do
    @trans_like = trans_likes(:one)
  end

  test "visiting the index" do
    visit trans_likes_url
    assert_selector "h1", text: "Trans Likes"
  end

  test "creating a Trans like" do
    visit trans_likes_url
    click_on "New Trans Like"

    fill_in "Like", with: @trans_like.like_id
    fill_in "Transportation", with: @trans_like.transportation_id
    click_on "Create Trans like"

    assert_text "Trans like was successfully created"
    click_on "Back"
  end

  test "updating a Trans like" do
    visit trans_likes_url
    click_on "Edit", match: :first

    fill_in "Like", with: @trans_like.like_id
    fill_in "Transportation", with: @trans_like.transportation_id
    click_on "Update Trans like"

    assert_text "Trans like was successfully updated"
    click_on "Back"
  end

  test "destroying a Trans like" do
    visit trans_likes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trans like was successfully destroyed"
  end
end
