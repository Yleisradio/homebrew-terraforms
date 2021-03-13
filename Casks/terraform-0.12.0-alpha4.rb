cask "terraform-0.12.0-alpha4" do
  version "0.12.0-alpha4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    # XXX: Strange URL for 0.12.0-alpha3
    url "https://releases.hashicorp.com/terraform/0.12.0-alpha3/terraform_0.12.0-alpha3_terraform_0.12.0-alpha3_darwin_amd64.zip"
    sha256 "027d468deb4898036b10aa0654717da6efca315aa636a2d156cb87404d89daef"
  end

  depends_on arch: [:x86_64]
end
