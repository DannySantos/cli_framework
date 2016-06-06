#CLI FRAMEWORK

CLI Framework is a basic command line interface framework containing methods for layout.

###instant_gets()
* Take one key as feedback without pressing Enter
```ruby
@menu_choice = instant_gets
```

###indent()
* Indent content x number of spaces
* Pass in your line of content as the first argument and the number of spaces that you would like to indent by as your second argument. Note that the default number of spaces is set to 30 making the second argument optional.
```ruby
indent("Main Menu", 20)
```

###blank_indent()
* Indent line without line break
* Useful in conjunction with instant_gets (needs to be 1 space more than regular indent for this)
```ruby
indent("Main Menu", 20)
blank_indent(21)
instant_gets
```
  
###centre()
* Centre content in a line.
* Default screen width is 80 but this is optional
```ruby
centre("Main Menu", 80)
```
  
###br()  
* Line break
* Optional: pass in number of line breaks
```ruby
indent("Main Menu", 20)
br(2)
blank_indent(21)
instant_gets
```

###hr()
* Horizontal rule
* Optional: pass in "=" for double line instead of single
```ruby
hr(=)
indent("Main Menu", 20)
br(2)
blank_indent(21)
instant_gets
```
  
###invalid_command()  
* Invalid command warning
* Uses br and indent to format
* Useful for menus in conjunction with case statements/until loops 
```ruby
   until menu_choice = "q"
     case menu_choice
     when "1"
       some_action
     when "2"
       some_other_action
     when "q"
       menu_choice
     else
       invalid_command
     end
   end
```
