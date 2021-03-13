cask "terraform-0.11.7" do
  version "0.11.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_darwin_amd64.zip"
    sha256 "6514a8fe5a344c5b8819c7f32745cd571f58092ffc9bbe9ea3639799b97ced5f"
  end

  depends_on arch: [:x86_64]
end
