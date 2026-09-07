cask "terraform-1-2-0-rc1" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.0-rc1"
  sha256 arm:   "459b92dac3965a3888cae2d11930785b1e7c76189fd2e8d3feb1a0bbebb34ce0",
         intel: "6891ce78a1b184484ea297d7ed7b82367b23191ff03bcf029d9f32209a18e7df"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
