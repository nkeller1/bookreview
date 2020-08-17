class Poem
  attr_reader :title,
              :content,
              :url,
              :poet

  def initialize(info)
    @title = info[:title]
    @content = info[:content]
    @url = info[:url]
    @poet = info[:poet]
  end
end
