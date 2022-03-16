python3 token-classification-legacy/run_ner_gpu1.py \
  --model_name_or_path bert-base-uncased \
  --data_dir data_augment/SimpleDA_BI/x10 \
  --output_dir model_output/SimpleDA_BI/x10 \
  --overwrite_output_dir true\
  --do_train true \
  --do_eval true \
  --do_predict true