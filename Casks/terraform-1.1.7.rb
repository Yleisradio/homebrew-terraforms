cask "terraform-1.1.7" do
  version "1.1.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.7/terraform_1.1.7_darwin_amd64.zip"
    sha256 "6e56eea328683541f6de0d5f449251a974d173e6d8161530956a20d9c239731a"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.7/terraform_1.1.7_darwin_arm64.zip"
    sha256 "8919ceee34f6bfb16a6e9ff61c95f4043c35c6d70b21de27e5a153c19c7eba9c"
  end

  depends_on arch: [:x86_64, :arm64]
end
