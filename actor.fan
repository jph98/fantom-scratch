using concurrent

class Counter {
Void main()
{
    echo("\n--- echoCounter ---")

    // this actor stores state in context to keep
    // track of a simple counter everytime a message is received

    a := Actor(ActorPool()) |msg|
    {
      if (msg == "current") return Actor.locals["counter"]
      if (msg == "reset") { 
        Actor.locals["counter"] = 0; return null 
      }
      Actor.locals["counter"] = 1 + (Int)Actor.locals["counter"]
      return null  // ignored
    }

    // reset the counter to zero
    a.send("reset")

    // send 100 messages
    100.times { a.send(it) }

    // send the "get" message and block for result
    echo("Result " + a.send("current").get)
}
}
