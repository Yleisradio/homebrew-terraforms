cask "terraform-0.12.10" do
  version "0.12.10"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.10/terraform_0.12.10_darwin_amd64.zip"
    sha256 "70692a1221848c8a6f29972e89eaaf400ecc2aa33708b9ed14a17957e3845533"
  end

  depends_on arch: [:x86_64]
end
