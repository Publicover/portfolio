class AddColumnsToApps < ActiveRecord::Migration[5.0]
  def change
    add_column :apps, :img_url, :string
    add_column :apps, :short_description, :string
    add_column :apps, :time_period, :string
    add_column :apps, :additional_notes, :text
  end
end
