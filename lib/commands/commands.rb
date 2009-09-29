module RunCodeRun
  module Commands
    extend self

    def help
      help =<<EOL
Usage: runcoderun command <options>

  Available commands:

EOL
      help << RunCodeRun.all_commands.map {|c| "    #{c}"}.join("\n")
      ui.puts help
    end
    
    def open(*args)
      current_dir = Pathname.getwd.basename
      current_owner = RunCodeRun.guess_owner
      url = %[http://runcoderun.com/#{current_owner}/#{current_dir}]
      Launchy.open(url)
    end
    
    private 
    
    def ui
      RunCodeRun.ui
    end
  end
end