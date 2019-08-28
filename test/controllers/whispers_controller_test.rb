require 'test_helper'

class WhispersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @whisper = whispers(:one)
  end

  test "should get index" do
    get whispers_url
    assert_response :success
  end

  test "should get new" do
    get new_whisper_url
    assert_response :success
  end

  test "should create whisper" do
    assert_difference('Whisper.count') do
      post whispers_url, params: { whisper: { content: @whisper.content } }
    end

    assert_redirected_to whisper_url(Whisper.last)
  end

  test "should show whisper" do
    get whisper_url(@whisper)
    assert_response :success
  end

  test "should get edit" do
    get edit_whisper_url(@whisper)
    assert_response :success
  end

  test "should update whisper" do
    patch whisper_url(@whisper), params: { whisper: { content: @whisper.content } }
    assert_redirected_to whisper_url(@whisper)
  end

  test "should destroy whisper" do
    assert_difference('Whisper.count', -1) do
      delete whisper_url(@whisper)
    end

    assert_redirected_to whispers_url
  end
end
