python3 token-classification-legacy/run_tf_ner_gpu1.py \
  --model_name_or_path model_output/SimpleDA_BI/x100/checkpoint-143500/config.json \
  --data_dir data_augment/SimpleDA_BI/x100 \
  --output_dir model_output/SimpleDA_BI/x100 \
  --overwrite_output_dir true\
  --do_train true \
  --do_eval true \
  --do_predict true