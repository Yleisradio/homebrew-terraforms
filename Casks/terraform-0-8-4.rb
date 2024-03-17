cask "terraform-0-8-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.8.4"

  arch = "amd64"
  sha256 "79e94dfaf439fdbba2a2fe03dd7c90b24efa699b6661155aa9329df43e68ba51"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
