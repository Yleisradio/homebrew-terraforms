cask "terraform-0.12.0-beta1" do
  version "0.12.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.0-beta1/terraform_0.12.0-beta1_darwin_amd64.zip"
    sha256 "2da57018c25ada511b7131d85257f534030eddf23b347663af4c4ca89d3d9220"
  end

  depends_on arch: [:x86_64]
end
