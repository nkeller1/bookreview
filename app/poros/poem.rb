class Poem
  attr_reader :title,
              :content,
              :url,
              :poet

  def initialize(info)
    poem = info.first
    @title = poem[:title]
    @content = poem[:content]
    @url = poem[:url]
    @poet = poem[:poet]
  end
end
