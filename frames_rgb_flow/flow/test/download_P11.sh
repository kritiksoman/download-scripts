#!/bin/bash

if [ "$#" -eq 1 ]; then
    outputPath="$1/EPIC_KITCHENS_2018"
else
    outputPath="$HOME/Downloads/EPIC_KITCHENS_2018"
fi

if ! [ -x "$(command -v wget)" ]; then
    echo "Error!: wget is not installed! Please install it and try again"
    exit 1
fi

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### Downloading into $outputPath"
echo -e "\n### ------------------------------------------------------- ###\n"

epic_download() {
    local url=$1
    local path=$2
    local niceFilePath=$3
    
    echo -ne "# Downloading "$niceFilePath"\t"
    wget --progress=dot --continue --directory-prefix="$path" "$url" 2>&1 | grep --line-buffered "%" | sed -E "s,\.,,g" | awk '{printf("\b\b\b\b%4s", $2)}'
    echo -ne "\b\b\b\b"
    echo " # done"
}

epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_01.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_01.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_02.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_02.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_03.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_03.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_04.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_04.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_05.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_05.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_06.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_06.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_07.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_07.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_08.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_08.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_09.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_09.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_10.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_10.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_11.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_11.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_12.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_12.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_13.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_13.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_14.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_14.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_15.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_15.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_16.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_16.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_17.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_17.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_18.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_18.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_19.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_19.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_20.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_20.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_21.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_21.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_22.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_22.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_23.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_23.tar"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/frames_rgb_flow/flow/test/P11/P11_24.tar" "$outputPath/frames_rgb_flow/flow/test/P11" "frames_rgb_flow/flow/test/P11/P11_24.tar"

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### All done!"
echo -e "\n### ------------------------------------------------------- ###\n"
