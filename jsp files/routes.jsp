<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bus Routes and Amounts</title>
    <style>
        /* Reset some default styles */
        body, html, div, table, th, td, h1 {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }

        .container {
            display: grid;
            grid-template-columns: repeat(2, 1fr); /* Two columns */
            gap: 20px; /* Gap between columns */
            max-width: 80%; /* Adjust max-width as needed */
            width: 100%;
            margin: 20px; /* Add margin for spacing */
        }

        h1 {
            text-align: center;
            margin-bottom: 4px;
            grid-column: span 2; /* Span across both columns */
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 5px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        @media (max-width: 768px) {
            .container {
                grid-template-columns: 1fr; /* One column for smaller screens */
            }
        }
    </style>
</head>
<body>
  <div class="container">
    <h1>Bus Routes and Amounts</h1>
    <table>
        <thead>
            <tr>
                <th>Route</th>
                <th>1 Semester Amount</th>
                <th>Year Amount</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Vijayawada</td>
                <td>24050</td>
                <td>38850</td>
            </tr>
            <tr>
                <td>Kalidindi</td>
                <td>15765</td>
                <td>25465</td>
            </tr>
            <tr>
                <td>Kankipadu</td>
                <td>22850</td>
                <td>36910</td>
            </tr>
            <tr>
                <td>Korukollu</td>
                <td>15310</td>
                <td>24725</td>
            </tr>
            <tr>
                <td>Vuyyuru</td>
                <td>14950</td>
                <td>24150</td>
            </tr>
            <tr>
                <td>Alluru</td>
                <td>13715</td>
                <td>22155</td>
            </tr>
            <tr>
                <td>Pamarru</td>
                <td>12450</td>
                <td>20105</td>
            </tr>
            <tr>
                <td>Gudivada</td>
                <td>10240</td>
                <td>16540</td>
            </tr>
            <tr>
                <td>Pedagonnuru</td>
                <td>12285</td>
                <td>19845</td>
            </tr>
            <tr>
                <td>Jonnapadu</td>
                <td>12285</td>
                <td>19845</td>
            </tr>
            <tr>
                <td>Singaraya Palam</td>
                <td>11180</td>
                <td>18060</td>
            </tr>
            <tr>
                <td>Hanuman Junction</td>
                <td>15435</td>
                <td>24940</td>
            </tr>
            <tr>
                <td>Srihari Puram</td>
                <td>10725</td>
                <td>17325</td>
            </tr>
        </tbody>
    </table>
    <table>
        <thead>
            <tr>
                <th>Route</th>
                <th>1 Semester Amount</th>
                <th>Year Amount</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Pedaparupudi</td>
                <td>12285</td>
                <td>19845</td>
            </tr>
            <tr>
                <td>Vadali</td>
                <td>10565</td>
                <td>17060</td>
            </tr>
            <tr>
                <td>Pedapalaparru</td>
                <td>12285</td>
                <td>19845</td>
            </tr>
            <tr>
                <td>Mudinepalli</td>
                <td>10240</td>
                <td>16540</td>
            </tr>
            <tr>
                <td>Avanigadda</td>
                <td>18525</td>
                <td>29925</td>
            </tr>
            <tr>
                <td>Kaikalur</td>
                <td>15435</td>
                <td>24940</td>
            </tr>
            <tr>
                <td>Mopidevi</td>
                <td>18330</td>
                <td>29610</td>
            </tr>
            <tr>
                <td>Challapalli</td>
                <td>17875</td>
                <td>28875</td>
            </tr>
            <tr>
                <td>Bhiravapatnam</td>
                <td>14820</td>
                <td>23940</td>
            </tr>
            <tr>
                <td>Chittorpu/Kodali</td>
                <td>16085</td>
                <td>25990</td>
            </tr>
            <tr>
                <td>Mandavalli</td>
                <td>14530</td>
                <td>23470</td>
            </tr>
            <tr>
                <td>Movva/Uchipudi</td>
                <td>13780</td>
                <td>22260</td>
            </tr>
            <tr>
                <td>Lingala/Perikegudem</td>
                <td>12805</td>
                <td>20685</td>
            </tr>
            <tr>
                <td>Kosuru</td>
                <td>14950</td>
                <td>24150</td>
            </tr>
            <tr>
                <td>Kanukollu</td>
                <td>11275</td>
                <td>18220</td>
            </tr>
            <tr>
                <td>Bantumilli</td>
                <td>15275</td>
                <td>24675</td>
            </tr>
            <tr>
                <td>Machilipatnam</td>
                <td>14120</td>
                <td>22840</td>
            </tr>
            <tr>
                <td>Tummidi</td>
                <td>13130</td>
                <td>21210</td>
            </tr>
            <tr>
                <td>Pedana</td>
                <td>8485</td>
                <td>13700</td>
            </tr>
            <tr>
                <td>Vadlamannadu</td>
                <td>4810</td>
                <td>7770</td>
            </tr>
        </tbody>
    </table>
  </div>
</body>
</html>
