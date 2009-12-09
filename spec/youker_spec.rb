require File.dirname(__FILE__) + '/spec_helper'

describe Youker do
  
  describe "when initializing" do
    
    before(:all) do 
      @youker = Youker.new 4, ['Optimus', 'Megatron']
    end
    
    it "should create the specified number of players" do
      @youker.players.length.should == 4
    end
    
    it "uses supplied array to name players" do
      @youker.players[0].name.should == 'Optimus'
      @youker.players[1].name.should == 'Megatron'      
    end
    
    it "names extra players with 'Player #NUMBER'" do
      @youker.players[2].name.should == 'Player 3'
      @youker.players[3].name.should == 'Player 4'
    end
    
  end
  
  
  describe "when creating schedules" do
 
    describe "with an even number of players" do
         
      before(:each) do
        @youker = Youker.new 4, ['Optimus', 'Megatron']
        #@youker.players.expects(:shuffle!)
      end
      
      it "teams every player with every other player once" do 
        #@youker.rounds.length.should == 4
      end
      
    end
  end
  
end