###Banksy
nohup Rscript Banksy.R \
-i /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/sample_all_data/Slices_combind_data.RDS \
-o /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/IntergrationRe \
-s Banksy -c 7 -d RDS -k 18 -l 0.2 \
> /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/Banksy.output &    

###CellCharter
###hyper-parameter
nohup python CellCharter.py \
--input_file /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/sample_all_data/Slices_combind_data.h5ad \
--output_file /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/CellCharter_hyper \
--sample CellCharter --nclust 7 \
> /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/CellCharter_hyper/CellCharter_hyper.output &

nohup python CellCharter.py \
--input_file /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/sample_all_data/Slices_combind_data.h5ad \
--output_file /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/IntergrationRe \
--sample CellCharter --nclust 7 --hvgs 2000 --runNormalization True \
--n_latent 15 --nhood_layers 2 \
> /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/CellCharter.output &

###CN
nohup python CN.py \
--input_file /home/dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/sample_all_data/Slices_combind_data.h5ad \
--output_file /home/dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/IntergrationRe \
--sample CN --nclust 7 \
> /home/dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/CN.output &

###GraphST
nohup python GraphST.py \
--input_file /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/sample_all_data/Slices_combind_data.h5ad \
--output_file /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/IntergrationRe \
--sample GraphST --nclust 7 --device cuda \
> /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/GraphST.output  &

###GraphST-PASTE
nohup python GraphST-PASTE.py \
--input_file /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/sample_all_data/Slices_combind_data.h5ad \
--output_file /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/IntergrationRe \
--sample GraphSTwithPASTE --nclust 7 --device cuda \
> /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/GraphSTwithPASTE.output  &

#MENDER
nohup python MENDER.py \
--input_file /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/sample_all_data/Slices_combind_data.h5ad \
--output_file /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/IntergrationRe \
--sample MENDER --nclust 7 --tech Visium \
> /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/MENDER.output &

#NicheComapss
nohup python NicheComapss.py \
--input_file /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/sample_data \
--output_file /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/IntergrationRe \
--sample NicheCompass --nclust 7 \
> /home/dongkj/home_dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/NicheCompass.output &

#Spado
nohup Rscript Spado.R \
-i /home/dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/sample_all_data/Slices_combind_data.h5ad \
-o /home/dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/IntergrationRe \
-s Spado -v 2000 -c 7 -n TRUE \
> /home/dkj/FD_yzy/Dataset/Intergration_Benchmark/DLPFC_sample3/Spado.output &    

