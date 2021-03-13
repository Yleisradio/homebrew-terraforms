cask "terraform-0.7.4" do
  version "0.7.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.7.4/terraform_0.7.4_darwin_amd64.zip"
    sha256 "21c8ecc161628ecab88f45eba6b5ca1fbf3eb897e8bc951b0fbac4c0ad77fb04"
  end

  depends_on arch: [:x86_64]
end
