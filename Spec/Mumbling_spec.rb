require 'mumbling_kata'


describe Mumbling_kata do
    it "When given empty string returns empty string" do
        mumbling = described_class.new
        expect(mumbling.mumble_letters("")).to eq("")
    end

    it "when given lowercase letter return uppercase letter" do
        mumbling = described_class.new
        expect(mumbling.mumble_letters("a")).to eq("A")
        expect(mumbling.mumble_letters("b")).to eq("B")
        expect(mumbling.mumble_letters("c")).to eq("C")
    end

    it "When given two lowercase letters returns correctly formatted letters " do
        mumbling = described_class.new
        expect(mumbling.mumble_letters("ab")).to eq("A-Bb")
    end

    it "When given lowercase letters returns correctly formatted letters " do
        mumbling = described_class.new
        expect(mumbling.mumble_letters("abc")).to eq("A-Bb-Ccc")
        expect(mumbling.mumble_letters("abcd")).to eq("A-Bb-Ccc-Dddd")
        expect(mumbling.mumble_letters("abcde")).to eq("A-Bb-Ccc-Dddd-Eeeee")
        
        
    end
end

# ab   =>   A-Bb
# abc => A-Bb-Ccc




