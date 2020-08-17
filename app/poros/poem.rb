class Poem
  attr_reader :title,
              :content,
              :url,
              :poet

  def initialize(info)
    @title = info.first[:title]
    @content = info.first[:content]
    @url = info.first[:url]
    @poet = info.first[:poet]
  end
end
