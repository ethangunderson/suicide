**Suicide**

When method missing is called, it searches object space for the first object that responds. Partially inspired from Suicide Linux(http://qntm.org/suicide)

**Installation**

gem install suicide

**Usage**
    require 'rubygems'
    require 'suicide'

    class Foo
      def baz
        puts 'omg wtf'
      end
    end

    class Bar
    end

    Foo.new
    Bar.new.baz

**Author**

Ethan Gunderson <ethan@ethangunderson.com>