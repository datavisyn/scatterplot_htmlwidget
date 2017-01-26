HTMLWidgets.widget({

  name: 'datavisynScatterplot',

  type: 'output',

  factory: function(el, width, height) {
    el.style.width = width;
    el.style.height = height;
    el.style.position = 'relative';
    el.style.overflow = 'auto';

	  var s = null;

    return {

      renderValue: function(x) {
        var data = HTMLWidgets.dataframeToD3(x.data);
        s = new datavisyn.scatterplot.Scatterplot(data, el, x.options);
        var elem = el.childNodes[0];
        elem.style.width='100%';
        elem.style.height='100%';
        s.render();
      },

      resize: function(width, height) {
        el.style.width = width;
        el.style.height = height;
        if (s) {
          s.render();
        }
      }

    };
  }
});
