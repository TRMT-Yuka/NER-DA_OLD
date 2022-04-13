## The relevant files are currently on a shared Google
## drive at https://drive.google.com/drive/folders/1kC0I2UGl2ltrluI9NqDjaQJGw5iliw_J
## Monitor for changes and eventually migrate to nlp dataset
# curl -L 'https://drive.google.com/uc?export=download&id=1Jjhbal535VVz2ap4v4r_rN1UEHTdLK5P' \
# | grep -v "^#" | cut -f 2,3 | tr '\t' ' ' > train.txt.tmp
# curl -L 'https://drive.google.com/uc?export=download&id=1ZfRcQThdtAR5PPRjIDtrVP7BtXSCUBbm' \
# | grep -v "^#" | cut -f 2,3 | tr '\t' ' ' > dev.txt.tmp
# curl -L 'https://drive.google.com/uc?export=download&id=1u9mb7kNJHWQCWyweMDRMuTFoOHOfeBTH' \
# | grep -v "^#" | cut -f 2,3 | tr '\t' ' ' > test.txt.tmp

export MAX_LENGTH=128
export BERT_MODEL=bert-base-uncased
# python3 token-classification-legacy/scripts/preprocess.py data_augment/SimpleDA_BI/x2/temp/train.txt $BERT_MODEL $MAX_LENGTH > data_augment/SimpleDA_BI/x2/train.txt
# python3 token-classification-legacy/scripts/preprocess.py data_augment/SimpleDA_BI/x2/temp/dev.txt $BERT_MODEL $MAX_LENGTH > data_augment/SimpleDA_BI/x2/dev.txt
# python3 token-classification-legacy/scripts/preprocess.py data_augment/SimpleDA_BI/x2/temp/test.txt $BERT_MODEL $MAX_LENGTH > data_augment/SimpleDA_BI/x2/test.txt
cat data_augment/SimpleDA_BI/x2/train.txt data_augment/SimpleDA_BI/x2/dev.txt data_augment/SimpleDA_BI/x2/test.txt | cut -d " " -f 2 | grep -v "^$"| sort | uniq > labels.txt
export OUTPUT_DIR=model_output/SimpleDA_BI/x2
export BATCH_SIZE=32
export NUM_EPOCHS=3
export SAVE_STEPS=750
export SEED=1


python3 token-classification-legacy/run_ner_gpu0.py \
--task_type NER \
--data_dir data_augment/SimpleDA_BI/x2/ \
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
--do_predict \
--overwrite_output_dir
