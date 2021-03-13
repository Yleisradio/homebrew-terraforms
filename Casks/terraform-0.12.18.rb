cask "terraform-0.12.18" do
  version "0.12.18"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.18/terraform_0.12.18_darwin_amd64.zip"
    sha256 "dd6983cfe0d0922de51e019a80db2a270e8a2636b9f05b49bf7dcbfe7bd90ea9"
  end

  depends_on arch: [:x86_64]
end
