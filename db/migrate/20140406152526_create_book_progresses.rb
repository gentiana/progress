class CreateBookProgresses < ActiveRecord::Migration
  def change
    create_table :book_progresses do |t|
      t.integer :percent
      t.integer :book_id
      t.datetime :date

      t.timestamps
    end
  end
end
