.class public Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;
.super Ljava/lang/Object;
.source "BinaryFeatureTableSerializer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderReader;,
        Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderWriter;
    }
.end annotation


# instance fields
.field public aeModeConvergeFrameNumber:J

.field public aeStateConvergeFrameNumber:J

.field public afConvergeFrameNumber:J


# direct methods
.method private constructor <init>(JJJ)V
    .locals 1

    .prologue
    .line 2067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2068
    iput-wide p1, p0, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;->afConvergeFrameNumber:J

    .line 2069
    iput-wide p3, p0, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;->aeModeConvergeFrameNumber:J

    .line 2070
    iput-wide p5, p0, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;->aeStateConvergeFrameNumber:J

    .line 2071
    return-void
.end method

.method public static aeScanResult$5154KAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TGNAT3FCPNM6TBJ5T0MAGB6ADHM2RIICLPNAR3K7C______(JJ)Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;
    .locals 8

    .prologue
    .line 2035
    new-instance v1, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;

    const-wide/16 v2, -0x1

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;-><init>(JJJ)V

    return-object v1
.end method

.method public static fromSessionDirectory(Ljava/io/File;)Lcom/google/android/libraries/smartburst/buffers/FeatureTable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Ljava/io/File;

    const-string v1, "feature_table.bin"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    .line 214
    :try_start_0
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;->fromStream(Ljava/io/BufferedInputStream;)Lcom/google/android/libraries/smartburst/buffers/FeatureTable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 215
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 214
    return-object v0

    .line 212
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    throw v0

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0
.end method

.method private static fromStream(Ljava/io/BufferedInputStream;)Lcom/google/android/libraries/smartburst/buffers/FeatureTable;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 142
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 143
    const v1, 0x7645f31f

    if-eq v0, v1, :cond_0

    .line 144
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported file type!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 149
    const/16 v1, 0x68

    if-ge v0, v1, :cond_1

    .line 150
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Version of file ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") is too old to support (minimum: 104"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_1
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderReader;->fromStream(Ljava/io/DataInputStream;)Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderReader;

    move-result-object v1

    .line 156
    const/4 v0, 0x0

    const v3, 0x34bc0

    invoke-virtual {v1, v0, v3}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderReader;->readInt(II)I

    move-result v3

    .line 157
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderReader;->readFloat()F

    move-result v4

    .line 158
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderReader;->readLong()J

    move-result-wide v6

    .line 159
    const/4 v0, 0x0

    const/16 v5, 0xc8

    invoke-virtual {v1, v0, v5}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderReader;->readInt(II)I

    move-result v5

    .line 162
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 163
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_2

    .line 1117
    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    invoke-virtual {v1, v9, v10}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderReader;->readInt(II)I

    move-result v9

    .line 164
    invoke-static {v9}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->fromID(I)Lcom/google/android/libraries/smartburst/utils/FeatureType;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_2
    new-instance v9, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;

    .line 169
    invoke-static {v8}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {v9, v0, v3, v4}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;-><init>(Ljava/util/EnumSet;IF)V

    .line 172
    const v0, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v4

    float-to-long v10, v0

    .line 173
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_7

    .line 174
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 175
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 176
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 177
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->fromID(I)Lcom/google/android/libraries/smartburst/utils/FeatureType;

    move-result-object v8

    .line 178
    if-nez v8, :cond_3

    .line 179
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unrecognised feature id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_3
    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->length()I

    move-result v0

    if-eq v3, v0, :cond_4

    .line 182
    new-instance v0, Ljava/io/IOException;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->length()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4f

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unexpected feature length for feature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ". Expected: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_6

    .line 186
    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->length()I

    move-result v3

    invoke-static {v8, v3, v2}, Lcom/google/android/libraries/smartburst/utils/Feature;->readValues(Lcom/google/android/libraries/smartburst/utils/FeatureType;ILjava/io/DataInputStream;)Lcom/google/android/libraries/smartburst/utils/Feature;

    move-result-object v3

    .line 187
    int-to-long v12, v0

    mul-long/2addr v12, v10

    add-long/2addr v12, v6

    .line 188
    if-nez v3, :cond_5

    .line 189
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Feature should not be null when feature type is not null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 192
    :cond_5
    invoke-interface {v9, v12, v13, v3}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->setFeatureValue(JLcom/google/android/libraries/smartburst/utils/Feature;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 173
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 197
    :cond_7
    return-object v9
.end method

.method public static partialScanResult$5154KAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TGNAT3FCPNM6TBJ5T0MAGB6ADHM2RIICLPNAR3K7C______(JJ)Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;
    .locals 8

    .prologue
    .line 2061
    new-instance v1, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;

    const-wide/16 v4, -0x1

    move-wide v2, p0

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;-><init>(JJJ)V

    return-object v1
.end method

.method public static serializeTable(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Ljava/io/DataOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const v0, 0x7645f31f

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 228
    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 231
    new-instance v1, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderWriter;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderWriter;-><init>()V

    .line 232
    invoke-interface {p0}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getRowCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderWriter;->writeInt(I)V

    .line 233
    invoke-interface {p0}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getFrameRate()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderWriter;->writeFloat(F)V

    .line 234
    invoke-interface {p0}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getEarliestTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderWriter;->writeLong(J)V

    .line 235
    invoke-interface {p0}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getFeatureTypes()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderWriter;->writeInt(I)V

    .line 236
    invoke-interface {p0}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getFeatureTypes()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 237
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->id()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderWriter;->writeInt(I)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer$HeaderWriter;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 242
    invoke-interface {p0}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getFeatureTypes()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 243
    invoke-interface {p0, v0}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getColumnValues(Lcom/google/android/libraries/smartburst/utils/FeatureType;)[Lcom/google/android/libraries/smartburst/utils/Feature;

    move-result-object v2

    .line 244
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->id()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 245
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 246
    array-length v0, v2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 247
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 248
    invoke-virtual {v4, p1}, Lcom/google/android/libraries/smartburst/utils/Feature;->writeValues(Ljava/io/DataOutputStream;)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    :cond_2
    return-void
.end method
