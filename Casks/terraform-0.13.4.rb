cask "terraform-0.13.4" do
  version "0.13.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.4/terraform_0.13.4_darwin_amd64.zip"
    sha256 "d16d3094b0f9f56d7e05b4c09a923141a483f51e58613ae64507b0f7ba45bb34"
  end

  depends_on arch: [:x86_64]
end
