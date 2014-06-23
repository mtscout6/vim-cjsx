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
    negative=-12345
    positive=+12345
    decimal=123.45
    decimalFront=.12345
    inifinty=Infinity
    notANumber=NaN
    hex=0x0123456789abcdef
    hex=0X0123456789abcdef
    binary=0b0101
    binary=0B0101
    octal=0o01234567
    octal=0O01234567
    { hello.test['props'] }
    (() -> five = 3)()
  render: () ->
    # This should have xml like syntax highlighting
    <div single-quote-attr='value' /> # Selection does not continue here

    <div double-quote-attr="value" />

    <div calculated-attr = { this.props['prop-name'] } />

    <div interpolated-attr="CoffeeScript supports #{string.interpolation}" />

    <div invalid-interpolated-attr='CoffeeScript supports #{string.interpolation}' />

    <div func-call= { props.func(arg1, arg2, () -> 1 + 1) } />

    <div anon-func-call={ (() -> five = 3)() } />

    <div integers=12345 />

    <div negative=-12345 />

    <div positive=+12345 />

    <div decimal=123.45 />

    <div decimal-front=.12345 />

    <div hex=0x0123456789abcdef />
    <div hex=0X0123456789abcdef />

    <div binary=0b0101 />
    <div binary=0B0101 />

    <div octal=0o01234567 />
    <div octal=0O01234567/>

    <div infinity=Infinity />
    <div not-a-number=NaN />

    <div positive=12345 >
      test
    </div>  #  test

    <div positive=12345>
      test
    </div>  #  test

#   Should comment this out
#   <div commented-out=true></div>

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
      test interpolation #{should not work}
      { this.props.func(arg1, arg2, () -> 1 + 1) }
      { this.props['prop-name'] }
      { (() -> five = 3)() }
      { # Should not highlight as html entity
        &nbsp;
      }
    </div>

    <div class='root'>
      <div />
    </div>

    <div class='root'>
      <div class='nested-1'>x</div>
    </div>

    <div class='root'>
      <div class='nested-1'></div>
    </div>

    <div class='root'>
      <div class='nested-1'>
        <div class='nested-2'></div>
        <br />
        <div class='nested-2'></div>
      </div>
    </div>

    <div class='root'>
      <div class='nested-1'>
        <div class='nested-2'></div>
      </div>
    </div>

    <div class='root'>
      <div class='nested-1'>
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

  # Should not highlight as html entity
  &nbsp;

  # Should be exited jsx syntax
  (() -> five = 3)()

  # Should render cjsx whem an argument in a function call
  React.renderComponent(
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
      test interpolation #{should not work}
      { this.props.func(arg1, arg2, () -> 1 + 1) }
      { this.props['prop-name'] }
      { (() -> five = 3)() }
      { # Should not highlight as html entity
        &nbsp;
      }
    </div>,
    document.getElementById 'content'
  )

  exports
