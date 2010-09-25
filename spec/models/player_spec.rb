require 'spec_helper'

describe Player do

  before(:each) do
    @attr = { :firstname => "Jamie", :lastname => "Watson", :position => "Forward" }
  end

  it "should create a new instance given valid attributes" do
    Player.create!(@attr)
  end

  it "should require a first name" do
    no_firstname_player = Player.new(@attr.merge(:firstname => ""))
    no_firstname_player.should_not be_valid
  end

  it "should require a last name" do
    no_lastname_player = Player.new(@attr.merge(:lastname => ""))
    no_lastname_player.should_not be_valid
  end
  
  it "should require a position" do
    no_position_player = Player.new(@attr.merge(:position => ""))
    no_position_player.should_not be_valid
  end  
  
  it "should reject firstnames that are too long" do
    long_name = "a" * 51
    long_name_player = Player.new(@attr.merge(:firstname => long_name))
    long_name_player.should_not be_valid
  end  

  it "should reject lastnames that are too long" do
    long_name = "a" * 51
    long_name_player = Player.new(@attr.merge(:lastname => long_name))
    long_name_player.should_not be_valid
  end  
  
end