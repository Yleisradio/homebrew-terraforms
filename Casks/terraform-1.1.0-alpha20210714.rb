cask "terraform-1.1.0-alpha20210714" do
  version "1.1.0-alpha20210714"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210714/terraform_1.1.0-alpha20210714_darwin_amd64.zip"
    sha256 "91e25a3f563a34a69ba7345631ef5490d78abc6d087cb08a8544e12102abe802"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210714/terraform_1.1.0-alpha20210714_darwin_arm64.zip"
    sha256 "2b22c319b7b1265e5ff1d27840395cbb020831110ddfbc2c03372f2fcc7d9317"
  end

  depends_on arch: [:x86_64, :arm64]
end
