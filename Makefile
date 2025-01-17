# Define variables for common paths
RESUME := resume.yaml
OUTPUT_DIR := rendercv_output
ZIP_FILE := resume.zip

all: generate

# Generate the LaTeX file from the template and JSON data
generate:
	rendercv render $(RESUME) 
	zip -r $(ZIP_FILE) $(OUTPUT_DIR) 
