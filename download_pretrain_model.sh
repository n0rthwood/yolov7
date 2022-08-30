mkdir -p pre_trained_model
cd pre_trained_model


declare -a arr=("https://github.com/WongKinYiu/yolov7/releases/download/v0.1/yolov7-w6_training.pt" 
                "https://github.com/WongKinYiu/yolov7/releases/download/v0.1/yolov7_training.pt" 
                "https://github.com/WongKinYiu/yolov7/releases/download/v0.1/yolov7x_training.pt" 
                "https://github.com/WongKinYiu/yolov7/releases/download/v0.1/yolov7-e6_training.pt"
                "https://github.com/WongKinYiu/yolov7/releases/download/v0.1/yolov7-d6_training.pt"
                "https://github.com/WongKinYiu/yolov7/releases/download/v0.1/yolov7-e6e_training.pt"
                ) 

#declare -a arr=("https://raw.githubusercontent.com/n0rthwood/yolov7/main/cfg/baseline/r50-csp.yaml")
for i in "${arr[@]}"
do
    
    fname=$(echo  "$i"| cut -d/ -f9)
    #echo "filename : $fname ok"
    if [ ! -f "$fname" ]
    then 
        wget  "$i"
    else 
        echo "File found $fname skip download"
    fi
done
