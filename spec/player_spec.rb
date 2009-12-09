require File.dirname(__FILE__) + '/spec_helper'

describe Scheduler do
  
  describe "when finding a suitable round" do
    
    before(:each) do
      @p1, @p2, @p3, @p4, @p5 = mock(), mock(), mock(), mock(), mock()
      @players = [@p1, @p2, @p3, @p4, @p5]
      @players.expects(:shuffle!).returns(@players)
      @p1.expects(:next_partner).with(@players).returns(@p2)
      @p2.expects(:add_partner).with(@p1)
      
      @p1.expects(:get_opponents).with(@players).returns([@p3, @p5])
      
      @scheduler = Scheduler.new @players
      @scheduler.next_round
    end
    
    it "randomizes the array or players before doing anything" do
      true.should == true
    end
    
  end
  
end