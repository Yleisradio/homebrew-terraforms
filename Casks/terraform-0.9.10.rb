cask "terraform-0.9.10" do
  version "0.9.10"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.9.10/terraform_0.9.10_darwin_amd64.zip"
    sha256 "8d55db3e114a72ec2cefb2e928af485c10f61c2df8121847972f73ca301fe5c6"
  end

  depends_on arch: [:x86_64]
end
