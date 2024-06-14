search_dir=./input/
for file in "${search_dir}"* ;
do
    echo "file is $file"
    if [[ $file =~ \.snirf$ ]]; then
        echo "converting .snirf file $file"
        echo "chmod 777 $file && ./snirf2ndot $file && cp /input/*.mat /output/"
        chmod 777 $file && ./snirf2ndot $file && cp /input/*.mat /output/
    fi
    if [[ $file =~ \.nirs$ ]]; then
        echo "converting .nirs file $file"
        chmod 777 $file && ./nirs2ndot $file && cp /input/*.mat /output/
    fi
done

