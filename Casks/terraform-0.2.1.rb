cask "terraform-0.2.1" do
  version "0.2.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.2.1/terraform_0.2.1_darwin_amd64.zip"
    sha256 "028076fa5b074d2b2457f857fe8f2182a8ef7a35c15b8c3b18a129df60790ea7"
  end

  depends_on arch: [:x86_64]
end
