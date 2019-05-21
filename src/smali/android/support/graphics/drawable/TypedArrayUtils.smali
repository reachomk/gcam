.class Landroid/support/graphics/drawable/TypedArrayUtils;
.super Ljava/lang/Object;
.source "TypedArrayUtils.java"


# instance fields
.field mEndPosition:I

.field mEndWithNegOrDot:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2188
    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/graphics/drawable/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .prologue
    .line 1178
    new-instance v0, Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-direct {v0, p1, p2}, Landroid/support/graphics/drawable/PathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    return-void
.end method

.method static copyOfRange([FII)[F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1044
    if-gez p2, :cond_0

    .line 1045
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1047
    :cond_0
    array-length v0, p0

    .line 1048
    if-gez v0, :cond_1

    .line 1049
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1052
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1053
    new-array v1, p2, [F

    .line 1054
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1055
    return-object v1
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1081
    if-nez p0, :cond_0

    .line 1082
    const/4 v0, 0x0

    .line 1102
    :goto_0
    return-object v0

    .line 1087
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v2, v3

    .line 1088
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1089
    invoke-static {p0, v0}, Landroid/support/graphics/drawable/TypedArrayUtils;->nextStart(Ljava/lang/String;I)I

    move-result v4

    .line 1090
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1091
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1092
    invoke-static {v0}, Landroid/support/graphics/drawable/TypedArrayUtils;->getFloats(Ljava/lang/String;)[F

    move-result-object v2

    .line 1093
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v5, v0, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->addNode(Ljava/util/ArrayList;C[F)V

    .line 1097
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v2, v4

    .line 1098
    goto :goto_1

    .line 1099
    :cond_2
    sub-int/2addr v0, v2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1100
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-array v1, v3, [F

    invoke-static {v5, v0, v1}, Landroid/support/graphics/drawable/TypedArrayUtils;->addNode(Ljava/util/ArrayList;C[F)V

    .line 1102
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    goto :goto_0
.end method

.method public static deepCopyNodes([Landroid/support/graphics/drawable/PathParser$PathDataNode;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .locals 4

    .prologue
    .line 1110
    if-nez p0, :cond_0

    .line 1111
    const/4 v0, 0x0

    .line 1117
    :goto_0
    return-object v0

    .line 1113
    :cond_0
    array-length v0, p0

    new-array v1, v0, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1114
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1115
    new-instance v2, Landroid/support/graphics/drawable/PathParser$PathDataNode;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Landroid/support/graphics/drawable/PathParser$PathDataNode;-><init>(Landroid/support/graphics/drawable/PathParser$PathDataNode;)V

    aput-object v2, v1, v0

    .line 1114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1117
    goto :goto_0
.end method

.method private static extract$5166KOBMC4NMOOBECSNL6T3ID5N6EEQ99HGMSP3IDTKM8BRJELO70RRIEGNMESJ1E1K6IORJ5TI74OBNC5H6OP9FA1GN8Q2GC5P76PBI4H2NGT3IC5HN8HJCDTGN8KJ5EDQMOT1R55B0____(Ljava/lang/String;ILandroid/support/graphics/drawable/TypedArrayUtils;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1246
    .line 1248
    iput-boolean v1, p2, Landroid/support/graphics/drawable/TypedArrayUtils;->mEndWithNegOrDot:Z

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, p1

    .line 1251
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 1254
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1255
    sparse-switch v6, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 1281
    :goto_1
    if-nez v3, :cond_2

    .line 1251
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :sswitch_0
    move v0, v1

    move v3, v5

    .line 1259
    goto :goto_1

    .line 1262
    :sswitch_1
    if-eq v4, p1, :cond_0

    if-nez v0, :cond_0

    .line 1264
    iput-boolean v5, p2, Landroid/support/graphics/drawable/TypedArrayUtils;->mEndWithNegOrDot:Z

    move v0, v1

    move v3, v5

    goto :goto_1

    .line 1268
    :sswitch_2
    if-nez v2, :cond_1

    move v0, v1

    move v2, v5

    .line 1269
    goto :goto_1

    .line 1273
    :cond_1
    iput-boolean v5, p2, Landroid/support/graphics/drawable/TypedArrayUtils;->mEndWithNegOrDot:Z

    move v0, v1

    move v3, v5

    .line 1275
    goto :goto_1

    :sswitch_3
    move v0, v5

    .line 1278
    goto :goto_1

    .line 1287
    :cond_2
    iput v4, p2, Landroid/support/graphics/drawable/TypedArrayUtils;->mEndPosition:I

    .line 1288
    return-void

    .line 1255
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1199
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x7a

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 1200
    new-array v0, v2, [F

    .line 1230
    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    .line 1199
    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    .line 1203
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v4, v0, [F

    .line 1208
    new-instance v5, Landroid/support/graphics/drawable/TypedArrayUtils;

    invoke-direct {v5}, Landroid/support/graphics/drawable/TypedArrayUtils;-><init>()V

    .line 1209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    move v7, v1

    move v1, v2

    move v2, v7

    .line 1214
    :goto_3
    if-ge v2, v6, :cond_4

    .line 1215
    invoke-static {p0, v2, v5}, Landroid/support/graphics/drawable/TypedArrayUtils;->extract$5166KOBMC4NMOOBECSNL6T3ID5N6EEQ99HGMSP3IDTKM8BRJELO70RRIEGNMESJ1E1K6IORJ5TI74OBNC5H6OP9FA1GN8Q2GC5P76PBI4H2NGT3IC5HN8HJCDTGN8KJ5EDQMOT1R55B0____(Ljava/lang/String;ILandroid/support/graphics/drawable/TypedArrayUtils;)V

    .line 1216
    iget v3, v5, Landroid/support/graphics/drawable/TypedArrayUtils;->mEndPosition:I

    .line 1218
    if-ge v2, v3, :cond_5

    .line 1219
    add-int/lit8 v0, v1, 0x1

    .line 1220
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1219
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v4, v1

    .line 1223
    :goto_4
    iget-boolean v1, v5, Landroid/support/graphics/drawable/TypedArrayUtils;->mEndWithNegOrDot:Z

    if-eqz v1, :cond_3

    move v2, v3

    move v1, v0

    .line 1225
    goto :goto_3

    .line 1227
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v2, v1

    move v1, v0

    goto :goto_3

    .line 1230
    :cond_4
    const/4 v0, 0x0

    invoke-static {v4, v0, v1}, Landroid/support/graphics/drawable/TypedArrayUtils;->copyOfRange([FII)[F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error in parsing \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move v0, v1

    goto :goto_4
.end method

.method public static getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 1

    .prologue
    .line 59
    invoke-static {p1, p2}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_0

    .line 63
    :goto_0
    return p4

    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    goto :goto_0
.end method

.method public static getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    .locals 1

    .prologue
    .line 29
    invoke-static {p1, p2}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 33
    :goto_0
    return p4

    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p4

    goto :goto_0
.end method

.method public static getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 49
    invoke-static {p1, p2}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    .line 50
    if-nez v1, :cond_0

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    goto :goto_0
.end method

.method public static hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 24
    const-string v0, "http://schemas.android.com/apk/res/android"

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 1162
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1163
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1168
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_2

    :cond_0
    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    const/16 v1, 0x45

    if-eq v0, v1, :cond_2

    .line 1174
    :cond_1
    return p1

    .line 1172
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
