Default completion:

  $ $MERLIN single complete-prefix -position 3:10 -filename test.ml \
  > -prefix fu < test.ml| jq ".value.entries[].name"
  "funnyny"

Keywords only:

  $ $MERLIN single complete-prefix -position 3:10 -filename test.ml \
  > -kind k -prefix fu < test.ml| jq ".value.entries[].name"
  "function"
  "fun"
  "functor"

Keywords and values:

  $ $MERLIN single complete-prefix -position 3:10 -filename test.ml \
  > -kind keyword -kind value -prefix fu < test.ml| jq ".value.entries[].name"
  "funnyny"
  "function"
  "fun"
  "functor"

Keywords only including extension:

  $ echo "f" | $MERLIN single complete-prefix -position 1:2 -filename test.ml \
  > -kind k -prefix f -extension lwt | jq ".value.entries[].name"
  "finally"
  "for_lwt"
  "function"
  "false"
  "fun"
  "for"
  "functor"

