class SettingsController < ApplicationController

  def default
    @default_settings = Setting.first
    @old_user_settings = Setting.last
    @old_user_settings.destroy
    @new_user_settings = @default_settings.dup
    @new_user_settings.save!
    redirect_to settings_path
  end
  # GET /settings
  # GET /settings.json
  def index
    # @setting = Setting.last
  end

  # PATCH/PUT /settings/1
  # PATCH/PUT /settings/1.json
  def update
    # @setting = Setting.last
    respond_to do |format|
      if @user_settings.update(setting_params)
        format.html { redirect_to settings_path, notice: 'Your settings were successfully updated.' }
        format.json { render :show, status: :ok, location: @setting }
      else
        format.html { render :edit }
        format.json { render json: @user_settings.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def setting_params
      params.require(:setting).permit(:blog_title, :subtitle, :author_name, :author_image, :about_lead, :tags, :archives, :contact_email, :google_analytics, :github, :twitter, :linked_in, :instagram, :navbar_color, :header_background_color, :header_background_image, :header_font, :text_font, :share_links_top, :share_links_bottom, :header_color, :text_color, :header_font_weight)
    end
end
