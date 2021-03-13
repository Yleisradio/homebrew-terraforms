cask "terraform-0.8.7" do
  version "0.8.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.8.7/terraform_0.8.7_darwin_amd64.zip"
    sha256 "ba53c7424bec5db7c01e0a5178ba5e295eb13669fb04fdae41576098baf88b75"
  end

  depends_on arch: [:x86_64]
end
