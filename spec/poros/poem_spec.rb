require 'rails_helper'

RSpec.describe Poem, type: :model do
  it "has attributes" do
    poem1 = Poem.new(
      title: "Avising The Bright Beams",
      content: "Avising the bright beams of these fair eyes \nWhere he is that mine oft moisteth and washeth,\nThe wearied mind straight from the heart depa
rteth\nFor to rest in his worldly paradise\nAnd find the sweet bitter under this guise.\nWhat webs he hath wrought well he perceiveth \nWhereby
with himself on love he plaineth\nThat spurreth with fire and bridleth with ice.\nThus is it in such extremity brought,\nIn frozen thought, now
and now it standeth in flame. \nTwixt misery and wealth, twixt earnest and game,\nBut few glad, and many diverse thought\nWith sore repentance o
f his hardiness.\nOf such a root cometh fruit fruitless.",
      url: "https://www.poemist.com/sir-thomas-wyatt/avising-the-bright-beams",
      poet: "Sir Thomas Wyatt"
    )

    expect(poem1.title).to eq("Avising The Bright Beams")
  end
end
