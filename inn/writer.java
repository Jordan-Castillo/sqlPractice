/*
 * By: Jordan Castillo
 * Date: 10 / 1 / 17
 * */
import java.io.*;
import java.util.*;

public class writer{
	public static void main(String[] args) {
		int numCat = 9;
		String dataFILENAME = "Reservations.csv";
		String outputFILENAME = "INN-build-Reservations.sql";
		String insertString = "INSERT INTO reservationsList(reservationCode, roomID, checkInDate, checkOutDate, priceRate, lastName, firstName, numAdults, numKids) VALUES(";
		try {
			FileReader fr = new FileReader(dataFILENAME);
			BufferedReader br = new BufferedReader(fr);

			FileWriter fw = new FileWriter(outputFILENAME);
			BufferedWriter bw = new BufferedWriter(fw);
				
			String currentLine = "";
			String delim = "[,]+";
			String builder = "";
			currentLine = br.readLine(); //Skip the first line	
			while((currentLine = br.readLine()) != null)
			{
				String[] temp = currentLine.trim().split(delim);
				//System.out.println(numCat + " " + temp.length);
				if(temp.length == numCat)
				{
					bw.write(insertString);
					for(int i = 0; i < numCat; i++)
					{
						builder = (i < (numCat - 1)) ? temp[i] + ", " : temp[i];
						bw.write(builder);
					}
					bw.write(");\n");
				}
				//bw.write(insertString + temp[0] + ", " + temp[1] + ", " + temp[2] + ", " + temp[3] + ", " + temp[4] + ", " + temp[5] + ");\n");
			}//closing while loop
		br.close();
		bw.close();
		}//closing try block
		catch(IOException e) {
			e.printStackTrace();
		}//closing catch block			
		return;
	}//closing main
}//closing writer
