cask "terraform-0.11.2" do
  version "0.11.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.2/terraform_0.11.2_darwin_amd64.zip"
    sha256 "ff5c3c4bcfe84e011b96a2232704b2db196383ce5d4a32e47956c883ddc94bac"
  end

  depends_on arch: [:x86_64]
end
