cask "terraform-0.12.24" do
  version "0.12.24"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_darwin_amd64.zip"
    sha256 "72482000a5e25c33e88e95d70208304acfd09bf855a7ede110da032089d13b4f"
  end

  depends_on arch: [:x86_64]
end
