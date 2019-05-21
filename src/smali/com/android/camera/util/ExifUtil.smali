.class public final Lcom/android/camera/util/ExifUtil;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# static fields
.field private static final FOCUS_DISTANCE_PRECISION:Ljava/lang/Long;

.field private static final LOG_2:D

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final exif:Lcom/android/camera/exif/ExifInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "CameraExif"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/ExifUtil;->TAG:Ljava/lang/String;

    .line 25
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/util/ExifUtil;->LOG_2:D

    .line 26
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/ExifUtil;->FOCUS_DISTANCE_PRECISION:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/exif/ExifInterface;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 35
    return-void
.end method

.method private final addExifTag(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 157
    if-eqz p2, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 160
    :cond_0
    return-void
.end method

.method public static create()Lcom/android/camera/util/ExifUtil;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/android/camera/util/ExifUtil;

    new-instance v1, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    return-object v0
.end method

.method public static getExif([B)Lcom/android/camera/exif/ExifInterface;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 79
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    sget-object v2, Lcom/android/camera/util/ExifUtil;->TAG:Ljava/lang/String;

    const-string v3, "Failed to read EXIF data"

    invoke-static {v2, v3, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static rational(Ljava/lang/Double;Ljava/lang/Long;)Lcom/android/camera/util/Rational;
    .locals 6

    .prologue
    .line 177
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 178
    new-instance v0, Lcom/android/camera/util/Rational;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static rational(Ljava/lang/Float;Ljava/lang/Long;)Lcom/android/camera/util/Rational;
    .locals 6

    .prologue
    .line 170
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 171
    new-instance v0, Lcom/android/camera/util/Rational;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final addLocationToExif(Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/camera/exif/ExifInterface;->addGpsLatLongTags(DD)Z

    .line 52
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/exif/ExifInterface;->addGpsDateTimeStampTag(J)Z

    .line 53
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/exif/ExifInterface;->addGpsAltitudeTags(D)Z

    .line 56
    :cond_0
    return-void
.end method

.method public final getExif()Lcom/android/camera/exif/ExifInterface;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    return-object v0
.end method

.method public final populateExif(IILcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/base/Optional;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/apps/camera/util/layout/Orientation;",
            "Lcom/google/common/base/Optional",
            "<+",
            "Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .line 1087
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 1088
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_MODEL:I

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 1092
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1093
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1094
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1095
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1096
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->exif:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 1099
    invoke-static/range {p3 .. p3}, Lcom/android/camera/exif/ExifOrientation;->fromRotation(Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/android/camera/exif/ExifOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/exif/ExifOrientation;->getTagExifValue()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    .line 1097
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 1096
    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 71
    invoke-virtual/range {p4 .. p4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual/range {p4 .. p4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;

    .line 1104
    const-wide/32 v2, 0x3b9aca00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1105
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1106
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1107
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1108
    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1111
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1112
    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    .line 1163
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 1164
    new-instance v2, Lcom/android/camera/util/Rational;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v2, v10, v11, v12, v13}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    .line 1112
    :goto_0
    invoke-direct {p0, v8, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 1115
    if-eqz v1, :cond_0

    .line 1116
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-double v8, v8

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    div-double v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1191
    if-eqz v1, :cond_4

    .line 1192
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sget-wide v8, Lcom/android/camera/util/ExifUtil;->LOG_2:D

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1118
    :goto_1
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    .line 1120
    invoke-static {v1, v4}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Double;Ljava/lang/Long;)Lcom/android/camera/util/Rational;

    move-result-object v1

    .line 1118
    invoke-direct {p0, v2, v1}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 1124
    :cond_0
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v2}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 1127
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1128
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_F_NUMBER:I

    invoke-static {v1, v5}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Float;Ljava/lang/Long;)Lcom/android/camera/util/Rational;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 1131
    if-eqz v1, :cond_1

    .line 1132
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 2184
    if-eqz v1, :cond_5

    .line 2185
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sget-wide v8, Lcom/android/camera/util/ExifUtil;->LOG_2:D

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1132
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1133
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    .line 1134
    invoke-static {v1, v6}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Double;Ljava/lang/Long;)Lcom/android/camera/util/Rational;

    move-result-object v1

    .line 1133
    invoke-direct {p0, v2, v1}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 1138
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1139
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-static {v1, v7}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Float;Ljava/lang/Long;)Lcom/android/camera/util/Rational;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 1142
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1143
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 1144
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 1150
    :goto_3
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1151
    if-eqz v0, :cond_2

    .line 2205
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const v2, 0x358637bd    # 1.0E-6f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    .line 2206
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v0, v1, v0

    .line 2207
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sget-object v2, Lcom/android/camera/util/ExifUtil;->FOCUS_DISTANCE_PRECISION:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Float;Ljava/lang/Long;)Lcom/android/camera/util/Rational;

    move-result-object v1

    .line 2208
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_7

    .line 2209
    const/4 v0, 0x1

    .line 2226
    :goto_4
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    invoke-direct {p0, v2, v1}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 2227
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 74
    :cond_2
    return-void

    .line 1166
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1194
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2187
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1146
    :cond_6
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto :goto_3

    .line 2210
    :cond_7
    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_8

    .line 2211
    const/4 v0, 0x2

    goto :goto_4

    .line 2213
    :cond_8
    const/4 v0, 0x3

    .line 2215
    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    .line 2218
    new-instance v1, Lcom/android/camera/util/Rational;

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    .line 2219
    const/4 v0, 0x3

    goto :goto_4

    .line 2223
    :cond_a
    new-instance v1, Lcom/android/camera/util/Rational;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    .line 2224
    const/4 v0, 0x0

    goto :goto_4
.end method
