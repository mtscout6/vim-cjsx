React.createClass
  baseline: () ->
    singleQuote='value'
    doubleQuote="value"
    calculatedAttr=this.props['prop-name']
    interpolatedAttr="CoffeeScript supports #{string.interpolation}"
    invalidInterpolatedAttr='CoffeeScript supports #{string.interpolation}'
    funcCall=props.func(arg1, arg2)
    anonFuncCall=(() -> props.func(arg1, arg2))()
    integers=12345
    decimal=123.45
    negative=-12345
    positive=+12345
    { hello.test['props'] }
  render: () ->
    # This should have xml like syntax highlighting
    <div single-quote-attr='value' /> # Selection does not continue here

    <div double-quote-attr="value" />

    <div calculated-attr={ this.props['prop-name'] } />

    <div interpolated-attr="CoffeeScript supports #{string.interpolation}" />

    <div invalid-interpolated-attr='CoffeeScript supports #{string.interpolation}' />

    <div func-call={ props.func(arg1, arg2, () -> 1 + 1) } />

    <div anon-func-call={ (() -> five = 3)() } />

    <div integers=12345 />

    <div decimal=123.45 />

    <div negative=-12345 />

    <div positive=+12345 />
    <div positive=+12345></div>

    <div single-quote-attr='value'
         double-quote-attr="value"
         func-call={ this.props.func(arg1, arg2, () -> 1 + 1) }
         calculated-attr={ this.props['prop-name'] }
         interpolated-attr="CoffeeScript supports #{string.interpolation}"
         invalid-interpolated-attr='CoffeeScript supports #{string.interpolation}'
         func-call={ this.props.func(arg1, arg2) }
         anon-func-call={ (() -> 3)() }
         integers=12345
         decimal=123.45
         negative=-12345
         positive=+12345>
      test jsx text &nbsp; &gt;
      # test comment does not render
      "test interpolation #{should not work}"
      { this.props.func(arg1, arg2, () -> 1 + 1) }
      { this.props['prop-name'] }
      { (() -> five = 3)() }
      { # Should not highlight as html entity
        &nbsp; 
      }
    </div>

  # Should not highlight this by itself?
  &nbsp;

  exports
