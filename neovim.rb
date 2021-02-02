class Neovim < Formula
  desc "Ambitious Vim-fork focused on extensibility and agility"
  homepage "https://neovim.io/"
  version "v0.5.0-dev+1062-gcc1851c9f"
  url "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz"
  sha256 "afeb490e1bdf2d6724dfb5cae79f10f35680ed81629d5453722a96376690f343"
  license "Apache-2.0"


  def install
    system "cp", "-r", "bin", "lib", "share", "libs", "#{prefix}"
  end

  test do
    (testpath/"test.txt").write("Hello World from Vim!!")
    system bin/"nvim", "--headless", "-i", "NONE", "-u", "NONE",
                       "+s/Vim/Neovim/g", "+wq", "test.txt"
    assert_equal "Hello World from Neovim!!", (testpath/"test.txt").read.chomp
  end
end
