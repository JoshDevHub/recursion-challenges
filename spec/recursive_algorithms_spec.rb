require "spec_helper"

require_relative "../lib/recursive_algorithms"

RSpec.describe RecursiveAlgorithms do
  describe "::fibs" do
    it "returns an empty array when passed `0`" do
      expect(described_class.fibs(0)).to eq []
    end

    it "can return the first number of the sequence" do
      expect(described_class.fibs(1)).to eq [0]
    end

    it "can return the first two numbers from the sequence" do
      expect(described_class.fibs(2)).to eq [0, 1]
    end

    it "can return the first three numbers of the sequence" do
      expect(described_class.fibs(3)).to eq [0, 1, 1]
    end

    it "can return the first eight numbers of the sequence" do
      expected_sequence = [0, 1, 1, 2, 3, 5, 8, 13]
      expect(described_class.fibs(8)).to eq expected_sequence
    end
  end
end
