class AddBookingDateToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :booking_date, :date
  end
end
