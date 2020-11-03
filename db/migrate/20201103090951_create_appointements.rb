class CreateAppointements < ActiveRecord::Migration[6.0]
  def change
    create_table :appointements do |t|
      t.string :city
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
