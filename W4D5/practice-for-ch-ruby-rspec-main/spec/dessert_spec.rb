require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) {Dessert.new("pastry", 10, :chef)}

  describe "#initialize" do
    it "sets a type" do 
      expect(dessert.type).to_eq(pastry)
    end

    it "sets a quantity" do
      expect(dessert.quantity).to_eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to_eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("pastry",-6, :chef}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    before(:each) do 
      dessert.add_ingredient("eggs")
      dessert.add_ingredient("dough")
      dessert.add_ingredient("butter")
    end
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).to eq(["eggs","dough","butter"])
    end
  end

  describe "#mix!" do
    before(:each) do 
      dessert.add_ingredient("eggs")
      dessert.add_ingredient("dough")
      dessert.add_ingredient("butter")
    end
    it "shuffles the ingredient array" do
      expect(dessert.mix!).to_not eq(["eggs","dough","butter"])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      before(:each) do 
        dessert.eat(10)
      end
      expect(dessert.quantity).to eq(0)
    end

    it "raises an error if the amount is greater than the quantity" do 
      expect(dessert.eat(11)).to raise_error(ArgumentError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      expect(chef.titleize
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end