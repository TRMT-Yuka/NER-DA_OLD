export MAX_LENGTH=128
export BERT_MODEL=model_output/SimpleDA_BI/model_x2/
export BATCH_SIZE=32
export NUM_EPOCHS=3
export SAVE_STEPS=750
export SEED=1

python3 token-classification-legacy/run_ner_gpu0.py \
  --task_type NER \
  --labels labels.txt \
  --model_name_or_path $BERT_MODEL \
  --num_train_epochs $NUM_EPOCHS \
  --per_gpu_train_batch_size $BATCH_SIZE \
  --save_steps $SAVE_STEPS \
  --seed $SEED \
  --data_dir data_original/00/ \
  --output_dir model_output/SimpleDA_BI/x2/00 \
  --overwrite_output_dir true\
  --do_train false \
  --do_eval false \
  --do_predict true


# python3 token-classification-legacy/run_ner_gpu0.py \
#   --task_type NER \
#   --labels labels.txt \
#   --model_name_or_path $BERT_MODEL \
#   --num_train_epochs $NUM_EPOCHS \
#   --per_gpu_train_batch_size $BATCH_SIZE \
#   --save_steps $SAVE_STEPS \
#   --seed $SEED \
#   --data_dir data_original/01/ \
#   --output_dir model_output/SimpleDA_BI/x2/01 \
#   --overwrite_output_dir true\
#   --do_train false \
#   --do_eval false \
#   --do_predict true


# python3 token-classification-legacy/run_ner_gpu0.py \
#   --task_type NER \
#   --labels labels.txt \
#   --model_name_or_path $BERT_MODEL \
#   --num_train_epochs $NUM_EPOCHS \
#   --per_gpu_train_batch_size $BATCH_SIZE \
#   --save_steps $SAVE_STEPS \
#   --seed $SEED \
#   --data_dir data_original/02/ \
#   --output_dir model_output/SimpleDA_BI/x2/02 \
#   --overwrite_output_dir true\
#   --do_train false \
#   --do_eval false \
#   --do_predict true


# python3 token-classification-legacy/run_ner_gpu0.py \
#   --task_type NER \
#   --labels labels.txt \
#   --model_name_or_path $BERT_MODEL \
#   --num_train_epochs $NUM_EPOCHS \
#   --per_gpu_train_batch_size $BATCH_SIZE \
#   --save_steps $SAVE_STEPS \
#   --seed $SEED \
#   --data_dir data_original/03/ \
#   --output_dir model_output/SimpleDA_BI/x2/03 \
#   --overwrite_output_dir true\
#   --do_train false \
#   --do_eval false \
#   --do_predict true


# python3 token-classification-legacy/run_ner_gpu0.py \
#   --task_type NER \
#   --labels labels.txt \
#   --model_name_or_path $BERT_MODEL \
#   --num_train_epochs $NUM_EPOCHS \
#   --per_gpu_train_batch_size $BATCH_SIZE \
#   --save_steps $SAVE_STEPS \
#   --seed $SEED \
#   --data_dir data_original/04/ \
#   --output_dir model_output/SimpleDA_BI/x2/04 \
#   --overwrite_output_dir true\
#   --do_train false \
#   --do_eval false \
#   --do_predict true