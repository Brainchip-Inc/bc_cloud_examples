cd examples
mkdir -p models
cd models

wget https://data.brainchip.com/models/AkidaV1/akidanet/akidanet_vww_iq8_wq4_aq4.h5
wget https://data.brainchip.com/models/AkidaV1/yolo/yolo_akidanet_widerface_iq8_wq4_aq4.h5
wget https://data.brainchip.com/models/AkidaV1/pointnet_plus/pointnet_plus_modelnet40_iq8_wq4_aq4.h5
wget https://data.brainchip.com/models/AkidaV1/akidanet_edge/akidanet_faceidentification_edge_iq8_wq4_aq4.h5
wget https://data.brainchip.com/models/AkidaV1/ds_cnn/ds_cnn_kws_iq8_wq4_aq4_laq1.h5

find . -maxdepth 1 -type f \( -name "*.h5" \) -exec cnn2snn convert -m  {} \;
rm *.h5


# Get datasets for examples
```
cd ..
cd datasets

wget https://data.brainchip.com/dataset-mirror/voc/test_20_classes.tfrecord

wget https://data.brainchip.com/dataset-mirror/jester/jester_subset.tar.gz
tar -xzf ./jester_subset.tar.gz  jester_subset/jester-v1-labels.csv 
rm ./jester_subset.tar.gz
```