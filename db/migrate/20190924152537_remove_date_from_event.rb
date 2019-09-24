class RemoveDateFromEvent < ActiveRecord::Migration[6.0]
  def change
    remove_column :quiz_events, :date, :date
  end
end
