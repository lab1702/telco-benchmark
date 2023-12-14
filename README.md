# telco-benchmark
IBM example to test performance of read, write and calculations.

Source files found at [https://gnucobol.sourceforge.io/faq/gcfaq.html#telco-billing](https://gnucobol.sourceforge.io/faq/gcfaq.html#telco-billing)
and data files at [https://speleotrove.com/decimal/telco.html](https://speleotrove.com/decimal/telco.html).

I made minor changes, such as to file names of input and output files.

I edited the telco.test file to not have an extra byte at the end as it was confusing COBOL and showing as duplicate last record.

Clone repo with:

    git clone https://github.com/lab1702/telco-benchmark.git

Run both versions on the telco.test file with:

    make run

Run just the I/O test with:

    make nocalc

To run the full million transaction file, edit the COBOL files and replace **telco.test** with **expon180.1e6**
