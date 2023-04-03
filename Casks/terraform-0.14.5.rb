cask "terraform-0.14.5" do
  version "0.14.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.5/terraform_0.14.5_darwin_amd64.zip"
    sha256 "2edf2491d3b6a98949bb83b427713fdae14780ca9eeb2d6504e4a4325ba5383a"
  end

  depends_on arch: [:x86_64]
end
