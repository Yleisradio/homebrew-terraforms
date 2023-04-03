cask "terraform-0.15.0-rc1" do
  version "0.15.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-rc1/terraform_0.15.0-rc1_darwin_amd64.zip"
    sha256 "57bd815c2e0ba101ab7bce3d00585430ec2e74d289dfbbe47e336551c48f914f"
  end

  depends_on arch: [:x86_64]
end
