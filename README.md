# Spike2 script language support for Atom

[Spike2](http://ced.co.uk/products/spkovin) is a recording and analysis software for electrophysiology by [Cambridge Electric Design (CED)](http://ced.co.uk/).

This package allows you to use syntax highlighting for Spike2 script language in Atom.



## Syntax highlighting in Spike2 style

Add the following Less code to the file `styles.less` (menu: **Atom** > **Stylesheet…**)

The Atom editor should look like Spike2 script editor by this.

```less
// Spike2
atom-text-editor.editor {
  .syntax--source.syntax--spike2 {
    .syntax--comment {
      color: #007700;
      font-style: normal;
    }
    .syntax--string {
      color: red;
    }
    .syntax--keyword {
      color: blue;
    }
    .syntax--support.syntax--function {
      color: #000077;
    }
    .syntax--constant.syntax--numeric {
      color: red;
    }
  }
}
```



## Change log

+ Currently only supports syntax coloring.
+ Code folding is not supported.



## Contributors

+ [Kouichi C. Nakamura, Ph.D](https://github.com/kouichi-c-nakamura)