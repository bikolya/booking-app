class DeleteIdBookingsController < ApplicationController
  before_action :set_delete_id_booking, only: [:show, :edit, :update, :destroy]

  # GET /delete_id_bookings
  # GET /delete_id_bookings.json
  def index
    @delete_id_bookings = DeleteIdBooking.all
  end

  # GET /delete_id_bookings/1
  # GET /delete_id_bookings/1.json
  def show
  end

  # GET /delete_id_bookings/new
  def new
    @delete_id_booking = DeleteIdBooking.new
  end

  # GET /delete_id_bookings/1/edit
  def edit
  end

  # POST /delete_id_bookings
  # POST /delete_id_bookings.json
  def create
    @delete_id_booking = DeleteIdBooking.new(delete_id_booking_params)

    respond_to do |format|
      if @delete_id_booking.save
        format.html { redirect_to @delete_id_booking, notice: 'Delete id booking was successfully created.' }
        format.json { render action: 'show', status: :created, location: @delete_id_booking }
      else
        format.html { render action: 'new' }
        format.json { render json: @delete_id_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delete_id_bookings/1
  # PATCH/PUT /delete_id_bookings/1.json
  def update
    respond_to do |format|
      if @delete_id_booking.update(delete_id_booking_params)
        format.html { redirect_to @delete_id_booking, notice: 'Delete id booking was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @delete_id_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delete_id_bookings/1
  # DELETE /delete_id_bookings/1.json
  def destroy
    @delete_id_booking.destroy
    respond_to do |format|
      format.html { redirect_to delete_id_bookings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delete_id_booking
      @delete_id_booking = DeleteIdBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delete_id_booking_params
      params.require(:delete_id_booking).permit(:country_id, :flight_id, :hotel_id)
    end
end
