cask "terraform-0.15.4" do
  version "0.15.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.4/terraform_0.15.4_darwin_amd64.zip"
    sha256 "fe44710382dddb06b9fa113ed04018d022dae60ed44d9906a703b81cdfa6993a"
  end

  depends_on arch: [:x86_64]
end
