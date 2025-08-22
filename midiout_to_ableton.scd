MIDIClient.init;
MIDIClient.destinations;


m = MIDIOut.new(2);

(
r = Routine{
	m.noteOn(60, 60, 60).yield;
	m.noteOff(60, 60, 60).yield;
};

c = TempoClock.new;
c.beats = 120 / 12;

fork {
    inf.do {
        r.value.postln;
		c.beats2secs.wait;
		//r.reset;
    }
}
);
bpm