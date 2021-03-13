cask "terraform-0.6.15" do
  version "0.6.15"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.15/terraform_0.6.15_darwin_amd64.zip"
    sha256 "9cb305ac00b85e2575da3c71504f3fdd3f7ef61f35457af999c7b88802143311"
  end

  depends_on arch: [:x86_64]
end
