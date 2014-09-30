module Dpi
  module RailsChores
    class Railtie < Rails::Railtie
      rake_tasks do
        tasks_dir = File.expand_path("../../../tasks", __FILE__)
        Dir["#{tasks_dir}/**/*.rake"].each do |rake_file|
          load rake_file
        end
      end
    end
  end
end
