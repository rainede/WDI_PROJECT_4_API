require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url, as: :json
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { agreeableness_big5: @post.agreeableness_big5, analytical: @post.analytical, anger: @post.anger, confident: @post.confident, conscientiousness_big5: @post.conscientiousness_big5, disgust: @post.disgust, emotional_range_big5: @post.emotional_range_big5, extraversion_big5: @post.extraversion_big5, fear: @post.fear, joy: @post.joy, openness_big5: @post.openness_big5, sadness: @post.sadness, tentative: @post.tentative, text: @post.text, user_id: @post.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show post" do
    get post_url(@post), as: :json
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { agreeableness_big5: @post.agreeableness_big5, analytical: @post.analytical, anger: @post.anger, confident: @post.confident, conscientiousness_big5: @post.conscientiousness_big5, disgust: @post.disgust, emotional_range_big5: @post.emotional_range_big5, extraversion_big5: @post.extraversion_big5, fear: @post.fear, joy: @post.joy, openness_big5: @post.openness_big5, sadness: @post.sadness, tentative: @post.tentative, text: @post.text, user_id: @post.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post), as: :json
    end

    assert_response 204
  end
end
