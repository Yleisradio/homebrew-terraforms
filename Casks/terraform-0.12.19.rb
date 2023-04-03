cask "terraform-0.12.19" do
  version "0.12.19"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.19/terraform_0.12.19_darwin_amd64.zip"
    sha256 "36a013a207a8fd0f23d07ee2cf8fb1ac0e547fccf94215e9d2b5d77862e7f758"
  end

  depends_on arch: [:x86_64]
end
