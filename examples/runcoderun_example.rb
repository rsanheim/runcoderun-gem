require File.join(File.dirname(__FILE__), *%w[example_helper])

describe "Runcoderun" do
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
