// Ask user to select a folder
input = getDirectory("Choose a Folder");

// Get all files in the folder
list = getFileList(input);

// Loop through each file
for (i=0; i<list.length; i++) {

   // Check if it's a .tif file
   if (endsWith(list[i], ".tif")) {

       // Open image
       open(input + list[i]);

       // Convert to 8-bit
       run("8-bit");

       // Save with new name
       saveAs("Tiff", input + "converted_" + list[i]);

       // Close current image
       close();
   }
}
