cask "terraform-0.12.18" do
  version "0.12.18"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.18/terraform_0.12.18_darwin_amd64.zip"
    sha256 "3a1416cb61322d327c34dd6858c5b61048a9142cf9038b5d008e1527fa74a3fc"
  end

  depends_on arch: [:x86_64]
end
