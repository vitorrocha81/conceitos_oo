I18n.enforce_available_locales = false


PROJECT_ROOT = File.expand_path("../..", __FILE__)

Dir.glob(File.join(PROJECT_ROOT, "lib", "*.rb")).each do |file|
  require file
end

RSpec.configure do |config|
end
