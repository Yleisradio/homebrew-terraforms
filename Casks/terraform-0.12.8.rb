cask "terraform-0.12.8" do
  version "0.12.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.8/terraform_0.12.8_darwin_amd64.zip"
    sha256 "f4b80a1b04246c9b7cf2689a69f8f68f9b07e53b568c1329bcc8cd87dcd38e39"
  end

  depends_on arch: [:x86_64]
end
