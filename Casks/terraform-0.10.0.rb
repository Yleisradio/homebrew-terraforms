cask "terraform-0.10.0" do
  version "0.10.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.10.0/terraform_0.10.0_darwin_amd64.zip"
    sha256 "1584dc21ad5ac1dc0d9a2876542a85d092778d00a0622622c28f8740abadddb9"
  end

  depends_on arch: [:x86_64]
end
