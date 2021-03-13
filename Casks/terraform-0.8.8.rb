cask "terraform-0.8.8" do
  version "0.8.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.8.8/terraform_0.8.8_darwin_amd64.zip"
    sha256 "55ab547539e68c9375c144062460457fcfdb3f5b9f412d3bb162f73298602d78"
  end

  depends_on arch: [:x86_64]
end
