require "spec_helper"

require_relative "../lib/recursive_algorithms"

RSpec.describe RecursiveAlgorithms do
  shared_examples "Fibonacci sequence" do |fibs_method|
    it "returns an empty array when passed `0`" do
      expected_sequence = []
      expect(described_class.public_send(fibs_method, 0)).to eq expected_sequence
    end

    it "can return the first number of the sequence" do
      expected_sequence = [0]
      expect(described_class.public_send(fibs_method, 1)).to eq expected_sequence
    end

    it "can return the first two numbers from the sequence" do
      expected_sequence = [0, 1]
      expect(described_class.public_send(fibs_method, 2)).to eq expected_sequence
    end

    it "can return the first three numbers of the sequence" do
      expected_sequence = [0, 1, 1]
      expect(described_class.public_send(fibs_method, 3)).to eq expected_sequence
    end

    it "can return the first eight numbers of the sequence" do
      expected_sequence = [0, 1, 1, 2, 3, 5, 8, 13]
      expect(described_class.public_send(fibs_method, 8)).to eq expected_sequence
    end

    it "can return the first twenty numbers of the sequence" do
      expected_sequence = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181]
      expect(described_class.public_send(fibs_method, 20)).to eq expected_sequence
    end
  end

  describe "::fibs" do
    it_behaves_like "Fibonacci sequence", :fibs
  end

  describe "::fibs_rec" do
    it_behaves_like "Fibonacci sequence", :fibs_rec
  end
end
