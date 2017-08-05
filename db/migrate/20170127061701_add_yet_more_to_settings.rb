class AddYetMoreToSettings < ActiveRecord::Migration[5.0]
  def change
    add_column :settings, :header_color, :string
    add_column :settings, :text_color, :string
    add_column :settings, :header_font_weight, :integer
  end
end
