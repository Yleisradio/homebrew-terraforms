cask "terraform-0.12.10" do
  version "0.12.10"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.10/terraform_0.12.10_darwin_amd64.zip"
    sha256 "1a4f17da540d68c015d693f8a88dd873b514bdfe1d65dfbf6f7a0af3768c3104"
  end

  depends_on arch: [:x86_64]
end
