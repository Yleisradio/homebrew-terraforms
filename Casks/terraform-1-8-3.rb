cask "terraform-1-8-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.8.3"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "a4f695e64948ad66fe05e2f589cfe5221b8597ff16173ebed8055d3a90aaa739",
    arm: "2622426fd6e8483db6d62605f52ea6eddb0e88a09e8cea1c24b9310879490227"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
