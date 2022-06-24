export MAX_LENGTH=128
export BERT_MODEL=bert-base-uncased
export OUTPUT_DIR=model_output/model_original
export DATA_DIR=data_original/original
export BATCH_SIZE=32
export NUM_EPOCHS=3
export SAVE_STEPS=750
export SEED=1

python3 token-classification-legacy/run_ner_gpu0.py \
--task_type NER \
--data_dir $DATA_DIR \
--labels labels.txt \
--model_name_or_path $BERT_MODEL \
--output_dir $OUTPUT_DIR \
--max_seq_length  $MAX_LENGTH \
--num_train_epochs $NUM_EPOCHS \
--per_gpu_train_batch_size $BATCH_SIZE \
--save_steps $SAVE_STEPS \
--seed $SEED \
--do_train \
--do_eval \
--overwrite_output_dir


# export BERT_MODEL=model_output/model_original

# export OUTPUT_DIR=model_output/original/00/
# export DATA_DIR=data_original/original/00/
# python3 token-classification-legacy/run_ner_gpu0.py \
# --task_type NER \
# --data_dir $DATA_DIR \
# --labels labels.txt \
# --model_name_or_path $BERT_MODEL \
# --output_dir $OUTPUT_DIR \
# --max_seq_length  $MAX_LENGTH \
# --num_train_epochs $NUM_EPOCHS \
# --per_gpu_train_batch_size $BATCH_SIZE \
# --save_steps $SAVE_STEPS \
# --seed $SEED \
# --do_predict \
# --overwrite_output_dir

# export OUTPUT_DIR=model_output/original/01/
# export DATA_DIR=data_original/original/01/
# python3 token-classification-legacy/run_ner_gpu0.py \
# --task_type NER \
# --data_dir $DATA_DIR \
# --labels labels.txt \
# --model_name_or_path $BERT_MODEL \
# --output_dir $OUTPUT_DIR \
# --max_seq_length  $MAX_LENGTH \
# --num_train_epochs $NUM_EPOCHS \
# --per_gpu_train_batch_size $BATCH_SIZE \
# --save_steps $SAVE_STEPS \
# --seed $SEED \
# --do_predict \
# --overwrite_output_dir

# export OUTPUT_DIR=model_output/original/02/
# export DATA_DIR=data_original/original/02/
# python3 token-classification-legacy/run_ner_gpu0.py \
# --task_type NER \
# --data_dir $DATA_DIR \
# --labels labels.txt \
# --model_name_or_path $BERT_MODEL \
# --output_dir $OUTPUT_DIR \
# --max_seq_length  $MAX_LENGTH \
# --num_train_epochs $NUM_EPOCHS \
# --per_gpu_train_batch_size $BATCH_SIZE \
# --save_steps $SAVE_STEPS \
# --seed $SEED \
# --do_predict \
# --overwrite_output_dir

# export OUTPUT_DIR=model_output/original/03/
# export DATA_DIR=data_original/original/03/
# python3 token-classification-legacy/run_ner_gpu0.py \
# --task_type NER \
# --data_dir $DATA_DIR \
# --labels labels.txt \
# --model_name_or_path $BERT_MODEL \
# --output_dir $OUTPUT_DIR \
# --max_seq_length  $MAX_LENGTH \
# --num_train_epochs $NUM_EPOCHS \
# --per_gpu_train_batch_size $BATCH_SIZE \
# --save_steps $SAVE_STEPS \
# --seed $SEED \
# --do_predict \
# --overwrite_output_dir

# export OUTPUT_DIR=model_output/original/04/
# export DATA_DIR=data_original/original/04/
# python3 token-classification-legacy/run_ner_gpu0.py \
# --task_type NER \
# --data_dir $DATA_DIR \
# --labels labels.txt \
# --model_name_or_path $BERT_MODEL \
# --output_dir $OUTPUT_DIR \
# --max_seq_length  $MAX_LENGTH \
# --num_train_epochs $NUM_EPOCHS \
# --per_gpu_train_batch_size $BATCH_SIZE \
# --save_steps $SAVE_STEPS \
# --seed $SEED \
# --do_predict \
# --overwrite_output_dir