# Leaf Green Area Analysis - Visual Flowchart

## Mermaid Flowchart

```mermaid
flowchart TD
    A[START: Close AllOpen Images] --> B[Open Leaf Sample Image]
    B --> C[Set Scale<br/>59px = 10mm]
    C --> D[Configure Measurements<br/>Area, Display, 3 decimals]
    D --> E[Crop Image<br/>ROI: 6,89,496,342]
    E --> F[Color Deconvolution<br/>RGB Separation]
    F --> G[Select Green Channel<br/>Colour_2]
    
    G --> H{Analysis Branches}
    
    H --> I[GREEN AREA ANALYSIS]
    H --> J[TOTAL LEAF AREA ANALYSIS]
    
    I --> I1[Duplicate to<br/>'leaf-green_area']
    I1 --> I2[Apply MEAN Threshold]
    I2 --> I3[Convert to Binary Mask]
    I3 --> I4[Analyze Particles<br/>Green Areas]
    
    J --> J1[Duplicate to<br/>'leaf-total_area']
    J1 --> J2[Apply PERCENTILE Threshold]
    J2 --> J3[Convert to Binary Mask]
    J3 --> J4[Keep Largest Region Only]
    J4 --> J5[Analyze Particles<br/>Total Area]
    
    I4 --> K[Calculate Image Difference<br/>Green - Total]
    J5 --> K
    
    K --> L[Invert LUT for Visualization]
    L --> M[Tile Images for Display]
    M --> N[END: Results Displayed]
    
    style A fill:#ccffcc        
    style N fill:#ffcccc
    style I fill:#e6ffe6
    style J fill:#e6f2ff
    style H fill:#fff2e6
    style K fill:#ffe6f2
```



## Process Summary Table

| Step | Process | Input | Output | Purpose |
|------|---------|-------|--------|---------|
| 1 | Image Setup | Raw leaf image | Scaled, cropped image | Prepare for analysis |
| 2 | Color Separation | RGB image | Individual color channels | Isolate green information |
| 3a | Green Analysis | Green channel | Binary mask (green areas) | Identify healthy tissue |
| 3b | Total Analysis | Green channel | Binary mask (leaf outline) | Identify total leaf area |
| 4 | Particle Analysis | Binary masks | Area measurements | Quantify regions |
| 5 | Comparison | Both measurements | Difference calculation | Calculate damage percentage |
| 6 | Visualization | All results | Tiled display | Present final results |

## Key Measurements Output

- **Green Area (mm²)**: Healthy chlorophyll-containing regions
- **Total Area (mm²)**: Complete leaf outline  


## Mermaid State Diagram - Analysis States

```mermaid
stateDiagram-v2
    [*] --> ImageLoaded : Open Leaf Sample
    ImageLoaded --> Scaled : Set Scale (59px = 10mm)
    Scaled --> Configured : Configure Measurements
    Configured --> Cropped : Crop ROI (6,89,496,342)
    Cropped --> ColorSeparated : RGB Deconvolution
    ColorSeparated --> GreenSelected : Select Green Channel
    
    GreenSelected --> GreenAnalysis : Branch 1
    GreenSelected --> TotalAnalysis : Branch 2
    
    state GreenAnalysis {
        [*] --> GreenDuplicated : Duplicate Image
        GreenDuplicated --> GreenThresholded : Mean Threshold
        GreenThresholded --> GreenMasked : Convert to Mask
        GreenMasked --> GreenAnalyzed : Analyze Particles
    }
    
    state TotalAnalysis {
        [*] --> TotalDuplicated : Duplicate Image
        TotalDuplicated --> TotalThresholded : Percentile Threshold
        TotalThresholded --> TotalMasked : Convert to Mask
        TotalMasked --> LargestKept : Keep Largest Region
        LargestKept --> TotalAnalyzed : Analyze Particles
    }
    
    GreenAnalyzed --> DifferenceCalculated : Merge Results
    TotalAnalyzed --> DifferenceCalculated : Merge Results
    DifferenceCalculated --> Visualized : Invert LUT
    Visualized --> Displayed : Tile Images
    Displayed --> [*] : Analysis Complete
```
