require 'rails/generators'

module Sprockets
  module Commoner
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc 'Copies setup files into your application'
        source_root File.join(File.dirname(__FILE__), "templates")

        def copy_setup_files
          template 'package.json', './'
          template '.babelrc', './'
        end

        def modify_gitignore
          append_file '.gitignore', '/node_modules'
        end
      end
    end
  end
end
