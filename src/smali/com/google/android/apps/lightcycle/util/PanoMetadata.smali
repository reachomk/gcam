.class public final Lcom/google/android/apps/lightcycle/util/PanoMetadata;
.super Ljava/lang/Object;
.source "PanoMetadata.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final croppedAreaHeight:I

.field public final croppedAreaWidth:I

.field public final fullPanoHeight:I

.field public final fullPanoWidth:I

.field public final synthetic:Z

.field public final usePanoViewer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "PanoMetadata"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 143
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->usePanoViewer:Z

    .line 144
    iput p1, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaWidth:I

    .line 145
    iput p2, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaHeight:I

    .line 148
    iput p1, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoWidth:I

    .line 149
    iput p2, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoHeight:I

    .line 154
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->synthetic:Z

    .line 155
    return-void
.end method

.method private constructor <init>(IILjava/util/Calendar;Ljava/util/Calendar;ILjava/lang/String;ZIIIIIIIIIIZ)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-boolean p7, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->usePanoViewer:Z

    .line 111
    iput p8, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaWidth:I

    .line 112
    iput p9, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaHeight:I

    .line 113
    iput p10, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoWidth:I

    .line 114
    iput p11, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoHeight:I

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->synthetic:Z

    .line 122
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getDate(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 346
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->getPropertyCalendar(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 322
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "http://ns.google.com/photos/1.0/panorama/"

    invoke-interface {p0, v0, p1}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNear(DDD)Z
    .locals 2

    .prologue
    .line 354
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parse(Lcom/google/android/apps/lightcycle/util/InputStreamFactory;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;
    .locals 26

    .prologue
    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/util/InputStreamFactory;->create()Ljava/io/InputStream;

    move-result-object v6

    .line 186
    if-nez v6, :cond_0

    .line 187
    const/4 v2, 0x0

    .line 295
    :goto_0
    return-object v2

    .line 190
    :cond_0
    const/4 v5, 0x0

    .line 191
    const/4 v4, 0x0

    .line 192
    const/4 v3, 0x0

    .line 193
    const/4 v8, 0x0

    .line 194
    const/4 v9, 0x0

    .line 195
    const/4 v10, 0x0

    .line 196
    const/4 v11, 0x0

    .line 197
    const/4 v12, 0x0

    .line 198
    const/4 v13, 0x0

    .line 199
    const/4 v14, 0x0

    .line 200
    const/4 v15, 0x0

    .line 201
    const/16 v16, 0x0

    .line 202
    const/16 v17, 0x0

    .line 203
    const/16 v18, 0x0

    .line 204
    const/16 v19, 0x0

    .line 207
    const/4 v2, 0x0

    .line 208
    invoke-static {v6}, Lcom/android/camera/util/XmpUtil;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v7

    .line 210
    :try_start_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_1
    if-eqz v7, :cond_a

    .line 217
    :try_start_1
    const-string v6, "FirstPhotoDate"

    invoke-static {v7, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getDate(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    .line 218
    const-string v6, "LastPhotoDate"

    invoke-static {v7, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getDate(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    .line 219
    const-string v6, "SourcePhotosCount"

    invoke-static {v7, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v3

    .line 220
    const-string v6, "ProjectionType"

    .line 1330
    const-string v20, "http://ns.google.com/photos/1.0/panorama/"

    move-object/from16 v0, v20

    invoke-interface {v7, v0, v6}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1331
    const-string v20, "http://ns.google.com/photos/1.0/panorama/"

    move-object/from16 v0, v20

    invoke-interface {v7, v0, v6}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 221
    :goto_2
    const-string v6, "UsePanoramaViewer"

    .line 1338
    const-string v20, "http://ns.google.com/photos/1.0/panorama/"

    move-object/from16 v0, v20

    invoke-interface {v7, v0, v6}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1339
    const-string v20, "http://ns.google.com/photos/1.0/panorama/"

    move-object/from16 v0, v20

    invoke-interface {v7, v0, v6}, Lcom/adobe/xmp/XMPMeta;->getPropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 222
    :goto_3
    const-string v6, "CroppedAreaImageWidthPixels"

    invoke-static {v7, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v10

    .line 223
    const-string v6, "CroppedAreaImageHeightPixels"

    invoke-static {v7, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v11

    .line 224
    const-string v6, "FullPanoWidthPixels"

    invoke-static {v7, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v12

    .line 225
    const-string v6, "FullPanoHeightPixels"

    invoke-static {v7, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v13

    .line 226
    const-string v6, "CroppedAreaLeftPixels"

    invoke-static {v7, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v14

    .line 227
    const-string v6, "CroppedAreaTopPixels"

    invoke-static {v7, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v15

    .line 229
    const-string v6, "LargestValidInteriorRectLeft"

    invoke-static {v7, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v16

    .line 230
    const-string v6, "LargestValidInteriorRectTop"

    invoke-static {v7, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v17

    .line 231
    const-string v6, "LargestValidInteriorRectWidth"

    .line 232
    invoke-static {v7, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I

    move-result v18

    .line 233
    const-string v6, "LargestValidInteriorRectHeight"

    .line 234
    invoke-static {v7, v6}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->getInt(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    .line 237
    if-lez v10, :cond_3

    if-lez v11, :cond_3

    if-lez v12, :cond_3

    if-lez v13, :cond_3

    const/4 v2, 0x1

    :goto_4
    move/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    .line 248
    :goto_5
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 249
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/util/InputStreamFactory;->create()Ljava/io/InputStream;

    move-result-object v4

    .line 251
    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 253
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 258
    :goto_6
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v24, v0

    .line 259
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v25, v0

    .line 260
    mul-int/lit8 v3, v25, 0x2

    move/from16 v0, v24

    if-ne v3, v0, :cond_4

    const/4 v3, 0x1

    move v4, v3

    .line 261
    :goto_7
    const/4 v3, 0x0

    .line 265
    if-nez v2, :cond_9

    .line 266
    if-eqz v4, :cond_5

    .line 267
    sget-object v2, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->TAG:Ljava/lang/String;

    const-string v3, "Could not parse pano metadata for file. Filling in 360 defaults."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v2, 0x1

    move/from16 v20, v2

    .line 277
    :goto_8
    move/from16 v0, v24

    int-to-double v2, v0

    move/from16 v0, v25

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 278
    int-to-double v4, v10

    int-to-double v6, v11

    div-double/2addr v4, v6

    .line 279
    if-nez v20, :cond_6

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->isNear(DDD)Z

    move-result v2

    if-nez v2, :cond_6

    .line 280
    sget-object v2, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->TAG:Ljava/lang/String;

    const-string v3, "Pano metadata does not match file dimensions."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 211
    :catch_0
    move-exception v6

    .line 212
    sget-object v20, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x18

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v22, "Failed to close stream: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1333
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1341
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 237
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_4

    :catch_1
    move-exception v6

    move/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    goto/16 :goto_5

    .line 254
    :catch_2
    move-exception v4

    .line 255
    sget-object v5, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x18

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Failed to close stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 260
    :cond_4
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_7

    .line 271
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 285
    :cond_6
    if-nez v20, :cond_7

    int-to-double v2, v12

    int-to-double v4, v13

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->isNear(DDD)Z

    move-result v2

    if-nez v2, :cond_7

    .line 286
    sget-object v2, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->TAG:Ljava/lang/String;

    const-string v3, "Pano metadata invalid: Full pano dimension not 2:1."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 290
    :cond_7
    if-eqz v20, :cond_8

    .line 292
    new-instance v2, Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v2, v0, v1}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;-><init>(II)V

    goto/16 :goto_0

    .line 295
    :cond_8
    new-instance v2, Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    const/16 v20, 0x0

    move/from16 v3, v24

    move/from16 v4, v25

    move-object/from16 v5, v23

    move-object/from16 v6, v22

    move/from16 v7, v21

    invoke-direct/range {v2 .. v20}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;-><init>(IILjava/util/Calendar;Ljava/util/Calendar;ILjava/lang/String;ZIIIIIIIIIIZ)V

    goto/16 :goto_0

    :cond_9
    move/from16 v20, v3

    goto/16 :goto_8

    :cond_a
    move/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    goto/16 :goto_5
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/google/android/apps/lightcycle/util/InputStreamFactory;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/util/InputStreamFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->parse(Lcom/google/android/apps/lightcycle/util/InputStreamFactory;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    move-result-object v0

    return-object v0
.end method
