cask "terraform-1.4.0-alpha20221109" do
  version "1.4.0-alpha20221109"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.0-alpha20221109/terraform_1.4.0-alpha20221109_darwin_amd64.zip"
    sha256 "98f4cbc43bd66b9d85476c4c61561a7b812346740fadea3276afa74a3ee4daeb"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.0-alpha20221109/terraform_1.4.0-alpha20221109_darwin_arm64.zip"
    sha256 "7116338bc56f5eeaf7db07e6868a79f766bbda1eefeaa9510a1d2d19cb92ceea"
  end

  depends_on arch: [:x86_64, :arm64]
end
