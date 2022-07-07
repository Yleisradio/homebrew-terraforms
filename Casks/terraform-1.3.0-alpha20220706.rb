cask "terraform-1.3.0-alpha20220706" do
  version "1.3.0-alpha20220706"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220706/terraform_1.3.0-alpha20220706_darwin_amd64.zip"
    sha256 "06e3a1d8dce6854bd026a0fa669a78119be7bda3434996d8e8b9a1a496555c15"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220706/terraform_1.3.0-alpha20220706_darwin_arm64.zip"
    sha256 "6d3e88fee2ce4084b3a59955a82743c7a2b0144913015d1374939d6ece3e085c"
  end

  depends_on arch: [:x86_64, :arm64]
end
