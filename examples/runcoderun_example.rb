require File.join(File.dirname(__FILE__), *%w[example_helper])

describe RunCodeRun do
  
  describe "activate" do
    it "defaults to help if no command" do
      RunCodeRun::Commands.expects(:help)
      RunCodeRun.activate([])
    end
  end
  
  describe "invoke" do
    it "calls public method on in commands module" do
      RunCodeRun::Commands.expects(:open)
      RunCodeRun.invoke("open")
    end
    
    it "calls public method commands module with args" do
      RunCodeRun::Commands.expects(:open).with("foo", "baz")
      RunCodeRun.invoke("open", "foo", "baz")
    end
    
    
    it "fails fast if public method does not exist" do
      RunCodeRun.stubs(:ui).returns(stub_everything)
      lambda {
        RunCodeRun.invoke("good_day_good_sir")
      }.should raise_error(SystemExit) #, /The command 'good_day_good_sir' does not exist/)
    end
  end
  
  describe "guess owner" do
      it "should grab owner for private repos" do
        output =<<EOL
origin	git@github.com:relevance/runcoderun.git (fetch)
origin	git@github.com:relevance/runcoderun.git (push)
EOL
        RunCodeRun.stubs(:run).returns(output)
        RunCodeRun.guess_owner.should == "relevance"
      end
      
      it "should grab owner for public repos" do
        output =<<EOL
origin	git://github.com/defunkt/github.git (fetch)
origin	git://github.com/defunkt/github.git (push)
EOL
        RunCodeRun.stubs(:run).returns(output)
        RunCodeRun.guess_owner.should == "defunkt"
      end
  end
end
