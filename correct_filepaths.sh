#!/usr/bin/env bash
set -e

# Compute the absolute path to the OfficeHome dataset.
if [ -d "data/OfficeHome" ]; then
  OH_PATH="$(cd data/OfficeHome && pwd)"
else
  echo "Error: Directory data/OfficeHome not found." >&2
  exit 1
fi

echo "Using OfficeHome dataset at: ${OH_PATH}"

# --- Update files in the data folder ---
if [ -d "data/OfficeHome" ]; then
  pushd data/OfficeHome > /dev/null
  # Replace "xxxxxx/office_home" with local absolute path in all .txt files.
  sed -i.bak "s|xxxxxx/office_home|${OH_PATH}|g" *.txt
  rm -f *.bak
  popd > /dev/null
else
  echo "Directory data/OfficeHome not found!" >&2
  exit 1
fi

# --- Update PDA log files ---
if [ -d "logs/pda/train/22/PADA/office-home/AC" ]; then
  pushd logs/pda/train/22/PADA/office-home/AC > /dev/null
  # Replace the old path with local absolute path in src_*.txt files.
  sed -i.bak "s|/Checkpoint/liangjian/da_dataset/office_home|${OH_PATH}|g" src_*.txt
  rm -f *.bak
  popd > /dev/null
else
  echo "Directory logs/pda/train/22/PADA/office-home/AC not found!" >&2
  exit 1
fi

# --- Update UDA log files ---
if [ -d "logs/uda/train/22/bnm/office-home/AC" ]; then
  pushd logs/uda/train/22/bnm/office-home/AC > /dev/null
  # Replace the old path with local absolute path in src_*.txt files.
  sed -i.bak "s|/Checkpoint/liangjian/da_dataset/office_home|${OH_PATH}|g" src_*.txt
  rm -f *.bak
  popd > /dev/null
else
  echo "Directory logs/uda/train/22/bnm/office-home/AC not found!" >&2
  exit 1
fi

echo "All files have been updated with the new OfficeHome dataset path."
