# Custom README
1) Download the [Office-Home](https://www.hemanthdv.org/officeHomeDataset.html) dataset and place it in the data folder
2) unzip it and remove original zip
3) launch the `correct_filepaths.sh` script by specifying the name of the unzipped OfficeHome folder in data.
   ```bash
   bash correct_filepaths.sh OfficeHomeDataset_10072016
4) before run the pseudocal.sh you should download the [PADA.pt](https://drive.google.com/file/d/1qbQMWrBN2Qji8jE0ShzHJjlRNbAPrP__/view) inside the folder `.PseudoCal/logs/uda/train/22/bnm/office-home/AC` and the [bnm.pt](https://drive.google.com/file/d/1Z7nmq07HFmeOCphkxXhVzQuer0dhEfKk/view) inside the folder `.PseudoCal/logs/uda/train/22/bnm/office-home/AC`. No need to unzip. 


# Code for **PseudoCal**@ICML 2024

## [**Pseudo-Calibration: Improving Predictive Uncertainty Estimation in Unsupervised Domain Adaptation**](https://openreview.net/forum?id=XnsI1HKAKC)

### Prerequisites
- python == 3.7.13 
- cudatoolkit == 10.1.243
- pytorch ==1.7.1
- torchvision == 0.8.2
- numpy, scikit-learn, PIL, argparse

### Demo

- Configure the PyTorch environment.
- Download the [Office-Home](https://www.hemanthdv.org/officeHomeDataset.html) dataset. Configure the data lists in **data** and the checkpoints in **logs**.
- Run the code in **pseudocal.sh**.


### Citation

> @inproceedings{hu2024pseudocalibration,  
> &nbsp; &nbsp;  title={Pseudo-Calibration: Improving Predictive Uncertainty Estimation in Unsupervised Domain Adaptation},  
> &nbsp; &nbsp;  author={Dapeng Hu and Jian Liang and Xinchao Wang and Chuan-Sheng Foo},  
> &nbsp; &nbsp;  booktitle={Forty-first International Conference on Machine Learning},   
> &nbsp; &nbsp;  year={2024}  
> }


### Contact

- [lhxxhb15@gmail.com](lhxxhb15@gmail.com)


### Credit
- The code is heavily borrowed from [TransCal](https://github.com/thuml/TransCal).
