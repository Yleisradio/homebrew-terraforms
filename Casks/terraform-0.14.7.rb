cask "terraform-0.14.7" do
  version "0.14.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.7_darwin_amd64.zip"
    sha256 "8a5ec04afcc9c2653bb927844eb76ad51e12bcaec0638103512d7b160dd530ea"
  end

  depends_on arch: [:x86_64]
end
