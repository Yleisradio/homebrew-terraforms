cask "terraform-0.6.1" do
  version "0.6.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.1/terraform_0.6.1_darwin_amd64.zip"
    sha256 "a06768862d1c3ee928d26961302c5134c9c8f716e567c4cf52fce85951f61bee"
  end

  depends_on arch: [:x86_64]
end
