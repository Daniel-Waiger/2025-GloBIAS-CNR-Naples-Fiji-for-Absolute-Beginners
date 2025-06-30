# Leaf Green Area Analysis Workflow

This flowchart shows the step-by-step process of the ImageJ macro for analyzing green area in leaf images.

```mermaid
flowchart TD
    A[Start: Close all images] --> B[Open Leaf Sample Image]
    
    B --> C[Set Scale Using Line Tool<br/>83,55 to 142,55<br/>59 pixels = 10mm]
    
    C --> D[Configure Measurements<br/>Area, Display, 3 decimals]
    
    D --> E[Crop Image<br/>Rectangle: 6,89,496,342<br/>Create 'leaf-crop.jpg']
    
    E --> F[Colour Deconvolution<br/>RGB vectors<br/>Separate color channels]
    
    F --> G[Tile Images for Display]
    
    G --> H[Select Green Channel<br/>'leaf-crop.jpg-(Colour_2)']
    
    H --> I[Green Area Analysis Branch]
    H --> J[Total Area Analysis Branch]
    
    I --> I1[Duplicate to 'leaf-green_area.jpg']
    I1 --> I2[Apply Mean Threshold]
    I2 --> I3[Convert to Binary Mask]
    I3 --> I4[Analyze Particles<br/>Size: 3-Infinity<br/>Generate Green Area Results]
    
    J --> J1[Duplicate to 'leaf-total_area.jpg']
    J1 --> J2[Apply Percentile Threshold]
    J2 --> J3[Convert to Binary Mask]
    J3 --> J4[Keep Largest Region Only]
    J4 --> J5[Close Original Total Area Image]
    J5 --> J6[Analyze Particles<br/>Size: 3-Infinity<br/>Generate Total Area Results]
    
    I4 --> K[Calculate Image Difference<br/>Green Area - Total Area]
    J6 --> K
    
    K --> L[Invert LUT of Result]
    L --> M[Tile Final Images]
    M --> N[End: Display Results]
    
    style A fill:#ffcccc
    style N fill:#ccffcc
    style I fill:#e6ffe6
    style J fill:#e6f2ff
    style K fill:#fff2e6
```

## Step-by-Step Explanation

### 1. **Image Preparation**

- Close any open images
- Load the sample leaf image
- Set physical scale (59 pixels = 10mm)
- Configure measurement parameters

### 2. **Image Preprocessing**

- Crop the region of interest from the leaf image
- Apply color deconvolution to separate RGB channels
- Focus on the green channel (Colour_2) for analysis

### 3. **Green Area Analysis (Left Branch)**

- Duplicate the green channel
- Apply Mean auto-threshold
- Convert to binary mask
- Analyze particles to measure green areas

### 4. **Total Leaf Area Analysis (Right Branch)**

- Duplicate the green channel again
- Apply Percentile auto-threshold (different method)
- Convert to binary mask
- Keep only the largest region (main leaf outline)
- Analyze particles to measure total leaf area

### 5. **Comparison and Results**

- Calculate difference between green area and total area masks
- Invert the LUT for better visualization
- Tile all images for final display

## Key Measurements

- **Green Area**: Healthy/chlorophyll-containing regions
- **Total Area**: Complete leaf outline
- **Difference**: Areas that are leaf tissue but not green (damaged/senescent)

## Thresholding Methods Used

- **Mean Threshold**: For green area detection
- **Percentile Threshold**: For total leaf area detection
