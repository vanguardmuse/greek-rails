class AddClassToSemester < ActiveRecord::Migration
  def self.up
    change_table :semesters do |t|
      t.string  :class
    end
  end

  def self.down
    change_table :semesters do |t|
      t.remove  :class
    end
  end
end
