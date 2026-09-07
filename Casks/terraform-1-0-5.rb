cask "terraform-1-0-5" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.5"
  sha256 arm:   "8fadd8bbcdcaf6452d9937af6b916572f481caabcc29ea9aac61c7f4759e133e",
         intel: "51b481f2cc02651c14854f57dc0c43c3918b19b6fc5e687295b98beee5d20271"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
