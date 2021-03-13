cask "terraform-0.13.0-beta3" do
  version "0.13.0-beta3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.0-beta3/terraform_0.13.0-beta3_darwin_amd64.zip"
    sha256 "8e49d45da847120ea1e162d0b3fcd6b322e8dff419c6cc5cb535a3041a650391"
  end

  depends_on arch: [:x86_64]
end
