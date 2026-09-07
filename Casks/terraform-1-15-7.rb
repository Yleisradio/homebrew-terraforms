cask "terraform-1-15-7" do
  arch arm: "arm64", intel: "amd64"

  version "1.15.7"
  sha256 arm:   "711791bf41365137a9a4adbf3e4c4a18dd7389d45c6a3039e3c6946bc750080e",
         intel: "7f7a055e4d0c9dddb19cb14058fc885df139fdd4e987fffff6bf82993ac6a1a3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
