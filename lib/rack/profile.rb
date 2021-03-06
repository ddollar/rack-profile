require 'rack'
require 'ruby-prof'

class Rack::Profile

  attr_reader :app, :options

  def initialize(app, options={})
    @app     = app
    @options = options
  end

  def call(env)
    RubyProf.start
    response = app.call(env)
    results = RubyProf.stop

    write_output results, :html, RubyProf::GraphHtmlPrinter
    write_output results, :text, RubyProf::FlatPrinter
    write_output results, :tree, RubyProf::CallTreePrinter

    response
  end

private ######################################################################

  def write_output(results, type, klass)
    if filename = options[type]
      File.open(filename, 'w') do |file|
        klass.new(results).print(file)
      end
    end
  end

end
