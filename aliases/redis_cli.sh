# keys *
# flushall

# require 'sidekiq/api'
# Sidekiq::Queue.new # the "default" queue
# Sidekiq::Queue.new("mailer")
# .size
# .clear

# type <key>
# string -> GET <key>
# hash -> HGETALL <key>
# lists -> lrange <key> <start> <end>
# sets -> smembers <key>
# sorted sets -> ZRANGEBYSCORE <key> <min> <max>
