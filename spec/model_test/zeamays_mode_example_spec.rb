require "zeamays"

describe "Zeamays Model example" do
  let(:example_cob_class) {
    class YellowSweet < Zeamays::Cob
      gene_sequencing :i8, :i16, :integer, :string
    end
    YellowSweet
  }

  let(:cob) { example_cob_class.new }
  let(:record1) { [30, 2000, 500000, "test"] }
  let(:record2) { [80, 1000, 200000, "Example!!! "] }
  before do
    cob.grow(record1)
    cob.grow(record2)
  end

  let(:packed) { cob.pack }
  let(:unpacked) { example_cob_class.unpack(packed) }

  describe "pack and unpack" do
    it { expect(unpacked[0]).to eq record1 }
    it { expect(unpacked[1]).to eq record2 }
  end
end
