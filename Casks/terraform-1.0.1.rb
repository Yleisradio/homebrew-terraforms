cask "terraform-1.0.1" do
  version "1.0.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.1/terraform_1.0.1_darwin_amd64.zip"
    sha256 "32c5b3123bc7a4284131dbcabd829c6e72f7cc4df7a83d6e725eb97905099317"
  end

  depends_on arch: [:x86_64]
end
