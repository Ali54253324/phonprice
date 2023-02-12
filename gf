<!DOCTYPE html>
<html>
<head>
  <title>Mobile Features and Price Listing</title>
  <style>
    table {
      border-collapse: collapse;
      width: 100%;
    }

    th, td {
      border: 1px solid black;
      padding: 8px;
      text-align: left;
    }

    th {
      background-color: #f2f2f2;
    }
  </style>
</head>
<body>
  <h1>Mobile Features and Price Listing</h1>
  <table id="mobile-table">
    <tr>
      <th>Brand</th>
      <th>Model</th>
      <th>Features</th>
      <th>Price</th>
    </tr>
    <tr>
      <td>Apple</td>
      <td>iPhone 12</td>
      <td>5G connectivity, A14 Bionic chip, Dual-camera system</td>
      <td>$699</td>
    </tr>
    <tr>
      <td>Samsung</td>
      <td>Galaxy S21</td>
      <td>5G connectivity, Exynos 2100 processor, Triple-camera system</td>
      <td>$799</td>
    </tr>
    <tr>
      <td>Google</td>
      <td>Pixel 6</td>
      <td>5G connectivity, Google Titan M security chip, Dual-camera system</td>
      <td>$599</td>
    </tr>
  </table>

  <script>
    // Function to sort table by price in ascending or descending order
    function sortTable(n) {
      var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
      table = document.getElementById("mobile-table");
      switching = true;
      // Set the sorting direction to ascending
      dir = "asc"; 
      while (switching) {
        switching = false;
        rows = table.rows;
        for (i = 1; i < (rows.length - 1); i++) {
          shouldSwitch = false;
          x = rows[i].getElementsByTagName("TD")[n];
          y = rows[i + 1].getElementsByTagName("TD")[n];
          if (dir == "asc") {
            if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
              shouldSwitch = true;
              break;
            }
          } else if (dir == "desc") {
            if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
              shouldSwitch = true;
              break;
            }
          }
        }
        if (shouldSwitch) {
          rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
          switching = true;
          switchcount ++; 
        } else {
          if (switchcount == 0 && dir == "asc") {
            dir = "desc";
            switching =
