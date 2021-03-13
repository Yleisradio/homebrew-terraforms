cask "terraform-0.6.14" do
  version "0.6.14"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.14/terraform_0.6.14_darwin_amd64.zip"
    sha256 "9334f55a549d5cb3c583430be15e73b407bd7e115dc53db290381a482da17788"
  end

  depends_on arch: [:x86_64]
end
