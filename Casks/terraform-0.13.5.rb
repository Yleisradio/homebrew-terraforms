cask "terraform-0.13.5" do
  version "0.13.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.5/terraform_0.13.5_darwin_amd64.zip"
    sha256 "7c196875d9d9f03c6218581622bb5e66f15a98de764a8daf09eb40183d2145ce"
  end

  depends_on arch: [:x86_64]
end
