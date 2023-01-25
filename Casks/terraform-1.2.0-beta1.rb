cask "terraform-1.2.0-beta1" do
  version "1.2.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0-beta1/terraform_1.2.0-beta1_darwin_amd64.zip"
    sha256 "10ec4ede5a27b00920b430240348017bbf4c0c72d0cbdbfaa72f8bc8eca453c7"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0-beta1/terraform_1.2.0-beta1_darwin_arm64.zip"
    sha256 "dd3eb0103183e19d1370e6bad82bcbf4158efa658cb65fb0065e2e975812b76c"
  end

  depends_on arch: [:x86_64, :arm64]
end
