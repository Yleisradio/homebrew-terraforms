cask "terraform-0.11.4" do
  version "0.11.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.4/terraform_0.11.4_darwin_amd64.zip"
    sha256 "c328b8d60840b96641f519deb85601cb1f2cce458c7bdb7786712471234ac0c5"
  end

  depends_on arch: [:x86_64]
end
