cask "terraform-0.12.7" do
  version "0.12.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.7/terraform_0.12.7_darwin_amd64.zip"
    sha256 "5cb59cdc4a8c4ebdfc0b8715936110e707d869c59603d27020e33b2be2e50f21"
  end

  depends_on arch: [:x86_64]
end
