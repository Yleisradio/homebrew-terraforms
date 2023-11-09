cask "terraform-1.7.0-alpha20231108" do
  version "1.7.0-alpha20231108"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.7.0-alpha20231108/terraform_1.7.0-alpha20231108_darwin_amd64.zip"
    sha256 "68a916fa04ca6a43cfcb803edd5703d2349b74481f27bd7777d6885a6abb721f"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.7.0-alpha20231108/terraform_1.7.0-alpha20231108_darwin_arm64.zip"
    sha256 "772415b52f31d9af114aa50a5a9c3ff0261f74048cc581562c3fa1e931da405f"
  end

  depends_on arch: [:x86_64, :arm64]
end
