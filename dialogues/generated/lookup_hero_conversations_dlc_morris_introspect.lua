assert(DialogueLookup[DialogueLookup_n + 1] == nil)
assert(DialogueLookup[DialogueLookup_n + 2] == nil)
assert(DialogueLookup[DialogueLookup_n + 3] == nil)
assert(DialogueLookup[DialogueLookup_n + 4] == nil)
assert(DialogueLookup[DialogueLookup_n + 5] == nil)

DialogueLookup[DialogueLookup_n + 1] = "pwh_morris_introspection"
DialogueLookup[DialogueLookup_n + 2] = "pbw_morris_introspection"
DialogueLookup[DialogueLookup_n + 3] = "pdr_morris_introspection"
DialogueLookup[DialogueLookup_n + 4] = "pwe_morris_introspection"
DialogueLookup[DialogueLookup_n + 5] = "pes_morris_introspection"
DialogueLookup_n = DialogueLookup_n + 5

return
