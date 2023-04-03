cask "terraform-1.1.0-alpha20210728" do
  version "1.1.0-alpha20210728"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210728/terraform_1.1.0-alpha20210728_darwin_amd64.zip"
    sha256 "9b63d9bab48bc9dfc3cb719fb8869746f7d16626888c2895c18e000fcf80cacd"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210728/terraform_1.1.0-alpha20210728_darwin_arm64.zip"
    sha256 "b0c793e019ba8e43c9d0d9287463b5ddd8c09afcb06863f0270334c7ae3e74b2"
  end

  depends_on arch: [:x86_64, :arm64]
end
