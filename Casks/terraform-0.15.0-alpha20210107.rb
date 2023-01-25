cask "terraform-0.15.0-alpha20210107" do
  version "0.15.0-alpha20210107"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-alpha20210107/terraform_0.15.0-alpha20210107_darwin_amd64.zip"
    sha256 "aa26215c955041732313a82a1f65174e5ddc20f27c857b46a90867602ea48423"
  end

  depends_on arch: [:x86_64]
end
