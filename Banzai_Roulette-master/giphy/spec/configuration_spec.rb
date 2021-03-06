require 'spec_helper'

describe Giphy::Configuration do

  describe ".configure" do
    it "allows setting version and api_key values" do
      Giphy::Configuration.configure do |config|
        config.version = 'v2'
        config.api_key = 'dc6zaTOxFJmzC'
      end

      expect(Giphy::Configuration.version).to eq 'v2'
      expect(Giphy::Configuration.api_key).to eq 'dc6zaTOxFJmzC'
    end
  end

  describe ".version" do
    context "when no specific version is configured" do
      it "returns the default version" do
        Giphy::Configuration.configure { |g| g.version = nil }
        expect(Giphy::Configuration.version).to eq 'v1'
      end
    end
  end

  describe ".api_key" do
    context "when no specific api_key is configured" do
      it "returns the default api_key" do
        Giphy::Configuration.configure { |g| g.api_key = nil }
        expect(Giphy::Configuration.api_key).to eq 'dc6zaTOxFJmzC'
      end
    end
  end
end

  <div class="giphy">
  <script type="text/javascript">
  <input type ="text" id="userInput" value="Submit your word!" />
    var link = document.getElementByID('http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC');
    var input = document.getElementByID('searchterm');
    input.onchange = input.keyup = function() {
      link.search = '&tag=' + encodeURIComponent(input.value);
      link.firstChild.data = link.href;
    };
  </script>
</div>