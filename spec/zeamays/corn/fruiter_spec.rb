require 'zeamays/corn/fruiter'
require 'zeamays/corn/fruiter/byte'

describe Zeamays::Corn::Fruiter do
  context "Byte" do
    let(:packing) { Zeamays::Corn::Fruiter::Byte.fruit_byte(target_value) }

    context "normally" do
      let(:target_value) { 30 }
      subject { packing.unpack("C").first }
      it { should eq target_value }
    end

    context "over byte size" do
      let(:target_value) { 300 }
      subject { packing.unpack("C").first }
      it { should eq (300 - 256) }
    end

    pending "Not byte type"
  end
end
