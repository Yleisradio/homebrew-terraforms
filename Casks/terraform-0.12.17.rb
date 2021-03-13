cask "terraform-0.12.17" do
  version "0.12.17"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.17/terraform_0.12.17_darwin_amd64.zip"
    sha256 "b0ab66e77bac3abcd8b36afa5e567ab4fef103fc21c4a223c954c4ea60f5d244"
  end

  depends_on arch: [:x86_64]
end
