class AddColumnsToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :img_url, :string
    add_column :jobs, :short_description, :string
    add_column :jobs, :time_period, :string
    add_column :jobs, :additional_notes, :text
  end
end
