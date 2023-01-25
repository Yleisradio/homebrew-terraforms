cask "terraform-0.14.7" do
  version "0.14.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.7_darwin_amd64.zip"
    sha256 "35dbd2e1bd3efdfabbba8c907bd08c4e762e8b15bbc33cb6a38467bfc2c27539"
  end

  depends_on arch: [:x86_64]
end
