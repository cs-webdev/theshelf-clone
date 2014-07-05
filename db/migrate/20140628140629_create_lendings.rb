class CreateLendings < ActiveRecord::Migration
  def change
    create_table :lendings do |t|
      t.date :borrow_date
      t.date :return_date

      t.references :user
      t.references :book

      t.timestamps
    end
  end
end
