require "application_system_test_case"

class DestLikesTest < ApplicationSystemTestCase
  setup do
    @dest_like = dest_likes(:one)
  end

  test "visiting the index" do
    visit dest_likes_url
    assert_selector "h1", text: "Dest Likes"
  end

  test "creating a Dest like" do
    visit dest_likes_url
    click_on "New Dest Like"

    fill_in "Destination", with: @dest_like.destination_id
    fill_in "Like", with: @dest_like.like_id
    click_on "Create Dest like"

    assert_text "Dest like was successfully created"
    click_on "Back"
  end

  test "updating a Dest like" do
    visit dest_likes_url
    click_on "Edit", match: :first

    fill_in "Destination", with: @dest_like.destination_id
    fill_in "Like", with: @dest_like.like_id
    click_on "Update Dest like"

    assert_text "Dest like was successfully updated"
    click_on "Back"
  end

  test "destroying a Dest like" do
    visit dest_likes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dest like was successfully destroyed"
  end
end
