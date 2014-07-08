require 'zeamays/corn/fruiter'

describe Zeamays::Corn::Fruiter do
  context "Byte" do
    subject { Zeamays::Corn::Fruiter::Byte.fruit_byte(30) }
    it { should eq [30].pack("C") }
  end
end
