<?php include("logged-in.php"); ?>
<html>
        <head>
                <title>Tour Planner</title>
                <link rel="stylesheet" href="style.css">
                <link rel="preconnect" href="https://fonts.gstatic.com">
                <link href="https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap" rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Knewave&display=swap" rel="stylesheet">
        </head>

        <body>
		<main>
			<center>
				<h1>Hi <?php echo $user["Name"];?> !!!</h1>
				<fieldset>
					<legend>Details</legend>
					<table>
						<tr>
							<th align="right">Name : </th>	
							<td><?php echo $user["Name"] ?></td>
						</tr>
						<tr>
							<th align="right">Age : </th>	
							<td><?php echo $user["Age"] ?></td>
						</tr>
						<tr>
							<th align="right">Gender : </th>	
							<td><?php echo $user["Gender"] ?></td>
						</tr>
						<tr>
							<th align="right">Home State : </th>	
							<td><?php echo $user["Home State"] ?></td>
						</tr>
						<tr>
							<th align="right">Contact : </th>	
							<td><?php echo $user["Contact"] ?></td>
						</tr>
					</table>
				</fieldset>	
                        </center>
                </main>
        </body>
</html>
