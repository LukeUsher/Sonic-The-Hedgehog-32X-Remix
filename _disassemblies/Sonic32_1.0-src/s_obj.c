#include <stdio.h>

int main() {

    FILE *fp,*out;
    unsigned int fs;

    fp = fopen("./sh2_m.bin", "rb");
    out = fopen("./s_obj.inc", "w");

    fseek(fp, 0, SEEK_END);
    fs = ftell(fp);

    fprintf(out, ";AUTOMATICALLY GENERATED FILE. DO NOT EDIT.\n\n\t\tobj\t$%08x", fs+0x06000000);

    fclose(fp);
    fclose(out);

}
