for fn in sample.e144_14_ff sample.e144_17_ff sample.e144_19_ff sample.e144_1_bf sample.e145_15_ff sample.e145_2_bf sample.e145_3_bf sample.e145_4_bf
do  
echo "Processing sample $fn"
salmon quant -i /home/aaltamirano/Documents/nsbb552/genome_folder/alias/mm10/salmon_sa_index/default -l A \
	-1 ${fn}_1.fastq \
        -2 ${fn}_2.fastq \
        -p 24 --validateMappings -o quants/Salmon/${fn}
done 
echo "done" 

