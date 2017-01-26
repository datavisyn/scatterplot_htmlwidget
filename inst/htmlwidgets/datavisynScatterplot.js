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
        console.log(window);
        var data = HTMLWidgets.dataframeToD3(x.data);
        s = new datavisyn.scatterplot.Scatterplot(data, el, x.options);
      },

      resize: function(width, height) {
        el.style.width = width;
        el.style.height = height;
        s.update();
      }

    };
  }
});
