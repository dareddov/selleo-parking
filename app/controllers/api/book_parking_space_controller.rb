module Api
  class BookParkingSpaceController < SecuredController
    def create
      Booking.create(booking_params)
      head :ok
    end

    private

    def booking_params
      params.require(:book_parking_space).permit(:user_id, :parking_space_id, :date)
    end
  end
end