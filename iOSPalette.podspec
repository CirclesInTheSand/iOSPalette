Pod::Spec.new do |s|
    s.name         = 'iOSPalette'
    s.version      = '0.0.1'
    s.summary      = 'iOS Palette'
    s.homepage     = 'https://github.com/ChaselAn/iOSPalette'
    s.license      = 'MIT'
    s.authors      = {'ChaselAn' => '865770853@qq.com'}
    s.platform     = :ios, '9.0'
    s.source       = {:git => 'https://github.com/ChaselAn/iOSPalette.git', :tag => s.version}
    s.source_files = 'iOSPalette/iOSPalette/Source/*.swift'
end