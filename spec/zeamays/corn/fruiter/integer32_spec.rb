require 'zeamays/corn/fruiter/integer32'

describe Zeamays::Corn::Fruiter::Integer32 do
  let(:packing) { Zeamays::Corn::Fruiter::Integer32.fruit_i32(target_value) }

  context "normally" do
    let(:target_value) { 4000000000 }
    subject { packing.unpack("N").first }
    it { should eq target_value }
  end

  pending "Not Integer32 type"
end
