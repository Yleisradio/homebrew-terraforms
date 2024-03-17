cask "terraform-1-4-7" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.4.7"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "603764c07862bd3a87fce193f8b9823383df22626b254f353c83511635763301",
    arm: "4b2ae04467469b923d038e6720ae1f92cb2adaa96b7ab08199c2fffee8b45baa"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
