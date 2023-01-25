cask "terraform-0.12.25" do
  version "0.12.25"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.25/terraform_0.12.25_darwin_amd64.zip"
    sha256 "6c5160a6e1ede47be445d4c4f48e77da4a2f508e278738cb0ccc6c3104102783"
  end

  depends_on arch: [:x86_64]
end
