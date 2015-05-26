class Task < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true

  auto_html_for :content do
    html_escape
    image
    youtube(:width => "100%", :height => 250, :autoplay => false)
    vimeo(:width => "100%", :height => 250, :autoplay => false, :show_title => true)
    soundcloud(:width => "100%", :height => 250, :autoplay => false)
    dailymotion(:width => "100%", :height => 250)
    link :target => "blank", :rel => "nofollow"
    simple_format
    twitter
  end
end

