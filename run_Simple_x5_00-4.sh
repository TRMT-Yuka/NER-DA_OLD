export MAX_LENGTH=128
export BERT_MODEL=model_output/SimpleDA_BI/model_x5/
export OUTPUT_DIR=model_output/SimpleDA_BI/x5/00
export DATA_DIR=data_original/00/
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
--do_predict \
--overwrite_output_dir


export OUTPUT_DIR=model_output/SimpleDA_BI/x5/01
export DATA_DIR=data_original/01/
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
--do_predict \
--overwrite_output_dir

export OUTPUT_DIR=model_output/SimpleDA_BI/x5/02
export DATA_DIR=data_original/02/
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
--do_predict \
--overwrite_output_dir

export OUTPUT_DIR=model_output/SimpleDA_BI/x5/03
export DATA_DIR=data_original/03/
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
--do_predict \
--overwrite_output_dir

export OUTPUT_DIR=model_output/SimpleDA_BI/x5/04
export DATA_DIR=data_original/04/
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
--do_predict \
--overwrite_output_dir
