require 'rails_helper'

RSpec.describe Poem, type: :model do
  it "has attributes" do
    poem1 = Poem.new(
      [title: "Avising The Bright Beams",
      content: "Avising the bright beams of these fair eyes",
      url: "https://www.poemist.com/sir-thomas-wyatt/avising-the-bright-beams",
      poet: { poet: "Sir Thomas Wyatt", url: "hello" }]
    )

    expect(poem1.title).to eq("Avising The Bright Beams")
    expect(poem1.poet[:poet]).to eq("Sir Thomas Wyatt")
  end
end
