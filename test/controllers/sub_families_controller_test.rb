require 'test_helper'

class SubFamiliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_family = sub_families(:one)
  end

  test "should get index" do
    get sub_families_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_family_url
    assert_response :success
  end

  test "should create sub_family" do
    assert_difference('SubFamily.count') do
      post sub_families_url, params: { sub_family: { created_at: @sub_family.created_at, name: @sub_family.name, updated_at: @sub_family.updated_at } }
    end

    assert_redirected_to sub_family_url(SubFamily.last)
  end

  test "should show sub_family" do
    get sub_family_url(@sub_family)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_family_url(@sub_family)
    assert_response :success
  end

  test "should update sub_family" do
    patch sub_family_url(@sub_family), params: { sub_family: { created_at: @sub_family.created_at, name: @sub_family.name, updated_at: @sub_family.updated_at } }
    assert_redirected_to sub_family_url(@sub_family)
  end

  test "should destroy sub_family" do
    assert_difference('SubFamily.count', -1) do
      delete sub_family_url(@sub_family)
    end

    assert_redirected_to sub_families_url
  end
end
