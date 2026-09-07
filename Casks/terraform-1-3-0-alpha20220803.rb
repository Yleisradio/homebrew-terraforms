cask "terraform-1-3-0-alpha20220803" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.0-alpha20220803"
  sha256 arm:   "dbbc1eb035fd144dc12e4c95549506473f550b696404ec374c912bd8f36d3930",
         intel: "dff45b9ebc241b7928a7f47c3eed0a2e2131f79de20e03ff4f258ee5c6c8dec1"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
