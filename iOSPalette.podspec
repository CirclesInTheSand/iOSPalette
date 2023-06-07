Pod::Spec.new do |s|
    s.name         = 'iOSPalette'
    s.version      = '1.0.0'
    s.summary      = 'iOS Palette'
    s.homepage     = 'https://github.com/CirclesInTheSand/iOSPalette'
    s.license      = 'MIT'
    s.authors      = {'CirclesInTheSand' => '396582310@qq.com'}
    s.platform     = :ios, '11.0'
    s.source       = {:git => 'https://github.com/CirclesInTheSand/iOSPalette.git', :tag => s.version}
    s.source_files = 'iOSPalette/iOSPalette/Source/*'
end
