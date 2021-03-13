cask "terraform-0.9.4" do
  version "0.9.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.9.4/terraform_0.9.4_darwin_amd64.zip"
    sha256 "73ec3c66a77e0c0879e6397fe2b4c4910b24464971fd0c27795b0fa09143f9ad"
  end

  depends_on arch: [:x86_64]
end
