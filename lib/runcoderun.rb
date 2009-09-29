require 'pathname'
require 'launchy'

module RunCodeRun
  extend self
  def activate(args)
    @original_args = args.clone
    invoke(args.shift, *args)
  end
  
  def invoke(command, *args)
    debug "Invoking command: #{command}, args: #{args.inspect}"
    self.send(command, args)
  end
  
  def debug(msg)
    puts(msg) if true
  end
  
  def open(*args)
    current_dir = Pathname.getwd.basename
    current_owner = guess_owner
    url = %[http://runcoderun.com/#{current_owner}/#{current_dir}]
    Launchy.open(url)
  end
  
  def guess_owner
    output = run("git remote -v")
    output.match(%r{github.com[:/](\w+)})[1]
  end
  
  def run(cmd)
    `#{cmd}`
  end
  
end