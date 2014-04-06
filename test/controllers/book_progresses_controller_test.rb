require 'test_helper'

class BookProgressesControllerTest < ActionController::TestCase
  setup do
    @book_progress = book_progresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_progresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_progress" do
    assert_difference('BookProgress.count') do
      post :create, book_progress: { book_id: @book_progress.book_id, date: @book_progress.date, percent: @book_progress.percent }
    end

    assert_redirected_to book_progress_path(assigns(:book_progress))
  end

  test "should show book_progress" do
    get :show, id: @book_progress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_progress
    assert_response :success
  end

  test "should update book_progress" do
    patch :update, id: @book_progress, book_progress: { book_id: @book_progress.book_id, date: @book_progress.date, percent: @book_progress.percent }
    assert_redirected_to book_progress_path(assigns(:book_progress))
  end

  test "should destroy book_progress" do
    assert_difference('BookProgress.count', -1) do
      delete :destroy, id: @book_progress
    end

    assert_redirected_to book_progresses_path
  end
end
