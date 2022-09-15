cask "terraform-1.3.0-rc1" do
  version "1.3.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-rc1/terraform_1.3.0-rc1_darwin_amd64.zip"
    sha256 "a4583ddee28cb4c3bcade0b093755c9894d56546753edd1765669e993b764f83"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-rc1/terraform_1.3.0-rc1_darwin_arm64.zip"
    sha256 "615c3c56077fafdc68786fd7732f176330381c838b380f1695b9861f6ee2505f"
  end

  depends_on arch: [:x86_64, :arm64]
end
