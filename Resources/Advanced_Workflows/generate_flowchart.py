import matplotlib.pyplot as plt
import matplotlib.patches as patches
from matplotlib.patches import FancyBboxPatch
import numpy as np

# Create figure and axis
fig, ax = plt.subplots(1, 1, figsize=(14, 16))
ax.set_xlim(0, 10)
ax.set_ylim(0, 20)
ax.axis('off')

# Define colors for different types of operations
colors = {
    'start': '#FFE6E6',
    'process': '#E6F3FF', 
    'branch': '#E6FFE6',
    'analysis': '#FFF2E6',
    'end': '#F0E6FF'
}

# Helper function to create rounded rectangle
def create_box(ax, x, y, width, height, text, color, fontsize=9):
    box = FancyBboxPatch((x-width/2, y-height/2), width, height,
                         boxstyle="round,pad=0.1", 
                         facecolor=color, 
                         edgecolor='black',
                         linewidth=1.5)
    ax.add_patch(box)
    ax.text(x, y, text, ha='center', va='center', fontsize=fontsize, 
            weight='bold', wrap=True)

# Helper function to draw arrow
def draw_arrow(ax, x1, y1, x2, y2, color='black'):
    ax.annotate('', xy=(x2, y2), xytext=(x1, y1),
                arrowprops=dict(arrowstyle='->', color=color, lw=2))

# Create flowchart boxes
# Start
create_box(ax, 5, 19, 2.5, 0.8, 'START\nClose All Images', colors['start'])

# Initial processing
create_box(ax, 5, 17.5, 2.5, 0.8, 'Open Leaf\nSample Image', colors['process'])
create_box(ax, 5, 16, 2.5, 0.8, 'Set Scale\n(59px = 10mm)', colors['process'])
create_box(ax, 5, 14.5, 2.5, 0.8, 'Configure\nMeasurements', colors['process'])
create_box(ax, 5, 13, 2.5, 0.8, 'Crop Image\nROI: 6,89,496,342', colors['process'])
create_box(ax, 5, 11.5, 2.5, 0.8, 'Color Deconvolution\nRGB Separation', colors['process'])
create_box(ax, 5, 10, 2.5, 0.8, 'Select Green Channel\n(Colour_2)', colors['process'])

# Branch point
create_box(ax, 5, 8.5, 2.5, 0.8, 'ANALYSIS BRANCHES', colors['branch'])

# Left branch - Green Area Analysis
create_box(ax, 2, 7, 2.2, 0.8, 'GREEN AREA\nANALYSIS', colors['analysis'])
create_box(ax, 2, 5.8, 2.2, 0.8, 'Duplicate to\nleaf-green_area', colors['analysis'])
create_box(ax, 2, 4.6, 2.2, 0.8, 'Apply MEAN\nThreshold', colors['analysis'])
create_box(ax, 2, 3.4, 2.2, 0.8, 'Convert to\nBinary Mask', colors['analysis'])
create_box(ax, 2, 2.2, 2.2, 0.8, 'Analyze Particles\n(Green Areas)', colors['analysis'])

# Right branch - Total Area Analysis
create_box(ax, 8, 7, 2.2, 0.8, 'TOTAL AREA\nANALYSIS', colors['analysis'])
create_box(ax, 8, 5.8, 2.2, 0.8, 'Duplicate to\nleaf-total_area', colors['analysis'])
create_box(ax, 8, 4.6, 2.2, 0.8, 'Apply PERCENTILE\nThreshold', colors['analysis'])
create_box(ax, 8, 3.4, 2.2, 0.8, 'Convert to\nBinary Mask', colors['analysis'])
create_box(ax, 8, 2.6, 2.2, 0.8, 'Keep Largest\nRegion Only', colors['analysis'])
create_box(ax, 8, 1.4, 2.2, 0.8, 'Analyze Particles\n(Total Area)', colors['analysis'])

# Merge and final processing
create_box(ax, 5, 0.8, 3, 0.8, 'Calculate Image Difference\n(Green - Total)', colors['process'])
create_box(ax, 5, -0.4, 2.5, 0.8, 'Invert LUT\nfor Visualization', colors['process'])
create_box(ax, 5, -1.6, 2.5, 0.8, 'Tile Images\nfor Display', colors['process'])

# End
create_box(ax, 5, -2.8, 2.5, 0.8, 'END\nResults Displayed', colors['end'])

# Draw arrows - main flow
arrows_main = [
    (5, 18.6, 5, 18.1),  # start to open
    (5, 17.1, 5, 16.6),  # open to scale
    (5, 15.6, 5, 15.1),  # scale to measurements
    (5, 14.1, 5, 13.6),  # measurements to crop
    (5, 12.6, 5, 12.1),  # crop to color
    (5, 11.1, 5, 10.6),  # color to select
    (5, 9.6, 5, 9.1),   # select to branch
]

for x1, y1, x2, y2 in arrows_main:
    draw_arrow(ax, x1, y1, x2, y2)

# Branch arrows
draw_arrow(ax, 4.2, 8.1, 2.8, 7.4)  # to green branch
draw_arrow(ax, 5.8, 8.1, 7.2, 7.4)  # to total branch

# Left branch arrows
left_arrows = [
    (2, 6.6, 2, 6.2),   # green analysis to duplicate
    (2, 5.4, 2, 5.0),   # duplicate to threshold
    (2, 4.2, 2, 3.8),   # threshold to mask
    (2, 3.0, 2, 2.6),   # mask to analyze
]

for x1, y1, x2, y2 in left_arrows:
    draw_arrow(ax, x1, y1, x2, y2)

# Right branch arrows
right_arrows = [
    (8, 6.6, 8, 6.2),   # total analysis to duplicate
    (8, 5.4, 8, 5.0),   # duplicate to threshold
    (8, 4.2, 8, 3.8),   # threshold to mask
    (8, 3.0, 8, 3.0),   # mask to keep largest
    (8, 2.2, 8, 1.8),   # keep largest to analyze
]

for x1, y1, x2, y2 in right_arrows:
    draw_arrow(ax, x1, y1, x2, y2)

# Merge arrows
draw_arrow(ax, 2, 1.8, 3.5, 1.2)   # from green analysis
draw_arrow(ax, 8, 1.0, 6.5, 1.2)   # from total analysis

# Final arrows
final_arrows = [
    (5, 0.4, 5, 0.0),    # difference to invert
    (5, -0.8, 5, -1.2),  # invert to tile
    (5, -2.0, 5, -2.4),  # tile to end
]

for x1, y1, x2, y2 in final_arrows:
    draw_arrow(ax, x1, y1, x2, y2)

# Add title
plt.title('Leaf Green Area Analysis Workflow', fontsize=16, fontweight='bold', pad=20)

# Add legend
legend_elements = [
    patches.Patch(color=colors['start'], label='Start/End'),
    patches.Patch(color=colors['process'], label='Processing Steps'),
    patches.Patch(color=colors['branch'], label='Branch Point'),
    patches.Patch(color=colors['analysis'], label='Analysis Steps'),
    patches.Patch(color=colors['end'], label='Final Result')
]
ax.legend(handles=legend_elements, loc='upper right', bbox_to_anchor=(0.98, 0.98))

# Adjust layout and save
plt.tight_layout()
plt.savefig('leaf_analysis_flowchart.png', dpi=300, bbox_inches='tight', 
            facecolor='white', edgecolor='none')
plt.savefig('leaf_analysis_flowchart.pdf', bbox_inches='tight', 
            facecolor='white', edgecolor='none')

# Display the plot
plt.show()

print("Flowchart saved as 'leaf_analysis_flowchart.png' and 'leaf_analysis_flowchart.pdf'")
print("The graph shows the complete workflow with:")
print("- Color-coded boxes for different operation types")
print("- Clear branching structure for parallel analysis")
print("- Arrows showing the flow direction")
print("- Legend explaining the color coding")
