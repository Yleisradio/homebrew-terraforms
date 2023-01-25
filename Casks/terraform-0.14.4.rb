cask "terraform-0.14.4" do
  version "0.14.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.4/terraform_0.14.4_darwin_amd64.zip"
    sha256 "b69403f2893ddcd3cb7bd9d6d45627862f9eb88c1a1e2dd6e26560055a45b50b"
  end

  depends_on arch: [:x86_64]
end
