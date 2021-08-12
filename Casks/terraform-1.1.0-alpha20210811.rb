cask "terraform-1.1.0-alpha20210811" do
  version "1.1.0-alpha20210811"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210811/terraform_1.1.0-alpha20210811_darwin_amd64.zip"
    sha256 "fd2c4c8de79d7f1de30450f568996324ce68b9f07474eec14ada5112d7f80f5e"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210811/terraform_1.1.0-alpha20210811_darwin_arm64.zip"
    sha256 "00de1719528bad276ba987f0d41cddade327555d7626a9b32a7745e16ce02b53"
  end

  depends_on arch: [:x86_64, :arm64]
end
