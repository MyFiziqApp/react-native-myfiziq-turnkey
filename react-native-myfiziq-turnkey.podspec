require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-myfiziq-turnkey"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
  MyFiziq Turnkey is intended to be a base template that can be forked and customised according to the integration planned.
                   DESC
  s.homepage     = "https://github.com/MyFiziqApp/react-native-myfiziq-turnkey"
  # brief license entry:
  s.license          = { :type => 'Apache 2.0', :file => 'LICENSE.md' }
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "MyFiziq Dev" => "dev@myfiziq.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/MyFiziqApp/react-native-myfiziq-turnkey.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "MyFiziqTurnkey"
end

