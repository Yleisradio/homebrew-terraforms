cask "terraform-0.10.2" do
  version "0.10.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.10.2/terraform_0.10.2_darwin_amd64.zip"
    sha256 "1ad6bad0349a3bcda8264746a3db0a39875c2cd93e3418393cc082bbb4812541"
  end

  depends_on arch: [:x86_64]
end
