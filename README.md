# Heartland Takehome Assessment

### Prerequisites
This project expects the following tools installed on your devise.
- Ruby [2.7](https://www.ruby-lang.org/en/news/2019/12/25/ruby-2-7-0-released/)

## Install
### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.7.1`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

Clone the respository and run the project:

```shell
rbenv install 2.7.1
```

### Run project

```shell
ruby solution.rb
```

### Test different strings

New photo names can be added in the existing files string separated by a new line, or new strings can be created to test different
photo names and combinations.

You can create a new photo names string like this:
```
files2 = "photo1.jpg, London, 2013-09-05 14:08:15
Test.png, London, 2015-06-20 15:13:22
Sample.png, Paris, 2013-09-05 14:07:13
Eiffel.jpg, Florianopolis, 2015-07-23 08:03:02
pisatower.jpg, Florianopolis, 2015-07-22 23:59:59
BOB.jpg, London, 2015-08-05 00:02:03
Delete.jpg, Paris, 2016-02-29 22:13:11"
```

Then call the solution method passing this new string to test its output: `puts solution(files2)`

That's it! You're good to go :)
