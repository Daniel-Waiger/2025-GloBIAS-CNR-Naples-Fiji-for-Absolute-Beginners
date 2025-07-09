// ImageJ Macro to Plot Tracks from CSV File
// This macro imports a CSV file containing spot tracking data and plots the tracks

// Clear any existing results
run("Clear Results");
if (isOpen("Log")) {
    selectWindow("Log");
    run("Close");
}

// Open file dialog to select CSV file
csvPath = File.openDialog("Select CSV file with tracking data");
if (csvPath == "") {
    exit("No file selected");
}

// Open the CSV file
open(csvPath);

// Get the table name (filename without extension)
tableName = getTitle();
print("Processing table: " + tableName);

// Get number of rows in the table
nRows = Table.size;
print("Total rows in table: " + nRows);

// Find the first data row (skip headers)
dataStartRow = 0;
for (i = 0; i < nRows; i++) {
    trackID = Table.get("TRACK_ID", i);
    if (!isNaN(trackID)) {
        dataStartRow = i;
        break;
    }
}
print("Data starts at row: " + dataStartRow);

// Arrays to store all track data
allTrackIDs = newArray(nRows - dataStartRow);
allXPos = newArray(nRows - dataStartRow);
allYPos = newArray(nRows - dataStartRow);
allFrames = newArray(nRows - dataStartRow);

// Read all data from the table
dataIndex = 0;
for (i = dataStartRow; i < nRows; i++) {
    trackID = Table.get("TRACK_ID", i);
    xPos = Table.get("POSITION_X", i);
    yPos = Table.get("POSITION_Y", i);
    frame = Table.get("FRAME", i);
    
    if (!isNaN(trackID) && !isNaN(xPos) && !isNaN(yPos) && !isNaN(frame)) {
        allTrackIDs[dataIndex] = trackID;
        allXPos[dataIndex] = xPos;
        allYPos[dataIndex] = yPos;
        allFrames[dataIndex] = frame;
        dataIndex++;
    }
}

// Resize arrays to actual data size
allTrackIDs = Array.slice(allTrackIDs, 0, dataIndex);
allXPos = Array.slice(allXPos, 0, dataIndex);
allYPos = Array.slice(allYPos, 0, dataIndex);
allFrames = Array.slice(allFrames, 0, dataIndex);

print("Valid data points: " + dataIndex);

// Find unique track IDs
uniqueTrackIDs = newArray(0);
for (i = 0; i < allTrackIDs.length; i++) {
    trackID = allTrackIDs[i];
    isUnique = true;
    for (j = 0; j < uniqueTrackIDs.length; j++) {
        if (trackID == uniqueTrackIDs[j]) {
            isUnique = false;
            break;
        }
    }
    if (isUnique) {
        uniqueTrackIDs = Array.concat(uniqueTrackIDs, trackID);
    }
}

print("Number of unique tracks: " + uniqueTrackIDs.length);

// Sort unique track IDs
Array.sort(uniqueTrackIDs);

// Calculate plot limits
minX = allXPos[0];
maxX = allXPos[0];
minY = allYPos[0];
maxY = allYPos[0];
for (i = 0; i < allXPos.length; i++) {
    if (allXPos[i] < minX) minX = allXPos[i];
    if (allXPos[i] > maxX) maxX = allXPos[i];
    if (allYPos[i] < minY) minY = allYPos[i];
    if (allYPos[i] > maxY) maxY = allYPos[i];
}

// Add padding to plot limits
xRange = maxX - minX;
yRange = maxY - minY;
plotMinX = minX - 0.1 * xRange;
plotMaxX = maxX + 0.1 * xRange;
plotMinY = minY - 0.1 * yRange;
plotMaxY = maxY + 0.1 * yRange;

// Create plot
Plot.create("Track Visualization", "X Position (pixels)", "Y Position (pixels)");
Plot.setLimits(plotMinX, plotMaxX, plotMinY, plotMaxY);

// Define colors for cycling
colors = newArray("red", "blue", "green", "magenta", "cyan", "orange", "yellow", "pink", "black", "gray", "darkGray", "lightGray");

// Plot each track
for (trackIndex = 0; trackIndex < uniqueTrackIDs.length; trackIndex++) {
    currentTrackID = uniqueTrackIDs[trackIndex];
    
    // Find all points for this track
    trackXPos = newArray(0);
    trackYPos = newArray(0);
    trackFrames = newArray(0);
    
    for (i = 0; i < allTrackIDs.length; i++) {
        if (allTrackIDs[i] == currentTrackID) {
            trackXPos = Array.concat(trackXPos, allXPos[i]);
            trackYPos = Array.concat(trackYPos, allYPos[i]);
            trackFrames = Array.concat(trackFrames, allFrames[i]);
        }
    }
    
    // Sort points by frame
    // Create indices array for sorting
    indices = newArray(trackFrames.length);
    for (i = 0; i < indices.length; i++) {
        indices[i] = i;
    }
    
    // Simple bubble sort by frame
    for (i = 0; i < trackFrames.length - 1; i++) {
        for (j = 0; j < trackFrames.length - i - 1; j++) {
            if (trackFrames[j] > trackFrames[j + 1]) {
                // Swap frames
                temp = trackFrames[j];
                trackFrames[j] = trackFrames[j + 1];
                trackFrames[j + 1] = temp;
                
                // Swap corresponding X positions
                temp = trackXPos[j];
                trackXPos[j] = trackXPos[j + 1];
                trackXPos[j + 1] = temp;
                
                // Swap corresponding Y positions
                temp = trackYPos[j];
                trackYPos[j] = trackYPos[j + 1];
                trackYPos[j + 1] = temp;
            }
        }
    }
    
    // Normalize track to start at (0,0)
    if (trackXPos.length > 0) {
        startX = trackXPos[0];
        startY = trackYPos[0];
        for (k = 0; k < trackXPos.length; k++) {
            trackXPos[k] = trackXPos[k] - startX;
            trackYPos[k] = trackYPos[k] - startY;
        }
    }
    
    // Set color for this track
    colorIndex = trackIndex % colors.length;
    Plot.setColor(colors[colorIndex]);
    
    // Plot the track as connected lines
    if (trackXPos.length > 1) {
        Plot.add("connected circles", trackXPos, trackYPos);
    } else if (trackXPos.length == 1) {
        Plot.add("circles", trackXPos, trackYPos);
    }
    
    // Add track label at the first point
    if (trackXPos.length > 0) {
        Plot.addText("Track " + currentTrackID, trackXPos[0], trackYPos[0]);
    }
    
    // Calculate total distance for this track
    totalDistance = 0;
    for (k = 1; k < trackXPos.length; k++) {
        dx = trackXPos[k] - trackXPos[k-1];
        dy = trackYPos[k] - trackYPos[k-1];
        distance = sqrt(dx*dx + dy*dy); // Euclidean distance formula (Pythagorean theorem)
        totalDistance += distance;
    }
    
    print("Track " + currentTrackID + ": " + trackXPos.length + " points, distance: " + totalDistance);
}

// Show the plot
Plot.show();

// Print summary statistics
print("\n=== TRACK ANALYSIS SUMMARY ===");
print("Total tracks found: " + uniqueTrackIDs.length);
print("Total data points: " + dataIndex);
print("X range: " + minX + " to " + maxX);
print("Y range: " + minY + " to " + maxY);

// Build track IDs string manually
trackIDsString = "";
for (i = 0; i < uniqueTrackIDs.length; i++) {
    if (i > 0) trackIDsString += ", ";
    trackIDsString += uniqueTrackIDs[i];
}
print("Track IDs: " + trackIDsString);

// Calculate average points per track
totalPoints = 0;
for (trackIndex = 0; trackIndex < uniqueTrackIDs.length; trackIndex++) {
    currentTrackID = uniqueTrackIDs[trackIndex];
    pointCount = 0;
    for (i = 0; i < allTrackIDs.length; i++) {
        if (allTrackIDs[i] == currentTrackID) {
            pointCount++;
        }
    }
    totalPoints += pointCount;
}
averagePointsPerTrack = totalPoints / uniqueTrackIDs.length;
print("Average points per track: " + averagePointsPerTrack);

print("\nTrack visualization complete!");
