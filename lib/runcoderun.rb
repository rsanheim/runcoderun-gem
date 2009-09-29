require 'pathname'
lib_dir = Pathname(__FILE__).expand_path.dirname.to_s
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'launchy'
require 'commands/commands'

module RunCodeRun
  extend self
  def activate(args)
    if args.empty? || args.nil?
      invoke("help")
    else
      invoke(args.shift, *args)
    end
  end
  
  def all_commands
    Commands.public_instance_methods(true).sort.map {|m| m.intern }
  end
  
  def invoke(command, *args)
    command = command.intern
    debug "Invoking command: #{command}, args: #{args.inspect}"
    if all_commands.include?(command)
      Commands.send(command, *args)
    else
      ui.puts %[The command '#{command}' does not exist; currently supported commands are '#{all_commands.join(", ")}']
      abort
    end
  end
  
  def ui
    $stdout
  end
  
  def debug(msg)
    puts(msg) if $DEBUG
  end
  
  def guess_owner
    output = run("git remote -v")
    output.match(%r{github.com[:/](\w+)})[1]
  end
  
  def run(cmd)
    `#{cmd}`
  end
  
end