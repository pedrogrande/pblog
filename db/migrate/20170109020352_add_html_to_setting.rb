class AddHtmlToSetting < ActiveRecord::Migration[5.0]
  def change
    add_column :settings, :about_html, :text
  end
end
