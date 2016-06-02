def instant_gets
  begin
    system("stty raw -echo")
    str = STDIN.getc
  ensure
    system("stty -raw echo")
  end
end

def indent(content, spaces = "43")
  printf "%#{spaces}s %s\n", " ", "#{content}"
end

def blank_indent(spaces = "44")
  printf "%#{spaces}s", " "
end

def br(breaks = 1)
  breaks.times do
    puts ""
  end
end

def hr(type = "-")
  if type == "="
    indent("============================================================================================== ")
  else
    indent("---------------------------------------------------------------------------------------------- ")
  end
end

def invalid_command
  br
  indent("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
  indent("!!                                                                                          !!")
  indent("!!                                      INVALID COMMAND!                                    !!")
  indent("!!                                                                                          !!")
  indent("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
  br(2)
end