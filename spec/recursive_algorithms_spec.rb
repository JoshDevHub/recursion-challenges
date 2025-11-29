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

  describe "::merge_sort" do
    it "sorts an empty array" do
      expect(described_class.merge_sort([])).to eq []
    end

    it "sorts an array with one element" do
      expect(described_class.merge_sort([1])).to eq [1]
    end

    it "sorts an array of positive integers" do
      expect(described_class.merge_sort([5, 3, 4, 1, 2])).to eq [1, 2, 3, 4, 5]
    end

    it "sorts an array of various integers" do
      expect(described_class.merge_sort([-1, -10, 5, 50, 100, -8])).to eq [-10, -8, -1, 5, 50, 100]
    end
  end
end
