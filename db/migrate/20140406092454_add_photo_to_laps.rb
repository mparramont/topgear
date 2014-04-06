class AddPhotoToLaps < ActiveRecord::Migration
  def self.up
    add_attachment :laps, :photo
  end

  def self.down
    remove_attachment :laps, :photo
  end
end
