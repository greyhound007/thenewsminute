class AddImageToRefineryElections < ActiveRecord::Migration
  def change
    add_column :refinery_elections, :image, :image
  end
end
