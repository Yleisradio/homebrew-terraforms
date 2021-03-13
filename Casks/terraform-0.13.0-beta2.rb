cask "terraform-0.13.0-beta2" do
  version "0.13.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.0-beta2/terraform_0.13.0-beta2_darwin_amd64.zip"
    sha256 "4729fa267c5be7f1d0c19a85d36e2b4577f303866fc25403650acb4243c2021f"
  end

  depends_on arch: [:x86_64]
end
