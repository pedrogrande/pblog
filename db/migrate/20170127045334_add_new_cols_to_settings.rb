class AddNewColsToSettings < ActiveRecord::Migration[5.0]
  def change
    add_column :settings, :navbar_color, :string
    add_column :settings, :header_background_color, :string
    add_column :settings, :header_background_image, :string
    add_column :settings, :header_font, :string
    add_column :settings, :text_font, :string
    add_column :settings, :share_links_top, :boolean, default: false
    add_column :settings, :share_links_bottom, :boolean, default: false
  end
end
