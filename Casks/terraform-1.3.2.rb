cask "terraform-1.3.2" do
  version "1.3.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.2/terraform_1.3.2_darwin_amd64.zip"
    sha256 "3639461bbc712dc130913bbe632afb449fce8c0df692429d311e7cb808601901"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.2/terraform_1.3.2_darwin_arm64.zip"
    sha256 "80480acbfee2e2d0b094f721f7568a40b790603080d6612e19b797a16b8ba82d"
  end

  depends_on arch: [:x86_64, :arm64]
end
