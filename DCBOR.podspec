Pod::Spec.new do |spec|
  spec.name         = "DCBOR"
  spec.version      = "0.10.1"
  spec.summary      = "A pure Swift CBOR codec that focuses on writing and parsing deterministic CBOR per §4.2 of RFC-8949."
  spec.homepage     = "https://github.com/KeystoneHQ/BCSwiftDCBOR"
  spec.license      = { :type => "BSD", :file => "LICENSE" }
  spec.author       = "Keystone"
  spec.social_media_url   = "https://twitter.com/KeystoneWallet"
  spec.swift_version = "5.6"
  spec.platform = :ios, '13.0'
  spec.source       = { :git => "https://github.com/KeystoneHQ/BCSwiftDCBOR.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/DCBOR/*.swift"
  spec.requires_arc = true
  spec.dependency "WolfBase", "~> 5.3.2"
  spec.dependency "BCFloat16", "~> 0.3.0"
  spec.dependency "SwiftOrderedCollections", "~> 1.0.4"
  spec.dependency "SortedCollections", "~> 1.1.0"
end
