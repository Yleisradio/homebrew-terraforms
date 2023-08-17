cask "terraform-1.6.0-alpha20230816" do
  version "1.6.0-alpha20230816"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.6.0-alpha20230816/terraform_1.6.0-alpha20230816_darwin_amd64.zip"
    sha256 "265dc14d93397f0225fcc653dffef229eb31efe5529eae38cc7a4421da3b81f0"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.6.0-alpha20230816/terraform_1.6.0-alpha20230816_darwin_arm64.zip"
    sha256 "e8df6d86281175708a09ae80aaa82ff7845fc930b368b23d7630f0a45b696511"
  end

  depends_on arch: [:x86_64, :arm64]
end
