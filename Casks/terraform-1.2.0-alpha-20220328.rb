cask "terraform-1.2.0-alpha-20220328" do
  version "1.2.0-alpha-20220328"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0-alpha-20220328/terraform_1.2.0-alpha-20220328_darwin_amd64.zip"
    sha256 "1b3a771235ab21e519c11f1a57aebce894938927d02c10d5cc75bc7022c405e8"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0-alpha-20220328/terraform_1.2.0-alpha-20220328_darwin_arm64.zip"
    sha256 "8dfcddd36d842194fcc79def3da1c9224abc982b60d9438710828b93f03ad660"
  end

  depends_on arch: [:x86_64, :arm64]
end
