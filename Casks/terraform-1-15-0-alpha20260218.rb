cask "terraform-1-15-0-alpha20260218" do
  arch arm: "arm64", intel: "amd64"

  version "1.15.0-alpha20260218"
  sha256 arm:   "83942235c02477eb38977f9fe2a26091b49b19c2636bb60dc4c714be851004fe",
         intel: "0cbfc86849982eee921306f02aeedca3eb5334decca2328f05112efe3c1f5b51"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
