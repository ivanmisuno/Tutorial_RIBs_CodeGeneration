source 'https://github.com/CocoaPods/Specs.git'

workspace 'Tutorial_RIBs_CodeGeneration.xcworkspace'

abstract_target 'Totorial_all' do
    platform :ios, '8.0'
    use_frameworks!

    project 'Tutorial_RIBs_CodeGeneration.xcodeproj'

    pod 'RxSwift'
    pod 'SnapKit'
    pod 'RIBs'

    target 'Tutorial_RIBs_CodeGeneration'

    target 'Tutorial_RIBs_CodeGenerationTests' do
        inherit! :complete

        pod 'RxTest'
        pod 'Sourcery', '~> 0.15.0'
        pod 'Quick'
        pod 'Nimble'
    end
end
