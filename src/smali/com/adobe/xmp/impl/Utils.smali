.class public final Lcom/adobe/xmp/impl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static xmlNameChars:[Z

.field private static xmlNameStartChars:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/16 v5, 0x3a

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1485
    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    .line 1486
    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    move v0, v1

    .line 1488
    :goto_0
    sget-object v2, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 1490
    sget-object v4, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    const/16 v2, 0x61

    if-gt v2, v0, :cond_0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    :cond_0
    if-gt v6, v0, :cond_1

    if-le v0, v7, :cond_3

    :cond_1
    if-eq v0, v5, :cond_3

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_3

    const/16 v2, 0xc0

    if-gt v2, v0, :cond_2

    const/16 v2, 0xd6

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0xd8

    if-gt v2, v0, :cond_9

    const/16 v2, 0xf6

    if-gt v0, v2, :cond_9

    :cond_3
    move v2, v3

    :goto_1
    aput-boolean v2, v4, v0

    .line 1498
    sget-object v4, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    const/16 v2, 0x61

    if-gt v2, v0, :cond_4

    const/16 v2, 0x7a

    if-le v0, v2, :cond_8

    :cond_4
    if-gt v6, v0, :cond_5

    if-le v0, v7, :cond_8

    :cond_5
    const/16 v2, 0x30

    if-gt v2, v0, :cond_6

    const/16 v2, 0x39

    if-le v0, v2, :cond_8

    :cond_6
    if-eq v0, v5, :cond_8

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_8

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_8

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_8

    const/16 v2, 0xb7

    if-eq v0, v2, :cond_8

    const/16 v2, 0xc0

    if-gt v2, v0, :cond_7

    const/16 v2, 0xd6

    if-le v0, v2, :cond_8

    :cond_7
    const/16 v2, 0xd8

    if-gt v2, v0, :cond_a

    const/16 v2, 0xf6

    if-gt v0, v2, :cond_a

    :cond_8
    move v2, v3

    :goto_2
    aput-boolean v2, v4, v0

    .line 1488
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    :cond_9
    move v2, v1

    .line 1490
    goto :goto_1

    :cond_a
    move v2, v1

    .line 1498
    goto :goto_2

    .line 35
    :cond_b
    return-void
.end method

.method static checkUUIDFormat(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 274
    .line 278
    if-nez p0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    move v2, v1

    move v3, v4

    .line 283
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 285
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_3

    .line 287
    add-int/lit8 v5, v2, 0x1

    .line 288
    if-eqz v3, :cond_4

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    const/16 v2, 0x12

    if-eq v0, v2, :cond_2

    const/16 v2, 0x17

    if-ne v0, v2, :cond_4

    :cond_2
    move v2, v4

    :goto_2
    move v3, v2

    move v2, v5

    .line 283
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v2, v1

    .line 288
    goto :goto_2

    .line 293
    :cond_5
    if-eqz v3, :cond_0

    const/4 v3, 0x4

    if-ne v3, v2, :cond_0

    const/16 v2, 0x24

    if-ne v2, v0, :cond_0

    move v1, v4

    goto :goto_0
.end method

.method public static escapeXML(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/4 v1, 0x0

    .line 373
    move v0, v1

    .line 374
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 376
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 377
    const/16 v3, 0x3c

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_0

    const/16 v3, 0x26

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    if-eq v2, v5, :cond_0

    if-eq v2, v6, :cond_0

    if-eqz p1, :cond_1

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    .line 382
    :cond_0
    const/4 v0, 0x1

    .line 387
    :goto_1
    if-nez v0, :cond_2

    .line 421
    :goto_2
    return-object p0

    .line 374
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 396
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 398
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 399
    if-eq v0, v4, :cond_4

    if-eq v0, v5, :cond_4

    if-eq v0, v6, :cond_4

    .line 401
    sparse-switch v0, :sswitch_data_0

    .line 409
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 396
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 405
    :sswitch_0
    const-string v0, "&lt;"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 406
    :sswitch_1
    const-string v0, "&gt;"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 407
    :sswitch_2
    const-string v0, "&amp;"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 408
    :sswitch_3
    if-eqz p1, :cond_3

    const-string v0, "&quot;"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_3
    const-string v0, "\""

    goto :goto_5

    .line 416
    :cond_4
    const-string v3, "&#x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    const/16 v0, 0x3b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 421
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1

    .line 401
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method static isControlChar(C)Z
    .locals 1

    .prologue
    .line 353
    const/16 v0, 0x1f

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNameChar(C)Z
    .locals 1

    .prologue
    .line 476
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNameStartChar(C)Z
    .locals 1

    .prologue
    .line 459
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXMLName(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 319
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 312
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 316
    goto :goto_0

    .line 312
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isXMLNameNS(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v4, 0x3a

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_0
    move v1, v2

    .line 343
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, v1

    .line 336
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 338
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_4

    :cond_3
    move v1, v2

    .line 340
    goto :goto_0

    .line 336
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    const-string v0, "x-default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-object p0

    .line 70
    :cond_0
    const/4 v1, 0x1

    .line 71
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 88
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    :goto_2
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :sswitch_1
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    goto :goto_2

    .line 94
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 99
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method static removeControlChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 435
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 438
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 436
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 124
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 126
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3f

    if-ne v0, v4, :cond_2

    move v0, v1

    .line 130
    :goto_0
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 133
    add-int/lit8 v0, v3, 0x1

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    .line 137
    new-instance v7, Ljava/lang/StringBuffer;

    sub-int v3, v6, v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 138
    :cond_0
    :goto_1
    if-ge v0, v6, :cond_1

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
