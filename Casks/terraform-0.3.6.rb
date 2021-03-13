cask "terraform-0.3.6" do
  version "0.3.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.3.6/terraform_0.3.6_darwin_amd64.zip"
    sha256 "65b4c5bfc34bb0464b691b31ac554132c87ac0c5d7acef936c039777a27dccad"
  end

  depends_on arch: [:x86_64]
end
