cask "terraform-0.10.0-beta2" do
  version "0.10.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.10.0-beta2/terraform_0.10.0-beta2_darwin_amd64.zip"
    sha256 "6138b4177e392e759bebc378cfe3a8dbbab6eae43214269464a005597aed85c6"
  end

  depends_on arch: [:x86_64]
end
