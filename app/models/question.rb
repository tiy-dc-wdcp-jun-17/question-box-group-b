class Question < ApplicationRecord
  include PgSearch

  has_many :answers
  belongs_to :user

  def markdown
    md = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      disable_indented_code_blocks: true)
    md.render(self.body).html_safe
  end

  multisearchable against: %i(title body)
end
