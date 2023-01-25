cask "terraform-1.2.3" do
  version "1.2.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.3/terraform_1.2.3_darwin_amd64.zip"
    sha256 "667fb8897a3db7af97457df2300f628916ac41c0283d1b4d4816c73c04123e36"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.3/terraform_1.2.3_darwin_arm64.zip"
    sha256 "05a6dcbd285723d63a7e0ad63c5bc25da58888f32d5f4cfc3f2e057f1d3080ae"
  end

  depends_on arch: [:x86_64, :arm64]
end
