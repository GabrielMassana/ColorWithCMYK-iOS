Pod::Spec.new do |s|

  s.name         = "ColorWithCMYK"
  s.version      = "1.0.4"
  s.summary      = "Swift Extension to convert CMYK values into UIColor Objects."

  s.homepage     = "https://github.com/GabrielMassana"
  s.license      = { :type => 'MIT', :file => 'LICENSE.md'}
  s.author       = { "Gabriel Massana" => "gabrielmassana@gmail.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/GabrielMassana/ColorWithCMYK-iOS.git", :tag => s.version, :branch => "master"}
  
  s.source_files  = "ColorWithCMYK-iOS/**/*.swift"

  s.requires_arc = true

end

