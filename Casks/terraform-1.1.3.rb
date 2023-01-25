cask "terraform-1.1.3" do
  version "1.1.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.3/terraform_1.1.3_darwin_amd64.zip"
    sha256 "6c6e5503b8a94286a6a883e3ff98777a9e372783bd1929db1377f70e9ce262c2"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.3/terraform_1.1.3_darwin_arm64.zip"
    sha256 "ebb664e8840e029f9112c7ce58cb4857a99585cdfef8cdda6490e8851ca88bc5"
  end

  depends_on arch: [:x86_64, :arm64]
end
