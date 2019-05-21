.class public final Lcom/android/camera/util/XmpUtil;
.super Ljava/lang/Object;
.source "XmpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/XmpUtil$Section;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const-string v0, "XmpUtil"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/XmpUtil;->TAG:Ljava/lang/String;

    .line 55
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/panorama/"

    const-string v2, "GPano"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createXMPMeta()Lcom/adobe/xmp/XMPMeta;
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 88
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/camera/util/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v0

    .line 89
    if-nez v0, :cond_0

    move-object v0, v2

    .line 107
    :goto_0
    return-object v0

    .line 93
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/XmpUtil$Section;

    .line 94
    iget-object v3, v0, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    invoke-static {v3}, Lcom/android/camera/util/XmpUtil;->hasXMPHeader([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    iget-object v3, v0, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    .line 1295
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-lez v1, :cond_3

    .line 1296
    aget-byte v4, v3, v1

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_2

    .line 1297
    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v3, v4

    const/16 v5, 0x3f

    if-eq v4, v5, :cond_2

    .line 1298
    add-int/lit8 v1, v1, 0x1

    .line 96
    :goto_2
    add-int/lit8 v1, v1, -0x1d

    new-array v1, v1, [B

    .line 97
    iget-object v0, v0, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    const/16 v3, 0x1d

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    :try_start_0
    invoke-static {v1}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1295
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1303
    :cond_3
    array-length v1, v3

    goto :goto_2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    sget-object v1, Lcom/android/camera/util/XmpUtil;->TAG:Ljava/lang/String;

    const-string v3, "XMP parse error"

    invoke-static {v1, v3, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 103
    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 107
    goto :goto_0
.end method

.method public static extractXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/android/camera/util/XmpUtil;->TAG:Ljava/lang/String;

    const-string v2, "XMP parse: only jpeg file is supported"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 77
    :goto_0
    return-object v0

    .line 74
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/camera/util/XmpUtil;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 76
    sget-object v3, Lcom/android/camera/util/XmpUtil;->TAG:Ljava/lang/String;

    const-string v4, "Could not read file: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v3, v0, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 77
    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static hasXMPHeader([B)Z
    .locals 5

    .prologue
    const/16 v2, 0x1d

    const/4 v0, 0x0

    .line 269
    array-length v1, p0

    if-ge v1, v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    const/16 v1, 0x1d

    :try_start_0
    new-array v1, v1, [B

    .line 274
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1d

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;",
            "Lcom/adobe/xmp/XMPMeta;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x1d

    const/4 v0, 0x0

    const/16 v6, 0xe1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_1

    :cond_0
    move-object p0, v0

    .line 259
    :goto_0
    return-object p0

    .line 219
    :cond_1
    :try_start_0
    new-instance v1, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 220
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 224
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 225
    invoke-static {p1, v1}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 230
    array-length v4, v1

    const v5, 0xffde

    if-le v4, v5, :cond_2

    move-object p0, v0

    .line 232
    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    sget-object v2, Lcom/android/camera/util/XmpUtil;->TAG:Ljava/lang/String;

    const-string v3, "Serialize xmp failed"

    invoke-static {v2, v3, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    .line 228
    goto :goto_0

    .line 235
    :cond_2
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1d

    new-array v0, v0, [B

    .line 236
    const-string v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v2, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    array-length v4, v1

    invoke-static {v1, v2, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    new-instance v4, Lcom/android/camera/util/XmpUtil$Section;

    invoke-direct {v4, v2}, Lcom/android/camera/util/XmpUtil$Section;-><init>(B)V

    .line 239
    iput v6, v4, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    .line 241
    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    iput v1, v4, Lcom/android/camera/util/XmpUtil$Section;->length:I

    .line 242
    iput-object v0, v4, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    move v1, v2

    .line 244
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 246
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/XmpUtil$Section;

    iget v0, v0, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    if-ne v0, v6, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/XmpUtil$Section;

    iget-object v0, v0, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    invoke-static {v0}, Lcom/android/camera/util/XmpUtil;->hasXMPHeader([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    invoke-interface {p0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 244
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 254
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/XmpUtil$Section;

    iget v0, v0, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    if-ne v0, v6, :cond_5

    move v0, v3

    .line 256
    :goto_2
    invoke-interface {p0, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p0, v1

    .line 259
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 255
    goto :goto_2
.end method

.method private static parse(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0xff

    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 317
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v7, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v2, 0xd8

    if-eq v1, v2, :cond_2

    .line 369
    :cond_0
    if-eqz p0, :cond_1

    .line 371
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 367
    :cond_1
    :goto_0
    return-object v0

    .line 320
    :cond_2
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eq v2, v6, :cond_d

    .line 323
    if-eq v2, v7, :cond_3

    .line 369
    if-eqz p0, :cond_1

    .line 371
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 327
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eq v2, v7, :cond_3

    .line 328
    if-ne v2, v6, :cond_4

    .line 369
    if-eqz p0, :cond_1

    .line 371
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 332
    :cond_4
    const/16 v3, 0xda

    if-ne v2, v3, :cond_7

    .line 335
    if-nez p1, :cond_5

    .line 336
    :try_start_6
    new-instance v3, Lcom/android/camera/util/XmpUtil$Section;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/camera/util/XmpUtil$Section;-><init>(B)V

    .line 337
    iput v2, v3, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    .line 338
    const/4 v2, -0x1

    iput v2, v3, Lcom/android/camera/util/XmpUtil$Section;->length:I

    .line 339
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, v3, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    .line 340
    iget-object v2, v3, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    const/4 v4, 0x0

    iget-object v5, v3, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    array-length v5, v5

    invoke-virtual {p0, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 341
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 369
    :cond_5
    if-eqz p0, :cond_6

    .line 371
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_6
    :goto_2
    move-object v0, v1

    .line 343
    goto :goto_0

    .line 345
    :cond_7
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 346
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v4

    .line 347
    if-eq v3, v6, :cond_8

    if-ne v4, v6, :cond_9

    .line 369
    :cond_8
    if-eqz p0, :cond_1

    .line 371
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    .line 350
    :cond_9
    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    .line 351
    if-eqz p1, :cond_a

    const/16 v4, 0xe1

    if-ne v2, v4, :cond_b

    .line 352
    :cond_a
    :try_start_a
    new-instance v4, Lcom/android/camera/util/XmpUtil$Section;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/camera/util/XmpUtil$Section;-><init>(B)V

    .line 353
    iput v2, v4, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    .line 354
    iput v3, v4, Lcom/android/camera/util/XmpUtil$Section;->length:I

    .line 355
    add-int/lit8 v2, v3, -0x2

    new-array v2, v2, [B

    iput-object v2, v4, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    .line 356
    iget-object v2, v4, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    const/4 v5, 0x0

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I

    .line 357
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 365
    :catch_3
    move-exception v1

    .line 366
    :try_start_b
    sget-object v2, Lcom/android/camera/util/XmpUtil;->TAG:Ljava/lang/String;

    const-string v3, "Could not parse file."

    invoke-static {v2, v3, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 369
    if-eqz p0, :cond_1

    .line 371
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto/16 :goto_0

    .line 361
    :cond_b
    add-int/lit8 v2, v3, -0x2

    int-to-long v2, v2

    :try_start_d
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 369
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_c

    .line 371
    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 374
    :cond_c
    :goto_3
    throw v0

    .line 369
    :cond_d
    if-eqz p0, :cond_e

    .line 371
    :try_start_f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    :cond_e
    :goto_4
    move-object v0, v1

    .line 364
    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto/16 :goto_0

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3
.end method

.method private static writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/XmpUtil$Section;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xff

    .line 197
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 198
    const/16 v0, 0xd8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/XmpUtil$Section;

    .line 200
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 201
    iget v2, v0, Lcom/android/camera/util/XmpUtil$Section;->marker:I

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 202
    iget v2, v0, Lcom/android/camera/util/XmpUtil$Section;->length:I

    if-lez v2, :cond_0

    .line 204
    iget v2, v0, Lcom/android/camera/util/XmpUtil$Section;->length:I

    shr-int/lit8 v2, v2, 0x8

    .line 205
    iget v3, v0, Lcom/android/camera/util/XmpUtil$Section;->length:I

    and-int/lit16 v3, v3, 0xff

    .line 206
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 207
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 209
    :cond_0
    iget-object v0, v0, Lcom/android/camera/util/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 211
    :cond_1
    return-void
.end method

.method public static writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-static {p0, v0}, Lcom/android/camera/util/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v1

    .line 170
    invoke-static {v1, p2}, Lcom/android/camera/util/XmpUtil;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;

    move-result-object v1

    .line 171
    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    :try_start_0
    invoke-static {p1, v1}, Lcom/android/camera/util/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    if-eqz p1, :cond_2

    .line 183
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 189
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    :try_start_2
    sget-object v2, Lcom/android/camera/util/XmpUtil;->TAG:Ljava/lang/String;

    const-string v3, "Write to stream failed"

    invoke-static {v2, v3, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    if-eqz p1, :cond_0

    .line 183
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_3

    .line 183
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 186
    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public static writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    sget-object v0, Lcom/android/camera/util/XmpUtil;->TAG:Ljava/lang/String;

    const-string v2, "XMP parse: only jpeg file is supported"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 161
    :goto_0
    return v0

    .line 135
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/util/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-static {v0, p1}, Lcom/android/camera/util/XmpUtil;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    if-nez v0, :cond_2

    move v0, v1

    .line 138
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 141
    sget-object v3, Lcom/android/camera/util/XmpUtil;->TAG:Ljava/lang/String;

    const-string v4, "Could not read file: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v3, v0, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 142
    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_2
    const/4 v3, 0x0

    .line 147
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    :try_start_2
    invoke-static {v2, v0}, Lcom/android/camera/util/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 161
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 150
    :goto_3
    :try_start_4
    sget-object v4, Lcom/android/camera/util/XmpUtil;->TAG:Ljava/lang/String;

    const-string v5, "Write file failed:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-static {v4, v3, v0}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    if-eqz v2, :cond_3

    .line 155
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    move v0, v1

    .line 151
    goto :goto_0

    .line 150
    :cond_4
    :try_start_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 153
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v2, :cond_5

    .line 155
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 158
    :cond_5
    :goto_7
    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_7

    .line 153
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_6

    .line 149
    :catch_5
    move-exception v0

    goto :goto_3
.end method
