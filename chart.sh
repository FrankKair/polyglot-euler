#! /bin/bash
set -e

FILENAME=chart.html

cat > $FILENAME << EOF
<html>
  <head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">

      // Load the Visualization API and the piechart package.
      google.load('visualization', '1.0', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Language');
        data.addColumn('number', 'Percentage');
        data.addRows([
EOF

linguist | while read percentage language
    do echo "          ['$language', ${percentage%?}]," >> $FILENAME
done

cat >> $FILENAME << EOF
        ]);

        // Set chart options
        var options = {'title':'Languages',
                       'width':800,
                       'height':600};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
  </head>

  <body>
    <!--Div that will hold the pie chart-->
    <div id="chart_div"></div>
  </body>
</html>
EOF

### open browser
#case $(uname) in
#   Darwin)
#      open -a /Applications/Google\ Chrome.app $FILENAME
#      ;;
#
#   Linux|SunOS)
#      firefox $FILENAME
#      ;;
#esac