require 'zeamays/corn/fruiter/integer16'

describe Zeamays::Corn::Fruiter::Integer16 do
  let(:packing) { Zeamays::Corn::Fruiter::Integer16.fruit_i16(target_value) }

  context "normally" do
    let(:target_value) { 50000 }
    subject { packing.unpack("n").first }
    it { should eq target_value }
  end

  pending "Not Integer16 type"
end
