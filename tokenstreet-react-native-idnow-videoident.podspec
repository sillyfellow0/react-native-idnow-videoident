require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
    s.name = 'tokenstreet-react-native-idnow-videoident'
    s.version = package['version']
    s.summary = package['description']
    s.homepage = package['homepage']
    s.license = package['license']
    s.authors = package['author']

    s.platforms = { ios: '12.0' }
    s.source = { git: 'https://github.com/tokenstreet-tech/react-native-idnow-videoident.git', tag: "#{s.version}" }

    s.source_files = 'ios/**/*.{h,m,mm}'

    s.dependency 'React-Core'
    s.dependency 'IDnowSDK', '6.1.3'
end
