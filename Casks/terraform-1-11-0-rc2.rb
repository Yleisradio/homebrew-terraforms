cask "terraform-1-11-0-rc2" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.0-rc2"
  sha256 arm:   "72256f71ab0530fa2e8fdc18dbe0cad37c9e40695ed1894ba68d43ac24b8cf04",
         intel: "a463bd27c7864a2e9fd48e2a748d153d4be82e331df72fa03f150a7998445675"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
