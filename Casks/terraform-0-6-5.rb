cask "terraform-0-6-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.6.5"

  arch = "amd64"
  sha256 "ba540f36d1dc3ed9d3db9832db3a2b3f6cfea5d9f80b663281c1d28260d298ed"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
