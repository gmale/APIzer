require 'thor'
require 'apizer/version'

module Apizer
  class CLI < Thor

    class_option :dry_run,
        default: false,
        aliases: "-n",
        desc:    "Dry-run. Copies the request to the clipboard but does not execute it",
        banner:  "Dry nun."
    class_option :verbose, :default => false, :aliases => "-v", :desc => "Verbose. Just like normal console output, except on steroids", :banner => "Verbose mode."
    class_option :output, :default => "output.log", :aliases => "-o", :desc => "Output File. Turns on record mode and directs all recorded commands to the given file", :banner => "Record to file."
    class_option :quiet, :default => false, :aliases => "-q", :desc => "Quiet. Do not record commands for this session", :banner => "Quiet."
    
    map %w[--version] => :__version

    desc "cli_method", "calls this nifty cli method"
    def cli_method
      puts "I'm in CLI"
    end

    desc "--version", "displays version information"
    def __version
      puts "APIzer version #{Apizer::VERSION}"
    end

  end
end