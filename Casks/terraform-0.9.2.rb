cask "terraform-0.9.2" do
  version "0.9.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.9.2/terraform_0.9.2_darwin_amd64.zip"
    sha256 "33d9bbe1516a4085998c74d5a265aa0354d29a11eb56a21611dbcc806aec9c6f"
  end

  depends_on arch: [:x86_64]
end
