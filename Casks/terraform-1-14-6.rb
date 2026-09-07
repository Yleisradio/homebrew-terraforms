cask "terraform-1-14-6" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.6"
  sha256 arm:   "5d91a8d6877e792de00be8db2324a2561edeb312ec2ff141b877131b82622c76",
         intel: "ae13b4d204b00a0742f13a3de78a78994918f31333b1537db682cd0a7085dac0"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
