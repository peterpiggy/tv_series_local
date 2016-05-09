require 'test_helper'

class TvSeriesControllerTest < ActionController::TestCase
  setup do
    @tv_series = tv_series(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tv_series)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tv_series" do
    assert_difference('TvSeries.count') do
      post :create, tv_series: {  }
    end

    assert_redirected_to tv_series_path(assigns(:tv_series))
  end

  test "should show tv_series" do
    get :show, id: @tv_series
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tv_series
    assert_response :success
  end

  test "should update tv_series" do
    patch :update, id: @tv_series, tv_series: {  }
    assert_redirected_to tv_series_path(assigns(:tv_series))
  end

  test "should destroy tv_series" do
    assert_difference('TvSeries.count', -1) do
      delete :destroy, id: @tv_series
    end

    assert_redirected_to tv_series_index_path
  end
end
