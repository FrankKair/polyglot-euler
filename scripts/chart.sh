#! /bin/bash
set -e

random_color () {
  openssl rand -hex 3
}

get_language_color () {
    case $1 in
    C)
      echo 555555
      ;;
    C++)
      echo f34b7d
      ;;
    Clojure)
      echo d95959
      ;;
    Crystal)
      echo 776791
      ;;
    D)
      echo ba595e
      ;;
    Elixir)
      echo 6b4b7a
      ;;
    Erlang)
      echo b83998
      ;;
    Futhark)
      echo ffffff
      ;;
    Go)
      echo 375eab
      ;;
    Groovy)
      echo e69f56
      ;;
    Haskell)
      echo 5e5086
      ;;
    Java)
      echo b07219
      ;;
    JavaScript)
      echo f1e05a
      ;;
    Julia)
      echo a270ba
      ;;
    Lua)
      echo 000080
      ;;
    OCaml)
      echo 3be133
      ;;
    Perl)
      echo 0298c3
      ;;
    Python)
      echo 3572A5
      ;;
    Red)
      echo f50000
      ;;
    Ruby)
      echo 701516
      ;;
    Rust)
      echo dea584
      ;;
    Scala)
      echo c22d40
      ;;
    Scheme)
      echo 1e4aec
      ;;
    Shell)
      echo 89e051
      ;;
    Swift)
      echo ffac45
      ;;
    TypeScript)
      echo 2b7489
      ;;
    *)
      random_color
      ;;
    esac
}

tmpfile=$(mktemp /tmp/linguist.XXXXXX)
github-linguist > $tmpfile

cat << EOF
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

cat $tmpfile | while read percentage language
    do echo "          ['$language', ${percentage%?}],"
done

cat << EOF
        ]);

        // Set chart options
        var options = {'title': 'Polyglot Euler Languages',
                       'width': 800,
                       'height': 600,
                       // is3D: true,
                       'colors': [
EOF

cat $tmpfile | while read percentage language
    do echo "                         '#`get_language_color $language`',"
done

cat << EOF
                       ],
                       'tooltip': {'text': 'percentage'},
                       'pieSliceText': 'none',
                       };

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

rm $tmpfile
