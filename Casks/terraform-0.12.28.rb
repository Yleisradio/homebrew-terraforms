cask "terraform-0.12.28" do
  version "0.12.28"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.28/terraform_0.12.28_darwin_amd64.zip"
    sha256 "893050bcfc5e7445acd3a30f1500227b989b29cbd958ca64a8233589194a198d"
  end

  depends_on arch: [:x86_64]
end
