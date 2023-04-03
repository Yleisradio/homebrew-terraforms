cask "terraform-1.2.3" do
  version "1.2.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.3/terraform_1.2.3_darwin_amd64.zip"
    sha256 "bdc22658463237530dc120dadb0221762d9fb9116e7a6e0dc063d8ae649c431e"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.3/terraform_1.2.3_darwin_arm64.zip"
    sha256 "6f06debac2ac54951464bf490e1606f973ab53ad8ba5decea76646e8f9309512"
  end

  depends_on arch: [:x86_64, :arm64]
end
