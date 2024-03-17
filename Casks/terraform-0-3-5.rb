cask "terraform-0-3-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.3.5"

  arch = "amd64"
  sha256 "d583d58719951a5c3a06eec38390fe31bef7645af7fee3e915293aab7a910885"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
