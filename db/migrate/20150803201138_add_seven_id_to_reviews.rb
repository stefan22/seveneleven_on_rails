class AddSevenIdToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :seven, index: true, foreign_key: true
  end
end
