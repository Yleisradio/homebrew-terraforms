cask "terraform-1-4-0-alpha20221207" do
  arch arm: "arm64", intel: "amd64"

  version "1.4.0-alpha20221207"
  sha256 arm:   "9d222e60826e30ce72be4f1768573f279eeac3dba571f896bf737cafaae6e6be",
         intel: "26c96a6ce8a199c3cce28c4da073c2d3349d48f3cdead3804a472bdeb6a31e5f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
