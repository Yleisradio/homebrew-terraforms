cask "terraform-0.12.31" do
  version "0.12.31"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.31/terraform_0.12.31_darwin_amd64.zip"
    sha256 "c1a6ca04026cebe7849610037ebc960609484c25f47a58344efaa7fcd5be1e56"
  end

  depends_on arch: [:x86_64]
end
