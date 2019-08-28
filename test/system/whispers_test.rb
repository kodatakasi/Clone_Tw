require "application_system_test_case"

class WhispersTest < ApplicationSystemTestCase
  setup do
    @whisper = whispers(:one)
  end

  test "visiting the index" do
    visit whispers_url
    assert_selector "h1", text: "Whispers"
  end

  test "creating a Whisper" do
    visit whispers_url
    click_on "New Whisper"

    fill_in "Content", with: @whisper.content
    click_on "Create Whisper"

    assert_text "Whisper was successfully created"
    click_on "Back"
  end

  test "updating a Whisper" do
    visit whispers_url
    click_on "Edit", match: :first

    fill_in "Content", with: @whisper.content
    click_on "Update Whisper"

    assert_text "Whisper was successfully updated"
    click_on "Back"
  end

  test "destroying a Whisper" do
    visit whispers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Whisper was successfully destroyed"
  end
end
