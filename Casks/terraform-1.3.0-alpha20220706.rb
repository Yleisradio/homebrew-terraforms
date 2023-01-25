cask "terraform-1.3.0-alpha20220706" do
  version "1.3.0-alpha20220706"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220706/terraform_1.3.0-alpha20220706_darwin_amd64.zip"
    sha256 "9f75c33f60b8578ae63139c2cd0891f98269a0601596625c0f2be5bc456d99e8"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220706/terraform_1.3.0-alpha20220706_darwin_arm64.zip"
    sha256 "634d7bd3c5c6249d0ae9ce30ea173929be0ee0252e5233b5ad1bd32295f8fabb"
  end

  depends_on arch: [:x86_64, :arm64]
end
