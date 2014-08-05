mixin class Audio {

  abstract Int volume

  Void incrementVolume() { 
	volume += 1 
  }

  Void decrementVolume() { 
	volume -= 1 
  }
}

class Television : Audio
{
  // volume is abstract so has to be implemented
  override Int volume := 0
}


