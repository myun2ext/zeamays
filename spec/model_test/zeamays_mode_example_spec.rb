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

  let(:packaged) { cob.pack }
  let(:unpackaged) { example_cob_class.unpack(packaged) }
  it { expect(unpackaged).to eq [record1, record2] }

  describe "#defreeze" do
    let(:freezed) { cob.freezed }
    let(:defreezed) { example_cob_class.defreeze(freezed) }
    it { expect(defreezed[0]).to eq record1 }
    it { expect(defreezed[1]).to eq record2 }
  end
end
