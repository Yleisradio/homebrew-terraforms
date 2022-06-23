cask "terraform-1.3.0-alpha20220622" do
  version "1.3.0-alpha20220622"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220622/terraform_1.3.0-alpha20220622_darwin_amd64.zip"
    sha256 "81cf0bdef5d6cc90b3f9fb498abb53e029fe00c570bf6ba0b00d2d02ea60eaed"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220622/terraform_1.3.0-alpha20220622_darwin_arm64.zip"
    sha256 "281373c9f7cef1b488436d5dcacbb578f056a655db5302a4cd36760fb538d002"
  end

  depends_on arch: [:x86_64, :arm64]
end
