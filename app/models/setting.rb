class Setting < ApplicationRecord
  mount_uploader :author_image, ArticleImageUploader
  validates :blog_title, :subtitle, :author_name, :contact_email, presence: true

  before_save :parse_about

  def parse_about
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true)
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    self.about_html = markdown.render(self.about_lead)
  end
end
