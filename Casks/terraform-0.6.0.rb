cask "terraform-0.6.0" do
  version "0.6.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.0/terraform_0.6.0_darwin_amd64.zip"
    sha256 "c519d3d18d5a2b0605bff6e0ca7bb677ea85c833f8e8dbb4af6a48e0ebf76cad"
  end

  depends_on arch: [:x86_64]
end
