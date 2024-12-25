docker run -p 8501:8501 \
  --mount type=bind,source=/home/xe/Documents/idea/SparrowRecSys/src/main/resources/webroot/modeldata/,target=/models/modeldata \
  -e MODEL_CONFIG_FILE=/models/modeldata/neuralcfmodel.config \
  tensorflow/serving --model_config_file=/models/modeldata/neuralcfmodel.config &