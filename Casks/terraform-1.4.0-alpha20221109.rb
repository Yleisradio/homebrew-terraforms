cask "terraform-1.4.0-alpha20221109" do
  version "1.4.0-alpha20221109"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.0-alpha20221109/terraform_1.4.0-alpha20221109_darwin_amd64.zip"
    sha256 "3c34e6b6f2afd4847bf6bc76f3dc5630df655d0469a699f3cdf4d0ee11c7505f"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.0-alpha20221109/terraform_1.4.0-alpha20221109_darwin_arm64.zip"
    sha256 "4537eb0228b27abb1bc1935e0ced1bb735b57d4e76a2f7d2ab243fe62fafd8c0"
  end

  depends_on arch: [:x86_64, :arm64]
end
