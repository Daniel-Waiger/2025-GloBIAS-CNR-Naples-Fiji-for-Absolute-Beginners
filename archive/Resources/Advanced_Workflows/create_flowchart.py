#!/usr/bin/env python3
"""
Leaf Green Area Analysis Flowchart Generator
Creates a visual flowchart diagram for the ImageJ macro workflow
"""

import matplotlib.pyplot as plt
import matplotlib.patches as patches
from matplotlib.patches import FancyBboxPatch
import numpy as np

def create_leaf_analysis_flowchart():
    """Create a visual flowchart for the leaf analysis workflow"""
    
    # Create figure and axis
    fig, ax = plt.subplots(1, 1, figsize=(14, 20))
    ax.set_xlim(0, 14)
    ax.set_ylim(0, 22)
    ax.axis('off')
    
    # Define colors
    start_color = '#FFE6E6'  # Light red
    process_color = '#E6F3FF'  # Light blue
    analysis_color = '#E6FFE6'  # Light green
    decision_color = '#FFF2E6'  # Light orange
    end_color = '#E6E6FF'  # Light purple
    
    # Helper function to create boxes
    def create_box(x, y, width, height, text, color, fontsize=9):
        box = FancyBboxPatch((x-width/2, y-height/2), width, height,
                           boxstyle="round,pad=0.1", 
                           facecolor=color, edgecolor='black', linewidth=1)
        ax.add_patch(box)
        ax.text(x, y, text, ha='center', va='center', fontsize=fontsize, 
                wrap=True, fontweight='bold')
    
    # Helper function to create arrows
    def create_arrow(x1, y1, x2, y2):
        ax.annotate('', xy=(x2, y2), xytext=(x1, y1),
                   arrowprops=dict(arrowstyle='->', lw=1.5, color='black'))
    
    # Title
    ax.text(7, 21, 'Leaf Green Area Analysis Workflow', 
            ha='center', va='center', fontsize=16, fontweight='bold')
    
    # Step 1: Start
    create_box(7, 19.5, 3, 0.8, 'START\nClose All Images', start_color, 10)
    
    # Step 2: Open Image
    create_arrow(7, 19.1, 7, 18.4)
    create_box(7, 18, 3, 0.8, 'Open Leaf\nSample Image', process_color)
    
    # Step 3: Set Scale
    create_arrow(7, 17.6, 7, 16.9)
    create_box(7, 16.5, 3, 0.8, 'Set Scale\n(59px = 10mm)', process_color)
    
    # Step 4: Configure Measurements
    create_arrow(7, 16.1, 7, 15.4)
    create_box(7, 15, 3, 0.8, 'Configure\nMeasurements', process_color)
    
    # Step 5: Crop Image
    create_arrow(7, 14.6, 7, 13.9)
    create_box(7, 13.5, 3, 0.8, 'Crop Image\nROI: 6,89,496,342', process_color)
    
    # Step 6: Color Deconvolution
    create_arrow(7, 13.1, 7, 12.4)
    create_box(7, 12, 3, 0.8, 'Color Deconvolution\nRGB Separation', process_color)
    
    # Step 7: Select Green Channel
    create_arrow(7, 11.6, 7, 10.9)
    create_box(7, 10.5, 3, 0.8, 'Select Green Channel\n(Colour_2)', decision_color)
    
    # Branch Split
    create_arrow(7, 10.1, 3.5, 9.4)
    create_arrow(7, 10.1, 10.5, 9.4)
    
    # Left Branch - Green Area Analysis
    create_box(3.5, 9, 2.5, 0.6, 'GREEN AREA\nANALYSIS', analysis_color, 8)
    
    create_arrow(3.5, 8.7, 3.5, 8.2)
    create_box(3.5, 7.8, 2.8, 0.8, 'Duplicate to\nleaf-green_area', process_color, 8)
    
    create_arrow(3.5, 7.4, 3.5, 6.9)
    create_box(3.5, 6.5, 2.8, 0.8, 'Apply MEAN\nThreshold', process_color, 8)
    
    create_arrow(3.5, 6.1, 3.5, 5.6)
    create_box(3.5, 5.2, 2.8, 0.8, 'Convert to\nBinary Mask', process_color, 8)
    
    create_arrow(3.5, 4.8, 3.5, 4.3)
    create_box(3.5, 3.9, 2.8, 0.8, 'Analyze Particles\n(Green Areas)', analysis_color, 8)
    
    # Right Branch - Total Area Analysis
    create_box(10.5, 9, 2.5, 0.6, 'TOTAL AREA\nANALYSIS', analysis_color, 8)
    
    create_arrow(10.5, 8.7, 10.5, 8.2)
    create_box(10.5, 7.8, 2.8, 0.8, 'Duplicate to\nleaf-total_area', process_color, 8)
    
    create_arrow(10.5, 7.4, 10.5, 6.9)
    create_box(10.5, 6.5, 2.8, 0.8, 'Apply PERCENTILE\nThreshold', process_color, 8)
    
    create_arrow(10.5, 6.1, 10.5, 5.6)
    create_box(10.5, 5.2, 2.8, 0.8, 'Convert to\nBinary Mask', process_color, 8)
    
    create_arrow(10.5, 4.8, 10.5, 4.3)
    create_box(10.5, 3.9, 2.8, 0.8, 'Keep Largest\nRegion', process_color, 8)
    
    create_arrow(10.5, 3.5, 10.5, 3.0)
    create_box(10.5, 2.6, 2.8, 0.8, 'Analyze Particles\n(Total Area)', analysis_color, 8)
    
    # Merge branches
    create_arrow(3.5, 3.5, 7, 2.4)
    create_arrow(10.5, 2.2, 7, 2.4)
    
    # Final steps
    create_box(7, 2, 3.5, 0.8, 'Calculate Difference\n(Green - Total)', decision_color)
    
    create_arrow(7, 1.6, 7, 1.1)
    create_box(7, 0.7, 3, 0.6, 'Invert LUT &\nTile Display', process_color)
    
    create_arrow(7, 0.4, 7, -0.1)
    create_box(7, -0.5, 3, 0.8, 'END\nResults Displayed', end_color, 10)
    
    # Add legend
    legend_x = 12
    legend_y = 18
    ax.text(legend_x, legend_y, 'Legend:', fontsize=10, fontweight='bold')
    
    legend_items = [
        ('Start/End', start_color),
        ('Process', process_color),
        ('Analysis', analysis_color),
        ('Decision', decision_color)
    ]
    
    for i, (label, color) in enumerate(legend_items):
        y_pos = legend_y - 0.5 - (i * 0.5)
        legend_box = FancyBboxPatch((legend_x-0.5, y_pos-0.15), 1, 0.3,
                                  boxstyle="round,pad=0.05", 
                                  facecolor=color, edgecolor='black')
        ax.add_patch(legend_box)
        ax.text(legend_x, y_pos, label, ha='center', va='center', fontsize=8)
    
    plt.tight_layout()
    return fig

def main():
    """Main function to create and save the flowchart"""
    print("Creating leaf analysis flowchart...")
    
    # Create the flowchart
    fig = create_leaf_analysis_flowchart()
    
    # Save the figure
    output_path = "leaf_analysis_flowchart.png"
    fig.savefig(output_path, dpi=300, bbox_inches='tight', 
                facecolor='white', edgecolor='none')
    
    print(f"Flowchart saved as: {output_path}")
    
    # Show the plot
    plt.show()

if __name__ == "__main__":
    main()
