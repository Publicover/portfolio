class AddColorToApps < ActiveRecord::Migration[5.0]
  def change
    add_column :apps, :color, :string
  end
end
