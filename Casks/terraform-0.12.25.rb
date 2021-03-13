cask "terraform-0.12.25" do
  version "0.12.25"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.25/terraform_0.12.25_darwin_amd64.zip"
    sha256 "179fc99ccea5ed3617e9e7026dcfa59a5916ea91162afd7a2acd8350906a0d68"
  end

  depends_on arch: [:x86_64]
end
