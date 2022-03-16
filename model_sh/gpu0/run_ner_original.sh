python3 token-classification-legacy/run_ner_gpu0.py \
  --model_name_or_path bert-base-uncased \
  --data_dir data_original \
  --output_dir model_output/original \
  --overwrite_output_dir true\
  --do_train true \
  --do_eval true \
  --do_predict true