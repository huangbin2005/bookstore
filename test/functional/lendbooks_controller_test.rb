require 'test_helper'

class LendbooksControllerTest < ActionController::TestCase
  setup do
    @lendbook = lendbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lendbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lendbook" do
    assert_difference('Lendbook.count') do
      post :create, lendbook: { date: @lendbook.date, lend: @lendbook.lend, returndate: @lendbook.returndate }
    end

    assert_redirected_to lendbook_path(assigns(:lendbook))
  end

  test "should show lendbook" do
    get :show, id: @lendbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lendbook
    assert_response :success
  end

  test "should update lendbook" do
    put :update, id: @lendbook, lendbook: { date: @lendbook.date, lend: @lendbook.lend, returndate: @lendbook.returndate }
    assert_redirected_to lendbook_path(assigns(:lendbook))
  end

  test "should destroy lendbook" do
    assert_difference('Lendbook.count', -1) do
      delete :destroy, id: @lendbook
    end

    assert_redirected_to lendbooks_path
  end
end
