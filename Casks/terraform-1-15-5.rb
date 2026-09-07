cask "terraform-1-15-5" do
  arch arm: "arm64", intel: "amd64"

  version "1.15.5"
  sha256 arm:   "01137660510005b918bba82154866fbeac4393163d8277c2abe861dfb5842c3c",
         intel: "3687d07c034b3e7deed5b072cd8ae2b34835bcb139baec3fc4f5fd534dabf5ed"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
