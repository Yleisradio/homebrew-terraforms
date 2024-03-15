cask "terraform-0-9-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.9.3"

  arch = "amd64"
  sha256 "180afdeb14f4049f3374fe02b9143ad428ebd31dd89c6595775d7ba439d7fbf0"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
