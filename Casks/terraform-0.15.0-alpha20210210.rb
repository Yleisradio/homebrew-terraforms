cask "terraform-0.15.0-alpha20210210" do
  version "0.15.0-alpha20210210"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-alpha20210210/terraform_0.15.0-alpha20210210_darwin_amd64.zip"
    sha256 "8585395617e78abe64cde98aec5495856f812d42ade11b3c9a6d50f5c76e9f06"
  end

  depends_on arch: [:x86_64]
end
