cask "terraform-1-15-0-rc3" do
  arch arm: "arm64", intel: "amd64"

  version "1.15.0-rc3"
  sha256 arm:   "c8982cb4b8bf36f3c6bc5107d76254727b5b87e2df4ec1378aeeb53177b0cc17",
         intel: "a00195087d4bb82aa003ae45042cceb39650b8299e07b0151e821a481b2eb255"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
