cask "terraform-0.14.0-beta1" do
  version "0.14.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-beta1/terraform_0.14.0-beta1_darwin_amd64.zip"
    sha256 "8ecff69cebdd6f5bb7448bff82813eb978c1c3714976e38ca7ef8115f259f3f7"
  end

  depends_on arch: [:x86_64]
end
