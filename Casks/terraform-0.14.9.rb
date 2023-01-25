cask "terraform-0.14.9" do
  version "0.14.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.9/terraform_0.14.9_darwin_amd64.zip"
    sha256 "606357dfdb39d5b6ae39c2b81c9468ae9cd42f02dadfc9174232cd1b974adf9b"
  end

  depends_on arch: [:x86_64]
end
