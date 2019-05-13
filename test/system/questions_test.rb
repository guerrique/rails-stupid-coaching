require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end
  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "asking for a smoke yields a grumpy response from the coach" do
  visit ask_url
  fill_in "question", with: "Can I have one of your cigarettes?"
  click_on "Ask"
  take_screenshot

    assert_text "Silly question, get dressed and go to work!"
  end

  test "good behavior gets good results" do
  visit ask_url
  fill_in "question", with: "I am going to work right now!"
  click_on "Ask"

    assert_text "Great!"
  end
end
