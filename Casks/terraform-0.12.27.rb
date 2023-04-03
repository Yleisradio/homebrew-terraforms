cask "terraform-0.12.27" do
  version "0.12.27"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.27/terraform_0.12.27_darwin_amd64.zip"
    sha256 "06eaab0bc3451b4d2f7feb47f5587399702d19b9044f5705dc76ad77b401e26f"
  end

  depends_on arch: [:x86_64]
end
