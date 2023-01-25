cask "terraform-1.3.0-alpha20220622" do
  version "1.3.0-alpha20220622"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220622/terraform_1.3.0-alpha20220622_darwin_amd64.zip"
    sha256 "e43e825551dc5e1db5c0317e199df223247ea2bdb34ae848ace186e975e807b6"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220622/terraform_1.3.0-alpha20220622_darwin_arm64.zip"
    sha256 "342a902b19c83e3f1ffe875821aa74449b5142ca11406b76b00c9fef44391c4f"
  end

  depends_on arch: [:x86_64, :arm64]
end
