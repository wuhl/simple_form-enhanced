#  install_generator.rb

module SimpleFormenhanced
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      source_root File.expand_path("../templates", __FILE__)
      desc "This generator installs Simple Form Enhanced"
      argument :language_type, :type => :string, :default => 'de', :banner => '*de or other language'
			class_option :template_engine, desc: 'Template engine to be invoked (erb, haml or slim).'

      def run_other_generators
        generate "simple_form:install --bootstrap"
      end

      def add_and_move_simple_form_language_files
        copy_file "#{language_type}.simple_form.yml", "config/locales/#{language_type}/#{language_type}.simple_form.yml"
        copy_file "#{language_type}.simple_form-i18n.yml", "config/locales/#{language_type}/#{language_type}.simple_form-i18n.yml"
        FileUtils.move "config/locales/simple_form.en.yml", "config/locales/en/en.simple_form.yml"
      end

			def copy_scaffold_template
        engine = options[:template_engine]
        # copy_file "#{engine}/_form.html.#{engine}", "lib/templates/#{engine}/scaffold/_form.html.#{engine}"
        copy_file "#{engine}/edit.html.#{engine}", "lib/templates/#{engine}/scaffold/edit.html.#{engine}"
        copy_file "#{engine}/index.html.#{engine}", "lib/templates/#{engine}/scaffold/index.html.#{engine}"
        copy_file "#{engine}/new.html.#{engine}", "lib/templates/#{engine}/scaffold/new.html.#{engine}"
      end
    end
  end
end