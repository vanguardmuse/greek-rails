class AddFamilyToSemester < ActiveRecord::Migration
  def self.up
    change_table :semesters do |t|
      t.string  :family
    end
  end

  def self.down
    change_table :semesters do |t|
      t.remove  :family
    end
  end
end
