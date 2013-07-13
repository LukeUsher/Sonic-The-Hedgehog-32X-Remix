Usage: smps2asm [-x|--extract [{pointer}]] [-u|--saxman] [-o|--offset {offsetval}] [-s|--sfx]
                {-v|--sonicver} {version} [-3|--s3kmode] {input_filename} {output_filename} {projname}

        -s,--sfx        File is SFX, not music.

        -u,--saxman     Not implemented yet; once it is, it will work as follows:
                        Assume Music file is Saxman-compressed. In most cases, this
                        should be combined with --offset 0x1380 --sonicver 2.

        -x,--extract    Extract from {pointer} address in file. This should never be
                        combined with --offset unless --saxman is also used.

        -o,--offset     Assumes starting pointer for music/sfx within its soundbank
                        is {offsetval}. Ignored if used with --sonicver 1.

        -v,--sonicver   Sets Sonic version to {version}. This also sets underlying
                        SMPS type. {version} can be '1' Sonic 1, '2' for Sonic 2 or
                        '3' for Sonic 3, '4' for Sonic & Knuckles, or '5' for Sonic
                        3D Blast.

        -3,--s3kmode    This flag is valid for Sonic 1 and Sonic 2 only; this will
                        cause all sequences of durations after a rest to be printed
                        with the rests shown explicitly.
                        WARNING: A smpsCall is assumed to set the note to something.
                        other than a rest; this assumption turns out to be correct
                        for all Sonic 1 and Sonic 2 songs and SFX, but it couldbe
                        wrong for another game with a compatible SMPS implementation.
                        Use with care.