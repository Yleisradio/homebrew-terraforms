cask "terraform-1.2.2" do
  version "1.2.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.2/terraform_1.2.2_darwin_amd64.zip"
    sha256 "1d22663c1ab22ecea774ae63aee21eecfee0bbc23b953206d889a5ba3c08525a"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.2/terraform_1.2.2_darwin_arm64.zip"
    sha256 "b87716b55a3b10cced60db5285bae57aee9cc0f81c555dccdc4f54f62c2a3b60"
  end

  depends_on arch: [:x86_64, :arm64]
end
