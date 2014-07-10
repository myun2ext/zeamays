require "zeamays"

describe "Zeamays Model example" do
  let(:mock_model) {
    class ZeamaysMockModel < Zeamays::Cob
    end
  }
  it { mock_model }
end
