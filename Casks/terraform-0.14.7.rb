cask "terraform-0.14.7" do
  version "0.14.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.7_darwin_amd64.zip"
    sha256 "bd4afbb92cfc99f3f7e81412536e1aa9bafd6544a87454286d9e9f6ab446179a"
  end

  depends_on arch: [:x86_64]
end
