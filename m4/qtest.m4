define(`X', `this is a pen')
patsubst(patsubst(X, `\<',*),`\>',*)
patsubst(X, `\b', *)
translit(X,`a-z',`A-Z')
define(`_capitalize',`regexp(`$1',`\(\w\)\(\w*\)',`translit(`\1',`a-z',`A-Z')'`\2')')
define(`capitalize',`patsubst(`$1',`\w+',`_capitalize(\&)')')
capitalize(X)