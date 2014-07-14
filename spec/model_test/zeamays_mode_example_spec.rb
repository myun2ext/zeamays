require "zeamays"

describe "Zeamays Model example" do
  before do
    class YellowSweet < Zeamays::Cob
      gene_sequencing :i8, :i16, :integer, :string
    end
  end

  let(:cob) { YellowSweet.new }
  let(:record1) { [30, 2000, 500000, "test"] }
  let(:record2) { [80, 1000, 200000, "Example!!! "] }
  before do
    cob.grow(record1)
    cob.grow(record2)
  end

  let(:packed) { cob.pack }
  let(:unpacked) { YellowSweet.unpack(packed) }

  describe "pack and unpack" do
    it { expect(unpacked[0]).to eq record1 }
    it { expect(unpacked[1]).to eq record2 }
  end

  describe "Fridging" do
    before do
      FileUtils.makedirs("./tmp")
      fridging
    end
    after do
      #FileUtils.remove_dir("./tmp")
    end

    let(:fridging_path) { "./tmp/yellow_sweet.zmd" }
    let(:fridging) do
      Zeamays::Fridge.stick(fridging_path, cob.freezed)
    end
    let(:defridged) do
      Zeamays::Fridge.take(fridging_path)
    end
    let(:defreezed_cob) do
      YellowSweet.defreeze(defridged)
    end

    it { expect(defreezed_cob[0]).to eq record1 }
    it { expect(defreezed_cob[1]).to eq record2 }
  end
end
