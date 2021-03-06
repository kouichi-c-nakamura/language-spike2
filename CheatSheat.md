# Spike2

## Colors

+ Comments `[0,128,0]`
+ Keywords `[0,0,255]`
+ Builtin Functions ` [0,0,128]`
+ String `[255,0,0]`




## How To Develop a Package for GitHub’s Atom Code Editor

https://www.sitepoint.com/how-to-write-a-syntax-highlighting-package-for-atom/

`/Users/<usename>/.atom`



`/Users/<usename>/.atom/Packages/language-spike2/package.json`

`/Users/<usename>/.atom/Packages/language-spike2/grammaers/spike2.cson`

+ **Back slash `\` needs to be escaped by `\\`**



**Rules for class names**: http://manual.macromates.com/en/language_grammars.html#naming_conventions



------

https://discuss.atom.io/t/documentation-for-custom-language-grammar-syntax-highlighting/29387/2



TextMate tutorial: http://manual.macromates.com/en/language_grammars



https://github.com/JamesRitchie/language-matlab/blob/master/grammars/m.cson



**language-sampleGrammar.cson**

 https://gist.github.com/DamnedScholar/622926bcd222eb1ddc483d12103fd315#file-language-samplegrammar-cson



```coffeescript
# TextMate tutorial: http://manual.macromates.com/en/language_grammars

# Regex to convert keys to unquoted: '(include|match|captures|begin|end|beginCaptures|endCaptures|name|patterns|0|1|2|3|4|5|6|7|8|9|comment|fileTypes|scopeName|repository|contentName|firstLineMatch|foldingStartMarker|foldingStopMarker)':

scopeName: 'source.<scope>' # <scope> should be a short, unique indicator for the language ("js", "php", "c", etc.)
name: '<name>' # The title that will show up in grammar selection and on your status bar.
fileTypes: [ # An array of file extensions.
  'txt'
  'exif'
]
firstLineMatch: '' # A regular expression that is matched against the first line of the document when Atom is trying to decide if the grammar is appropriate. Useful for shell scripts, mostly.
foldingStartMarker: '' # A regular expression that checks for the start of a foldable area (such as `{`).
foldingStopMarker: '' # A regular expression that checks for the end of a foldable area (such as `}`). If both folding markers are matched in the same line, there will be no foldable area.
patterns: [ # An array of individual pattern declarations.
  {
    match: '' # A regular expression that matches some content. Optional.
    begin: '' # A regular expression that precedes the content. Optional.
    end: '' # A regular expression that follows the content. Optional.
    name: '' # A period-delimited list of classes that will be applied to the content identified by `match`. Optional.
    contentName: '' # A period-delimited list of classes that will be applied to the content within `begin` and `end`. Optional.
    captures: # An array of `name` designations for `match` expressions that capture multiple bits. Optional.
      0: # Arrays start at zero. This one will catch the whole regex. 1+ will catch the capture groups.
        name: '' # This should be self-explanatory by now.
    beginCaptures: # An array of `name` designations for `begin` expressions that capture multiple bits. Optional.
      0:
        name: ''
    endCaptures: # An array of `name` designations for `end` expressions that capture multiple bits. Optional.
      0:
        name: ''
    include: '' # This can be a reference to another grammar (by scope name), the current grammar (with `$self`), or a rule from the grammar's repository (with `#<rule>`). Optional.
    patterns: [] # This is where you can get tricky. When you have matched content, Atom will search within it for anything in the child array. You can have `patterns[]` within `patterns[]`, then throw an `include` in to jump to some other rule or refer back to the root of the grammar. If you are making a rule that captures a block that might contain other tags, you should refer back to the root. Optional, naturally.
  }
  {
    match: ''
    begin: ''
    end: ''
    name: ''
    contentName: ''
    captures:
      0:
        name: ''
    beginCaptures:
      0:
        name: ''
    endCaptures:
      0:
        name: ''
    include: ''
  }
]
repository: # An array of rules. If you're going to be referencing one bit of code over and over again, stick it here so that you can edit all in one place.
  ruleName: # Can be anything.
    {
      name: ''
      match: ''
      end: ''
      endCaptures:
        0:
          name: ''
    }
```



# publish



1.  Open `Terminal` and go to the repository using `cd` command
2.  use `apm publish patch` , `apm publish minor`, or `apm publish major` with GitHub login details
3.  https://discuss.atom.io/t/cannot-use-apm-publish-minor-the-header-content-contains-invalid-characters/46283/5