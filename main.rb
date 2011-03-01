require 'rubygems'
require 'gosu'
require 'yaml'

Dir.glob(File.join("game", "*.rb")).each {|file|  require file }
Dir.glob(File.join("lib", "*.rb")).each {|file|  require file }

config = YAML::load(File.open("config/config.yml"))

#Add lib includes here
include Util

game = Pario_test.new(config["screen_height"], config["screen_width"])
game.show
