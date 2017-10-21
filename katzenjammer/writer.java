/*
 * By: Jordan Castillo
 * Date: 10 / 1 / 17
 * */
import java.io.*;
import java.util.*;

public class writer{
	public static void main(String[] args) {
		String dataFILENAME = "Performance.csv";
		String outputFILENAME = "KATZENJAMMER-build-Performance.sql";
		String insertString = "INSERT INTO performanceList(songID, bandmateID, stagePosition) VALUES(";
		try {
			FileReader fr = new FileReader(dataFILENAME);
			BufferedReader br = new BufferedReader(fr);

			FileWriter fw = new FileWriter(outputFILENAME);
			BufferedWriter bw = new BufferedWriter(fw);
				
			String currentLine = "";
			String delim = "[,]+";
			currentLine = br.readLine(); //Skip the first line	
			while((currentLine = br.readLine()) != null)
			{
				String[] temp = currentLine.split(delim);
				
			//	for(int i = 0; i < temp.length; i++)
			//	{
			//		if(i <= 1)
			//			temp[i] = temp[i].replaceAll("\'","");
			//	}//closing for loop
				if(temp.length == 3)
				bw.write(insertString + temp[0] + ", " + temp[1] + ", " + temp[2]/* + ", " + temp[3] + ", " + temp[4]*/ + ");\n");
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
