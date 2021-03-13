cask "terraform-0.12.2" do
  version "0.12.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.2/terraform_0.12.2_darwin_amd64.zip"
    sha256 "f0cc23bc6ec1a5adc4043108ff5c79c2bddcdc70b056bd207defca1ae386d477"
  end

  depends_on arch: [:x86_64]
end
