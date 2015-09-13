class BlockSite
  #/etc/hosts

  def read
    File.open('/etc/hosts', 'r') do |buffer|
      while line = buffer.gets
        puts line
      end
    end
  end

  def add(web_page)
    File.open('/etc/hosts', 'a+') do |buffer|
      buffer.write('127.0.0.1'+ "\t" + web_page + "\n")
    end
  end

end
