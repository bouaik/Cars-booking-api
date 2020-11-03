class AddUserIdAndCarIdToAppointements < ActiveRecord::Migration[6.0]
  def change
    add_column :appointements, :user_id, :integer, null: false, foreign_key: true
    add_column :appointements, :car_id, :integer, null: false, foreign_key: true
  end
end
