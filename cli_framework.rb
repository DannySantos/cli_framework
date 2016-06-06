def instant_gets
  begin
    system("stty raw -echo")
    str = STDIN.getc
  ensure
    system("stty -raw echo")
  end
end

def indent(content, spaces = 30)
  print "#{" "*spaces} #{content}"
end

def blank_indent(spaces = 44)
  print "#{" "*spaces}"
end

def br(breaks = 1)
  breaks.times do
    puts ""
  end
end

def centre(content, width = 80)
  if content.length < width
    indent_length = (width / 2.0) - (content.length / 2.0)
  else
    indent_length = width
  end
  " "*indent_length + content
end

def hr(type = "-")
  if type == "="
    ("="*80)+"\n"
  else
    ("-"*80)+"\n"
  end
end

def invalid_command
  br
  indent("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",10)
  indent("!!                                                                                          !!",10)
  indent("!!                                      INVALID COMMAND!                                    !!", 10)
  indent("!!                                                                                          !!", 10)
  indent("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!", 10)
  br(2)
end
