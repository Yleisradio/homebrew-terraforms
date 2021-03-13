cask "terraform-0.12.5" do
  version "0.12.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.5/terraform_0.12.5_darwin_amd64.zip"
    sha256 "e0afcf6f6401e9eaab0be588b55b5226549253854acc1d0cde331b8ca54727e0"
  end

  depends_on arch: [:x86_64]
end
