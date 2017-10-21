# Data generation
Getting Cleaned and labelled  data can be a challenging task In Real-time traffic classification. 
## Experiment Design For creating Immaculate Data
* **whatsapp.py**:-this script autmotes the process of sending a particular user some planned message 
after certain intervals thus generating data.
* Video calls have to be made manually or through Blue stacks.
* **facebook.py** :-This opens a facebook session and scrolls down to the page and then terminates it. This 
process is repeated several times with fixed gap.
* **facebook.txt** thsi script when pasted in facebook's Inspect terminal will automate the process
of video forwading after fixed intervals.Thus Generating Data.

The timing is noted for all the process and a log is prepared which is used for the purpose of labelling.
## Whatsapp
The content on Whatsapp is classified into Two categories:
* **Texting**:- This includes only texting.
* **Calling**:-This includes both audio and Video calling.

## Facebook
The Data packets of Facebook can be of Vast multitude But we will consider only divide them into twomajor categories.
* **Light Usage** :- This includes Scrowling and texting.
* **Heavy Usage** :-This includes Video calling,Online Games,Videos.

## Feature Engineering
The Inherent Features which can be collected through simple Data Packet Analysis are generic.But the Features Can be generated out of 
These Features such as Up and down Volume per second.
* **Number of Subsessions**
* **Max Volume per second**
* **Average package per second**
* **Average package per Subsessions**
*  **Average volume per second**
* **Average Volume per subsesses**
* **Percentage Subsession Volume Graeter Than 500**
* **Percentage Subsessions Volume per packer greater Than 1024**
