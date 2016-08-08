require 'test_helper'

class CollabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collab = collabs(:one)
  end

  test "should get index" do
    get collabs_url
    assert_response :success
  end

  test "should get new" do
    get new_collab_url
    assert_response :success
  end

  test "should create collab" do
    assert_difference('Collab.count') do
      post collabs_url, params: { collab: { description: @collab.description, photo_url: @collab.photo_url, title: @collab.title } }
    end

    assert_redirected_to collab_url(Collab.last)
  end

  test "should show collab" do
    get collab_url(@collab)
    assert_response :success
  end

  test "should get edit" do
    get edit_collab_url(@collab)
    assert_response :success
  end

  test "should update collab" do
    patch collab_url(@collab), params: { collab: { description: @collab.description, photo_url: @collab.photo_url, title: @collab.title } }
    assert_redirected_to collab_url(@collab)
  end

  test "should destroy collab" do
    assert_difference('Collab.count', -1) do
      delete collab_url(@collab)
    end

    assert_redirected_to collabs_url
  end
end
