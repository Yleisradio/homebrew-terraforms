cask "terraform-1.3.0-alpha20220622" do
  version "1.3.0-alpha20220622"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220622/terraform_1.3.0-alpha20220622_darwin_amd64.zip"
    sha256 "2b6b1fcff71c20c408e1b3cbee8236645898e24e64006e6c999cb2ec9a6f610c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220622/terraform_1.3.0-alpha20220622_darwin_arm64.zip"
    sha256 "757eee385bd67ca1878ffd51e2e61c156027ea371510bd10aea3d8f532b27983"
  end

  depends_on arch: [:x86_64, :arm64]
end
