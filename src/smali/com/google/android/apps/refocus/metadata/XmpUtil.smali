.class public final Lcom/google/android/apps/refocus/metadata/XmpUtil;
.super Ljava/lang/Object;
.source "XmpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final XMP_EXTENSION_HEADER_GUID_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x44

    sput v0, Lcom/google/android/apps/refocus/metadata/XmpUtil;->XMP_EXTENSION_HEADER_GUID_SIZE:I

    .line 56
    const-string v0, "XmpUtil"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/refocus/metadata/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method private static appendBuffer([BI[BI)I
    .locals 2

    .prologue
    .line 407
    array-length v0, p0

    sub-int/2addr v0, p1

    array-length v1, p2

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 408
    invoke-static {p0, p1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    return v0
.end method

.method private static createSection([B)Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;-><init>(B)V

    .line 313
    const/16 v1, 0xe1

    iput v1, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->marker:I

    .line 315
    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->length:I

    .line 316
    iput-object p0, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    .line 317
    return-object v0
.end method

.method public static createXMPMeta()Lcom/adobe/xmp/XMPMeta;
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->extractXMPMeta(Ljava/io/InputStream;Z)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static extractXMPMeta(Ljava/io/InputStream;Z)Lcom/adobe/xmp/XMPMeta;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-static {p0, v3, p1}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->parse(Ljava/io/InputStream;ZZ)Ljava/util/List;

    move-result-object v4

    .line 115
    invoke-static {v4}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->parseFirstValidXMPSection(Ljava/util/List;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_0

    const-string v0, "http://ns.adobe.com/xmp/note/"

    const-string v5, "HasExtendedXMP"

    invoke-interface {v2, v0, v5}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 158
    :goto_0
    return-object v0

    .line 122
    :cond_1
    :try_start_0
    const-string v0, "http://ns.adobe.com/xmp/note/"

    const-string v5, "HasExtendedXMP"

    .line 123
    invoke-interface {v2, v0, v5}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    if-eqz p1, :cond_5

    .line 1626
    const-string v5, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\u0000"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1627
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;

    .line 1628
    iget-object v0, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    invoke-static {v0, v5}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->hasHeader([BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 130
    :goto_1
    if-nez v0, :cond_4

    move-object v0, v1

    .line 133
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    move-object v0, v1

    .line 126
    goto :goto_0

    .line 1632
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 135
    goto :goto_0

    .line 138
    :cond_5
    invoke-static {v4, v0}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->parseExtendedXMPSections(Ljava/util/List;Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 139
    if-nez v0, :cond_6

    move-object v0, v1

    .line 142
    goto :goto_0

    .line 147
    :cond_6
    :try_start_1
    invoke-interface {v0}, Lcom/adobe/xmp/XMPMeta;->iterator()Lcom/adobe/xmp/XMPIterator;

    move-result-object v1

    .line 149
    :cond_7
    :goto_2
    invoke-interface {v1}, Lcom/adobe/xmp/XMPIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    .line 150
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 152
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPPropertyInfo;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    .line 151
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 158
    :catch_1
    move-exception v0

    move-object v0, v2

    goto/16 :goto_0
.end method

.method private static getGUID([B)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 415
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 421
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 422
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v0, v2

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 425
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 426
    array-length v5, v2

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-byte v6, v2, v0

    .line 427
    const-string v7, "%02x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-virtual {v4, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    sget-object v1, Lcom/google/android/apps/refocus/metadata/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "MD5 hash function not available"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    const-string v0, ""

    .line 430
    :goto_1
    return-object v0

    .line 429
    :cond_0
    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    .line 430
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static hasHeader([BLjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 450
    array-length v1, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v0

    .line 454
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [B

    .line 455
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    const/4 v0, 0x1

    goto :goto_0

    .line 460
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static parse(Ljava/io/InputStream;ZZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0xff

    const/4 v8, -0x1

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    if-nez p0, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-object v0

    .line 505
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v9, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/16 v2, 0xd8

    if-eq v1, v2, :cond_6

    .line 551
    :cond_2
    if-eqz p0, :cond_0

    .line 553
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 537
    :cond_3
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v3, v1

    .line 538
    if-eqz p1, :cond_4

    const/16 v1, 0xe1

    if-ne v2, v1, :cond_f

    .line 4563
    :cond_4
    add-int/lit8 v1, v3, -0x2

    :try_start_2
    sget v4, Lcom/google/android/apps/refocus/metadata/XmpUtil;->XMP_EXTENSION_HEADER_GUID_SIZE:I

    if-lt v1, v4, :cond_5

    if-nez p2, :cond_c

    .line 4564
    :cond_5
    new-instance v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;-><init>(B)V

    .line 4565
    iput v2, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->marker:I

    .line 4566
    iput v3, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->length:I

    .line 4567
    add-int/lit8 v2, v3, -0x2

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    .line 4568
    iget-object v2, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    const/4 v4, 0x0

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    .line 539
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_6
    :goto_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eq v1, v8, :cond_10

    .line 510
    if-eq v1, v9, :cond_7

    .line 551
    if-eqz p0, :cond_0

    .line 553
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 514
    :cond_7
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eq v2, v9, :cond_7

    .line 515
    if-ne v2, v8, :cond_8

    .line 551
    if-eqz p0, :cond_0

    .line 553
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    .line 519
    :cond_8
    const/16 v1, 0xda

    if-ne v2, v1, :cond_a

    .line 522
    if-nez p1, :cond_9

    .line 523
    :try_start_6
    new-instance v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;-><init>(B)V

    .line 524
    iput v2, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->marker:I

    .line 525
    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->length:I

    .line 526
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    .line 527
    iget-object v2, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    array-length v4, v4

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    .line 528
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 551
    :cond_9
    if-eqz p0, :cond_0

    .line 553
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto/16 :goto_0

    .line 532
    :cond_a
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 533
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v3

    .line 534
    if-eq v1, v8, :cond_b

    if-ne v3, v8, :cond_3

    .line 551
    :cond_b
    if-eqz p0, :cond_0

    .line 553
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto/16 :goto_0

    .line 4572
    :cond_c
    :try_start_a
    sget v1, Lcom/google/android/apps/refocus/metadata/XmpUtil;->XMP_EXTENSION_HEADER_GUID_SIZE:I

    new-array v4, v1, [B

    .line 4573
    const/4 v1, 0x0

    array-length v5, v4

    invoke-virtual {p0, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    .line 4575
    const-string v1, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-static {v4, v1}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->hasHeader([BLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz p2, :cond_d

    .line 4576
    new-instance v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;-><init>(B)V

    .line 4577
    iput v2, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->marker:I

    .line 4578
    array-length v2, v4

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->length:I

    .line 4579
    iput-object v4, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    .line 4580
    add-int/lit8 v2, v3, -0x2

    array-length v3, v4

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 547
    :catch_5
    move-exception v1

    .line 548
    :try_start_b
    sget-object v2, Lcom/google/android/apps/refocus/metadata/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Could not parse file."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 551
    if-eqz p0, :cond_0

    .line 553
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto/16 :goto_0

    .line 4584
    :cond_d
    :try_start_d
    new-instance v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;-><init>(B)V

    .line 4585
    iput v2, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->marker:I

    .line 4586
    iput v3, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->length:I

    .line 4587
    add-int/lit8 v2, v3, -0x2

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    .line 4588
    const/4 v2, 0x0

    iget-object v5, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4589
    iget-object v2, v1, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    array-length v5, v4

    add-int/lit8 v3, v3, -0x2

    array-length v4, v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 551
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_e

    .line 553
    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 556
    :cond_e
    :goto_3
    throw v0

    .line 543
    :cond_f
    add-int/lit8 v1, v3, -0x2

    int-to-long v2, v1

    :try_start_f
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 551
    :cond_10
    if-eqz p0, :cond_0

    .line 553
    :try_start_10
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v1

    goto/16 :goto_0

    :catch_8
    move-exception v1

    goto :goto_3
.end method

.method private static parseExtendedXMPSections(Ljava/util/List;Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/adobe/xmp/XMPMeta;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 644
    const-string v0, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 647
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 648
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 649
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 651
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;

    .line 652
    iget-object v9, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    invoke-static {v9, v3}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->hasHeader([BLjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 653
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x7

    .line 654
    iget-object v10, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    array-length v10, v10

    .line 655
    iget-object v11, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    array-length v11, v11

    sub-int/2addr v11, v9

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/2addr v1, v11

    .line 656
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    move v1, v0

    .line 660
    goto :goto_0

    .line 661
    :cond_1
    if-nez v1, :cond_2

    move-object v0, v4

    .line 684
    :goto_1
    return-object v0

    .line 666
    :cond_2
    new-array v8, v1, [B

    move v3, v2

    .line 668
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 669
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;

    .line 670
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 671
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 672
    sub-int/2addr v1, v9

    .line 673
    iget-object v0, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    invoke-static {v0, v9, v8, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    add-int v0, v3, v1

    .line 668
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_2

    .line 679
    :cond_3
    :try_start_0
    invoke-static {v8}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 680
    :catch_0
    move-exception v0

    .line 681
    sget-object v1, Lcom/google/android/apps/refocus/metadata/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Extended XMP parse error"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v4

    .line 682
    goto :goto_1
.end method

.method private static parseFirstValidXMPSection(Ljava/util/List;)Lcom/adobe/xmp/XMPMeta;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;",
            ">;)",
            "Lcom/adobe/xmp/XMPMeta;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 601
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;

    .line 602
    iget-object v3, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    const-string v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-static {v3, v4}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->hasHeader([BLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    iget-object v3, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    .line 5476
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_2

    .line 5477
    aget-byte v4, v3, v1

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_1

    .line 5478
    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v3, v4

    const/16 v5, 0x3f

    if-eq v4, v5, :cond_1

    .line 5479
    add-int/lit8 v1, v1, 0x1

    .line 604
    :goto_1
    add-int/lit8 v1, v1, -0x1d

    new-array v1, v1, [B

    .line 605
    iget-object v0, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    const/16 v3, 0x1d

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 607
    :try_start_0
    invoke-static {v1}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 615
    :goto_2
    return-object v0

    .line 5476
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5484
    :cond_2
    array-length v1, v3

    goto :goto_1

    .line 609
    :catch_0
    move-exception v0

    .line 610
    sget-object v1, Lcom/google/android/apps/refocus/metadata/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "XMP parse error"

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 611
    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 615
    goto :goto_2
.end method

.method private static serializeMeta(Lcom/adobe/xmp/XMPMeta;)[B
    .locals 4

    .prologue
    .line 392
    :try_start_0
    new-instance v0, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 393
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 397
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 398
    invoke-static {p0, v0}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 403
    :goto_0
    return-object v0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    sget-object v1, Lcom/google/android/apps/refocus/metadata/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Serialize XMP failed"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static toByteArray(I)[B
    .locals 3

    .prologue
    .line 434
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 435
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    aput-byte v2, v0, v1

    .line 436
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 437
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 438
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 439
    return-object v0
.end method

.method private static writeSections(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;",
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

    .line 295
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 296
    const/16 v0, 0xd8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 297
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;

    .line 298
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 299
    iget v2, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->marker:I

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 300
    iget v2, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->length:I

    if-lez v2, :cond_0

    .line 302
    iget v2, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->length:I

    shr-int/lit8 v2, v2, 0x8

    .line 303
    iget v3, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->length:I

    and-int/lit16 v3, v3, 0xff

    .line 304
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 305
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 307
    :cond_0
    iget-object v0, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 309
    :cond_1
    return-void
.end method

.method public static writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 13

    .prologue
    .line 234
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 235
    :cond_0
    const/4 v0, 0x0

    .line 287
    :goto_0
    return v0

    .line 239
    :cond_1
    const/4 v0, 0x0

    .line 242
    if-eqz p3, :cond_e

    .line 243
    invoke-static/range {p3 .. p3}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->serializeMeta(Lcom/adobe/xmp/XMPMeta;)[B

    move-result-object v0

    .line 244
    if-nez v0, :cond_2

    .line 245
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    :cond_2
    invoke-static {v0}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->getGUID([B)Ljava/lang/String;

    move-result-object v1

    .line 249
    :try_start_0
    const-string v2, "http://ns.adobe.com/xmp/note/"

    const-string v3, "HasExtendedXMP"

    invoke-interface {p2, v2, v3, v1}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 257
    :goto_1
    invoke-static {p2}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->serializeMeta(Lcom/adobe/xmp/XMPMeta;)[B

    move-result-object v0

    .line 258
    if-nez v0, :cond_3

    .line 259
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    sget-object v1, Lcom/google/android/apps/refocus/metadata/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Could not write XMP extension property"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    const/4 v0, 0x0

    goto :goto_0

    .line 262
    :cond_3
    if-eqz p3, :cond_4

    .line 263
    const-string v2, "http://ns.adobe.com/xmp/note/"

    const-string v3, "HasExtendedXMP"

    invoke-interface {p2, v2, v3}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->parse(Ljava/io/InputStream;ZZ)Ljava/util/List;

    move-result-object v4

    .line 2352
    if-nez v4, :cond_5

    .line 2353
    const/4 v2, -0x1

    .line 271
    :goto_2
    if-gez v2, :cond_a

    .line 272
    const/4 v0, 0x0

    goto :goto_0

    .line 2356
    :cond_5
    array-length v2, v0

    const v3, 0xffde

    if-le v2, v3, :cond_6

    .line 2357
    sget-object v0, Lcom/google/android/apps/refocus/metadata/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "The standard XMP section cannot have a size larger than 65502 bytes."

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2363
    const/4 v2, -0x1

    goto :goto_2

    .line 3323
    :cond_6
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1d

    new-array v2, v2, [B

    .line 3324
    const-string v3, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v2, v6}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->appendBuffer([BI[BI)I

    move-result v3

    .line 3325
    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v3}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->appendBuffer([BI[BI)I

    .line 3326
    invoke-static {v2}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->createSection([B)Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;

    move-result-object v3

    .line 2368
    const/4 v0, 0x0

    move v2, v0

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 2370
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;

    iget v0, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->marker:I

    const/16 v5, 0xe1

    if-ne v0, v5, :cond_7

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;

    iget-object v0, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->data:[B

    const-string v5, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-static {v0, v5}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->hasHeader([BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2372
    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2368
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 2378
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;

    iget v0, v0, Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;->marker:I

    const/16 v2, 0xe1

    if-ne v0, v2, :cond_9

    const/4 v0, 0x1

    .line 2379
    :goto_4
    invoke-interface {v4, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v2, v0

    .line 2380
    goto :goto_2

    .line 2378
    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    .line 276
    :cond_a
    if-eqz v1, :cond_d

    .line 277
    add-int/lit8 v5, v2, 0x1

    .line 4330
    invoke-static {v1}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->getGUID([B)Ljava/lang/String;

    move-result-object v0

    .line 4331
    const-string v2, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4333
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v6, v2, 0x8

    .line 4334
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4336
    array-length v2, v1

    const v3, 0xffb2

    sub-int/2addr v3, v6

    div-int/2addr v2, v3

    add-int/lit8 v8, v2, 0x1

    .line 4337
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v3, v8, :cond_c

    .line 4338
    array-length v9, v1

    sub-int/2addr v9, v2

    add-int/2addr v9, v6

    const v10, 0xffb2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 4339
    new-array v9, v9, [B

    .line 4342
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v9, v12}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->appendBuffer([BI[BI)I

    move-result v10

    add-int/lit8 v10, v10, 0x0

    .line 4343
    array-length v11, v1

    invoke-static {v11}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->toByteArray(I)[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12, v9, v10}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->appendBuffer([BI[BI)I

    move-result v11

    add-int/2addr v10, v11

    .line 4344
    invoke-static {v2}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->toByteArray(I)[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12, v9, v10}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->appendBuffer([BI[BI)I

    move-result v11

    add-int/2addr v10, v11

    .line 4345
    invoke-static {v1, v2, v9, v10}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->appendBuffer([BI[BI)I

    move-result v10

    add-int/2addr v2, v10

    .line 4346
    invoke-static {v9}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->createSection([B)Lcom/google/android/apps/refocus/metadata/XmpUtil$Section;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4337
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 4331
    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 3386
    :cond_c
    invoke-interface {v4, v5, v7}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 282
    :cond_d
    :try_start_1
    invoke-static {p1, v4}, Lcom/google/android/apps/refocus/metadata/XmpUtil;->writeSections(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 283
    :catch_1
    move-exception v0

    .line 284
    sget-object v1, Lcom/google/android/apps/refocus/metadata/XmpUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Write to stream failed"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    move-object v1, v0

    goto/16 :goto_1
.end method
