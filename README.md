# Neuro_140_Final_Project

This project allows the user to parse, process, and analyze data from the Kriegeskorte 2008 dataset 96.  Specifically, this code will perform a representational similarity analysis and multidimensional scaling on both a face-only subset of data and the full dataset. To download the data for this project, go to https://brainiak.org/tutorials/ and download the data for Tutorial 6. Below I will describe the use of each file.

ExtractionCode:
This code allows the user to save necessary information from the Kriegeskorte dataset, which is stored as Matlab files. First load the data file for subject XX by clicking on XX_roi_data.mat in your Ninetysix folder. Next, insert the intitials of your subject into the code. Run the rest of the code to generate XX_ordered_data.mat, which includes fMRI data for faces only, and XX_full_data.mat, which includes all fMRI data. Do this for subjects KO, SN, and TI (BE was excluded due to differing stimuli used).

Matlab_Loading_Code_Final:
This file extracts information from the saved Matlab files into an accessible Python format. Your Matlab files must be saved in Google Drive so that they are accessible in Google Colab. You must change the location of your Matlab files in Google Drive as well as the location where you wish to save the Python data files.

Face_Extraction_for_VGGFace_Final:
This program runs an MTCCNN on images to extract and format faces for the VGGFace network.  You can input data from the Kriegeskorte dataset or any other picture including a face. For this code to run, you should have your images saved as some common name followed by a number, which allows the program to iterate through images (already done if using Kriegeskorte data). Change the Google Drive location where you will be inputting images from as well as the location you will output them to. 

Representational_Similarity_Analysis_Faces_Final:
This file performs a representational similarity analysis on the face subset of the Kriegeskorte 2008 dataset. We compare face and non-face trained ResNet50 and VGG16 architectures as well as fMRI data. To run, ensure that file locations under sections Make RDMs and Load RDMs are correct.

Mixed_Stimuli_RSM_and_Multidimensional_Scaling_Final:
This program performs the same function as the above program on the full Kriegeskorte 2008 dataset as well as performs a multidimensional scaling analysis. Set up is the same for both programs.

AVI_Writer_Final:
This program takes in sequentially labeled images and writes an AVI file. For our purposes here, this will be used to make a video of the multidimensional scaling representations of our neural networks.  Ensure that your files are labeled with a common name followed by a number so that the program can iterate through them.  Set location of input images and location to output video before running.  Set the framerate with the variable fps (frames per second).
