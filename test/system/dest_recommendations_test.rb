require "application_system_test_case"

class DestRecommendationsTest < ApplicationSystemTestCase
  setup do
    @dest_recommendation = dest_recommendations(:one)
  end

  test "visiting the index" do
    visit dest_recommendations_url
    assert_selector "h1", text: "Dest Recommendations"
  end

  test "creating a Dest recommendation" do
    visit dest_recommendations_url
    click_on "New Dest Recommendation"

    fill_in "Destination", with: @dest_recommendation.destination_id
    fill_in "Recommendation", with: @dest_recommendation.recommendation_id
    click_on "Create Dest recommendation"

    assert_text "Dest recommendation was successfully created"
    click_on "Back"
  end

  test "updating a Dest recommendation" do
    visit dest_recommendations_url
    click_on "Edit", match: :first

    fill_in "Destination", with: @dest_recommendation.destination_id
    fill_in "Recommendation", with: @dest_recommendation.recommendation_id
    click_on "Update Dest recommendation"

    assert_text "Dest recommendation was successfully updated"
    click_on "Back"
  end

  test "destroying a Dest recommendation" do
    visit dest_recommendations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dest recommendation was successfully destroyed"
  end
end
