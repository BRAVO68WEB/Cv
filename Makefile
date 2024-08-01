# Define variables for common paths
RESUME := resume.yaml
OUTPUT_DIR := out

all: generate

# Generate the LaTeX file from the template and JSON data
generate:
	rendercv render $(RESUME) --output-folder-name $(OUTPUT_DIR)
