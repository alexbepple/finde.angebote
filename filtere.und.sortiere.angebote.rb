#!/usr/bin/env ruby

$LOAD_PATH.unshift File.dirname(__FILE__)

require 'offer'

names = ARGF.readlines
puts sort(filter(names))
