python3 token-classification-legacy/run_ner_gpu1.py \
  --model_name_or_path bert-base-uncased \
  --data_dir data_augment/SyntacticDA_BI/x2 \
  --output_dir model_output/SyntacticDA_BI/x2 \
  --overwrite_output_dir true\
  --do_train true \
  --do_eval true \
  --do_predict true