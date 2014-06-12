require 'test_helper'

class DeleteIdBookingsControllerTest < ActionController::TestCase
  setup do
    @delete_id_booking = delete_id_bookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delete_id_bookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delete_id_booking" do
    assert_difference('DeleteIdBooking.count') do
      post :create, delete_id_booking: { country_id: @delete_id_booking.country_id, flight_id: @delete_id_booking.flight_id, hotel_id: @delete_id_booking.hotel_id }
    end

    assert_redirected_to delete_id_booking_path(assigns(:delete_id_booking))
  end

  test "should show delete_id_booking" do
    get :show, id: @delete_id_booking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delete_id_booking
    assert_response :success
  end

  test "should update delete_id_booking" do
    patch :update, id: @delete_id_booking, delete_id_booking: { country_id: @delete_id_booking.country_id, flight_id: @delete_id_booking.flight_id, hotel_id: @delete_id_booking.hotel_id }
    assert_redirected_to delete_id_booking_path(assigns(:delete_id_booking))
  end

  test "should destroy delete_id_booking" do
    assert_difference('DeleteIdBooking.count', -1) do
      delete :destroy, id: @delete_id_booking
    end

    assert_redirected_to delete_id_bookings_path
  end
end
