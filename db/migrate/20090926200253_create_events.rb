class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.timestamp :date
      t.string    :location
      t.string    :title
      t.string    :summary
      t.text      :description
      t.integer   :user_id
      t.boolean   :internal
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
