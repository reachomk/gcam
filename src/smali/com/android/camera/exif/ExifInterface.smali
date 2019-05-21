.class public final Lcom/android/camera/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# static fields
.field private static final ALTITUDE_METERS_PRECISION:Ljava/lang/Long;

.field private static DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field private static final LATLONG_SECONDS_PRECISION:Ljava/lang/Long;

.field public static final TAG_APERTURE_VALUE:I

.field private static TAG_ARTIST:I

.field private static TAG_BITS_PER_SAMPLE:I

.field private static TAG_BRIGHTNESS_VALUE:I

.field private static TAG_CFA_PATTERN:I

.field private static TAG_COLOR_SPACE:I

.field private static TAG_COMPONENTS_CONFIGURATION:I

.field private static TAG_COMPRESSED_BITS_PER_PIXEL:I

.field private static TAG_COMPRESSION:I

.field private static TAG_CONTRAST:I

.field private static TAG_COPYRIGHT:I

.field private static TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field private static TAG_DATE_TIME_DIGITIZED:I

.field private static TAG_DATE_TIME_ORIGINAL:I

.field private static TAG_DEVICE_SETTING_DESCRIPTION:I

.field private static TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field private static TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field private static TAG_EXPOSURE_INDEX:I

.field private static TAG_EXPOSURE_MODE:I

.field private static TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field private static TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field private static TAG_FLASHPIX_VERSION:I

.field private static TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field private static TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field private static TAG_FOCAL_PLANE_X_RESOLUTION:I

.field private static TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field private static TAG_GAIN_CONTROL:I

.field private static TAG_GPS_ALTITUDE:I

.field private static TAG_GPS_ALTITUDE_REF:I

.field private static TAG_GPS_AREA_INFORMATION:I

.field private static TAG_GPS_DATE_STAMP:I

.field private static TAG_GPS_DEST_BEARING:I

.field private static TAG_GPS_DEST_BEARING_REF:I

.field private static TAG_GPS_DEST_DISTANCE:I

.field private static TAG_GPS_DEST_DISTANCE_REF:I

.field private static TAG_GPS_DEST_LATITUDE:I

.field private static TAG_GPS_DEST_LATITUDE_REF:I

.field private static TAG_GPS_DIFFERENTIAL:I

.field private static TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field private static TAG_GPS_MAP_DATUM:I

.field private static TAG_GPS_MEASURE_MODE:I

.field private static TAG_GPS_PROCESSING_METHOD:I

.field private static TAG_GPS_SATTELLITES:I

.field private static TAG_GPS_SPEED:I

.field private static TAG_GPS_SPEED_REF:I

.field private static TAG_GPS_STATUS:I

.field private static TAG_GPS_TIME_STAMP:I

.field private static TAG_GPS_TRACK:I

.field private static TAG_GPS_TRACK_REF:I

.field private static TAG_GPS_VERSION_ID:I

.field private static TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field private static TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field private static TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field private static TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field private static TAG_MAX_APERTURE_VALUE:I

.field private static TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field private static TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field private static TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field private static TAG_PLANAR_CONFIGURATION:I

.field private static TAG_PRIMARY_CHROMATICITIES:I

.field private static TAG_REFERENCE_BLACK_WHITE:I

.field private static TAG_RELATED_SOUND_FILE:I

.field private static TAG_RESOLUTION_UNIT:I

.field private static TAG_ROWS_PER_STRIP:I

.field private static TAG_SAMPLES_PER_PIXEL:I

.field private static TAG_SATURATION:I

.field private static TAG_SCENE_CAPTURE_TYPE:I

.field private static TAG_SCENE_TYPE:I

.field private static TAG_SENSING_METHOD:I

.field private static TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field private static TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field private static TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field private static TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field private static TAG_SUBJECT_LOCATION:I

.field private static TAG_SUB_SEC_TIME:I

.field private static TAG_SUB_SEC_TIME_DIGITIZED:I

.field private static TAG_SUB_SEC_TIME_ORIGINAL:I

.field private static TAG_TRANSFER_FUNCTION:I

.field private static TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field private static TAG_WHITE_POINT:I

.field private static TAG_X_RESOLUTION:I

.field private static TAG_Y_CB_CR_COEFFICIENTS:I

.field private static TAG_Y_CB_CR_POSITIONING:I

.field private static TAG_Y_CB_CR_SUB_SAMPLING:I

.field private static TAG_Y_RESOLUTION:I

.field private static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Lcom/android/camera/exif/ExifData;

.field private final dateTimeStampFormat:Ljava/text/DateFormat;

.field private final gPSDateStampFormat:Ljava/text/DateFormat;

.field private final gPSTimeStampCalendar:Ljava/util/Calendar;

.field private tagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 53
    const-string v0, "ExifInterface"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    const/16 v0, 0x100

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    .line 66
    const/16 v0, 0x101

    .line 67
    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 68
    const/16 v0, 0x102

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    .line 69
    const/16 v0, 0x103

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_COMPRESSION:I

    .line 70
    const/16 v0, 0x106

    .line 71
    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    .line 72
    const/16 v0, 0x10e

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    .line 73
    const/16 v0, 0x10f

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    .line 74
    const/16 v0, 0x110

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_MODEL:I

    .line 75
    const/16 v0, 0x111

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 76
    const/16 v0, 0x112

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 77
    const/16 v0, 0x115

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    .line 78
    const/16 v0, 0x116

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    .line 79
    const/16 v0, 0x117

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 80
    const/16 v0, 0x11a

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_X_RESOLUTION:I

    .line 81
    const/16 v0, 0x11b

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    .line 82
    const/16 v0, 0x11c

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    .line 83
    const/16 v0, 0x128

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    .line 84
    const/16 v0, 0x12d

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    .line 85
    const/16 v0, 0x131

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    .line 86
    const/16 v0, 0x132

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 87
    const/16 v0, 0x13b

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_ARTIST:I

    .line 88
    const/16 v0, 0x13e

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_POINT:I

    .line 89
    const/16 v0, 0x13f

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    .line 90
    const/16 v0, 0x211

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    .line 91
    const/16 v0, 0x212

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    .line 92
    const/16 v0, 0x213

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    .line 93
    const/16 v0, 0x214

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    .line 94
    const/16 v0, -0x7d68

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_COPYRIGHT:I

    .line 95
    const/16 v0, -0x7897

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 96
    const/16 v0, -0x77db

    invoke-static {v2, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    .line 98
    const/16 v0, 0x201

    invoke-static {v4, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 99
    const/16 v0, 0x202

    .line 100
    invoke-static {v4, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 102
    const/16 v0, -0x7d66

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    .line 103
    const/16 v0, -0x7d63

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_F_NUMBER:I

    .line 104
    const/16 v0, -0x77de

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    .line 105
    const/16 v0, -0x77dc

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    .line 106
    const/16 v0, -0x77d9

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    .line 107
    const/16 v0, -0x77d8

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_OECF:I

    .line 108
    const/16 v0, -0x7000

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_VERSION:I

    .line 109
    const/16 v0, -0x6ffd

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    .line 110
    const/16 v0, -0x6ffc

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    .line 111
    const/16 v0, -0x6eff

    .line 112
    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    .line 113
    const/16 v0, -0x6efe

    .line 114
    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    .line 115
    const/16 v0, -0x6dff

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    .line 116
    const/16 v0, -0x6dfe

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    .line 117
    const/16 v0, -0x6dfd

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    .line 118
    const/16 v0, -0x6dfc

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    .line 119
    const/16 v0, -0x6dfb

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    .line 120
    const/16 v0, -0x6dfa

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    .line 121
    const/16 v0, -0x6df9

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    .line 122
    const/16 v0, -0x6df8

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    .line 123
    const/16 v0, -0x6df7

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    .line 124
    const/16 v0, -0x6df6

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    .line 125
    const/16 v0, -0x6dec

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    .line 126
    const/16 v0, -0x6d84

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_MAKER_NOTE:I

    .line 127
    const/16 v0, -0x6d7a

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_USER_COMMENT:I

    .line 128
    const/16 v0, -0x6d70

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    .line 129
    const/16 v0, -0x6d6f

    .line 130
    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    .line 131
    const/16 v0, -0x6d6e

    .line 132
    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    .line 133
    const/16 v0, -0x6000

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    .line 134
    const/16 v0, -0x5fff

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_COLOR_SPACE:I

    .line 135
    const/16 v0, -0x5ffe

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    .line 136
    const/16 v0, -0x5ffd

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    .line 137
    const/16 v0, -0x5ffc

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    .line 138
    const/16 v0, -0x5ffb

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 139
    const/16 v0, -0x5df5

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    .line 140
    const/16 v0, -0x5df4

    .line 141
    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    .line 142
    const/16 v0, -0x5df2

    .line 143
    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    .line 144
    const/16 v0, -0x5df1

    .line 145
    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    .line 146
    const/16 v0, -0x5df0

    .line 147
    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    .line 148
    const/16 v0, -0x5dec

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    .line 149
    const/16 v0, -0x5deb

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    .line 150
    const/16 v0, -0x5de9

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SENSING_METHOD:I

    .line 151
    const/16 v0, -0x5d00

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_FILE_SOURCE:I

    .line 152
    const/16 v0, -0x5cff

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SCENE_TYPE:I

    .line 153
    const/16 v0, -0x5cfe

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_CFA_PATTERN:I

    .line 154
    const/16 v0, -0x5bff

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    .line 155
    const/16 v0, -0x5bfe

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    .line 156
    const/16 v0, -0x5bfd

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    .line 157
    const/16 v0, -0x5bfc

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    .line 158
    const/16 v0, -0x5bfb

    .line 159
    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    .line 160
    const/16 v0, -0x5bfa

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    .line 161
    const/16 v0, -0x5bf9

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    .line 162
    const/16 v0, -0x5bf8

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_CONTRAST:I

    .line 163
    const/16 v0, -0x5bf7

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SATURATION:I

    .line 164
    const/16 v0, -0x5bf6

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SHARPNESS:I

    .line 165
    const/16 v0, -0x5bf5

    .line 166
    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    .line 167
    const/16 v0, -0x5bf4

    .line 168
    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    .line 169
    const/16 v0, -0x5be0

    invoke-static {v1, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    .line 171
    invoke-static {v3, v2}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 172
    invoke-static {v3, v4}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 173
    invoke-static {v3, v1}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    .line 174
    invoke-static {v3, v5}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 175
    invoke-static {v3, v3}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    .line 176
    const/4 v0, 0x5

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    .line 177
    const/4 v0, 0x6

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    .line 178
    const/4 v0, 0x7

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    .line 179
    const/16 v0, 0x8

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    .line 180
    const/16 v0, 0x9

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_STATUS:I

    .line 181
    const/16 v0, 0xa

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    .line 182
    const/16 v0, 0xb

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DOP:I

    .line 183
    const/16 v0, 0xc

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    .line 184
    const/16 v0, 0xd

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_SPEED:I

    .line 185
    const/16 v0, 0xe

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    .line 186
    const/16 v0, 0xf

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_TRACK:I

    .line 187
    const/16 v0, 0x10

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    .line 188
    const/16 v0, 0x11

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    .line 189
    const/16 v0, 0x12

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    .line 190
    const/16 v0, 0x13

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    .line 191
    const/16 v0, 0x14

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    .line 194
    const/16 v0, 0x17

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    .line 195
    const/16 v0, 0x18

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    .line 196
    const/16 v0, 0x19

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    .line 197
    const/16 v0, 0x1a

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    .line 198
    const/16 v0, 0x1b

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    .line 199
    const/16 v0, 0x1c

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    .line 200
    const/16 v0, 0x1d

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    .line 201
    const/16 v0, 0x1e

    invoke-static {v3, v0}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 204
    invoke-static {v5, v4}, Lcom/android/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 210
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 213
    sput-object v0, Lcom/android/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    .line 12243
    int-to-short v1, v1

    .line 213
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 13243
    int-to-short v1, v1

    .line 214
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 14243
    int-to-short v1, v1

    .line 215
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 15243
    int-to-short v1, v1

    .line 216
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 16243
    int-to-short v1, v1

    .line 217
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 226
    sput-object v0, Lcom/android/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    .line 17243
    int-to-short v1, v1

    .line 226
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 18243
    int-to-short v1, v1

    .line 227
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 19243
    int-to-short v1, v1

    .line 228
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 574
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/camera/exif/ExifInterface;->ALTITUDE_METERS_PRECISION:Ljava/lang/Long;

    .line 575
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/camera/exif/ExifInterface;->LATLONG_SECONDS_PRECISION:Ljava/lang/Long;

    .line 579
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/android/camera/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    new-instance v0, Lcom/android/camera/exif/ExifData;

    sget-object v1, Lcom/android/camera/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/android/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->data:Lcom/android/camera/exif/ExifData;

    .line 1759
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->dateTimeStampFormat:Ljava/text/DateFormat;

    .line 1760
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->gPSDateStampFormat:Ljava/text/DateFormat;

    .line 1761
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->gPSTimeStampCalendar:Ljava/util/Calendar;

    .line 1909
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    .line 583
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->gPSDateStampFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 584
    return-void
.end method

.method public static convertLatOrLongToDouble([Lcom/android/camera/util/Rational;Ljava/lang/String;)D
    .locals 8

    .prologue
    .line 1717
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/android/camera/util/Rational;->toDouble()D

    move-result-wide v0

    .line 1718
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/android/camera/util/Rational;->toDouble()D

    move-result-wide v2

    .line 1719
    const/4 v4, 0x2

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lcom/android/camera/util/Rational;->toDouble()D

    move-result-wide v4

    .line 1720
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double v2, v4, v2

    add-double/2addr v0, v2

    .line 1721
    const-string v2, "S"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "W"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1722
    :cond_0
    neg-double v0, v0

    .line 1724
    :cond_1
    return-wide v0

    .line 1726
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static defineTag(IS)I
    .locals 2

    .prologue
    .line 235
    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 1891
    new-array v1, v4, [B

    .line 1892
    invoke-virtual {p0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1893
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1894
    invoke-virtual {p1, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1895
    invoke-virtual {p0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 1897
    :cond_0
    return-void
.end method

.method private getDefinedTagDefaultIfd(I)I
    .locals 1

    .prologue
    .line 1296
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1297
    if-nez v0, :cond_0

    .line 1298
    const/4 v0, -0x1

    .line 1300
    :goto_0
    return v0

    .line 5250
    :cond_0
    ushr-int/lit8 v0, p1, 0x10

    .line 1300
    goto :goto_0
.end method

.method private getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 837
    if-nez p1, :cond_0

    .line 838
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 843
    :catch_0
    move-exception v0

    .line 845
    throw v0
.end method

.method private static getFlagsFromAllowedIfds([I)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2210
    array-length v0, p0

    if-nez v0, :cond_1

    move v0, v1

    .line 2223
    :cond_0
    return v0

    .line 2214
    :cond_1
    invoke-static {}, Lcom/android/camera/exif/IfdData;->getIfds()[I

    move-result-object v4

    move v3, v1

    move v0, v1

    .line 2215
    :goto_0
    const/4 v2, 0x5

    if-ge v3, v2, :cond_0

    .line 2216
    array-length v5, p0

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_2

    aget v6, p0, v2

    .line 2217
    aget v7, v4, v3

    if-ne v7, v6, :cond_3

    .line 2218
    const/4 v2, 0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 2215
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 2216
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getTag(II)Lcom/android/camera/exif/ExifTag;
    .locals 2

    .prologue
    .line 1024
    invoke-static {p2}, Lcom/android/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1025
    const/4 v0, 0x0

    .line 1027
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->data:Lcom/android/camera/exif/ExifData;

    .line 3243
    int-to-short v1, p1

    .line 1027
    invoke-virtual {v0, v1, p2}, Lcom/android/camera/exif/ExifData;->getTag(SI)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    goto :goto_0
.end method

.method private getTagRationalValues(II)[Lcom/android/camera/util/Rational;
    .locals 1

    .prologue
    .line 1226
    invoke-direct {p0, p1, p2}, Lcom/android/camera/exif/ExifInterface;->getTag(II)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 1227
    if-nez v0, :cond_0

    .line 1228
    const/4 v0, 0x0

    .line 1230
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getValueAsRationals()[Lcom/android/camera/util/Rational;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTrueTagKey(I)S
    .locals 1

    .prologue
    .line 243
    int-to-short v0, p0

    return v0
.end method

.method private static getTypeFromInfo(I)S
    .locals 1

    .prologue
    .line 2227
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method protected static isIfdAllowed(II)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2199
    invoke-static {}, Lcom/android/camera/exif/IfdData;->getIfds()[I

    move-result-object v3

    .line 12174
    ushr-int/lit8 v4, p0, 0x18

    move v0, v1

    .line 2201
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 2202
    aget v5, v3, v0

    if-ne p1, v5, :cond_1

    shr-int v5, v4, v0

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_1

    move v1, v2

    .line 2206
    :cond_0
    return v1

    .line 2201
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static isOffsetTag(S)Z
    .locals 2

    .prologue
    .line 1330
    sget-object v0, Lcom/android/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static toExifLatLong(D)[Lcom/android/camera/util/Rational;
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    .line 1877
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1878
    double-to-int v2, v0

    .line 1879
    int-to-double v4, v2

    sub-double/2addr v0, v4

    mul-double/2addr v0, v6

    .line 1880
    double-to-int v3, v0

    .line 1881
    int-to-double v4, v3

    sub-double/2addr v0, v4

    mul-double/2addr v0, v6

    sget-object v4, Lcom/android/camera/exif/ExifInterface;->LATLONG_SECONDS_PRECISION:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v0, v4

    .line 1882
    double-to-int v0, v0

    .line 1883
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/camera/util/Rational;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/camera/util/Rational;

    int-to-long v6, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    aput-object v5, v1, v4

    const/4 v2, 0x1

    new-instance v4, Lcom/android/camera/util/Rational;

    int-to-long v6, v3

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    aput-object v4, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/android/camera/util/Rational;

    int-to-long v4, v0

    sget-object v0, Lcom/android/camera/exif/ExifInterface;->LATLONG_SECONDS_PRECISION:Ljava/lang/Long;

    .line 1886
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    aput-object v3, v1, v2

    .line 1883
    return-object v1
.end method


# virtual methods
.method public final addDateTimeStampTag(IJLjava/util/TimeZone;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1774
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v1, :cond_1

    .line 1777
    :cond_0
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->dateTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1778
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->dateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 1779
    if-nez v1, :cond_2

    .line 1786
    :cond_1
    :goto_0
    return v0

    .line 1782
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1786
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final addGpsAltitudeTags(D)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1828
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    new-instance v3, Lcom/android/camera/util/Rational;

    .line 1832
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sget-object v6, Lcom/android/camera/exif/ExifInterface;->ALTITUDE_METERS_PRECISION:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-long v4, v4

    sget-object v6, Lcom/android/camera/exif/ExifInterface;->ALTITUDE_METERS_PRECISION:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    .line 1829
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 1833
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const-wide/16 v6, 0x0

    cmpl-double v0, p1, v6

    if-ltz v0, :cond_1

    move v0, v1

    .line 1836
    :goto_0
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 1834
    invoke-virtual {p0, v4, v0}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 1839
    if-eqz v3, :cond_0

    if-nez v0, :cond_2

    :cond_0
    move v2, v1

    .line 1844
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 1838
    goto :goto_0

    .line 1842
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1843
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    goto :goto_1
.end method

.method public final addGpsDateTimeStampTag(J)Z
    .locals 11

    .prologue
    const/4 v1, 0x1

    const-wide/16 v8, 0x1

    const/4 v0, 0x0

    .line 1854
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    iget-object v3, p0, Lcom/android/camera/exif/ExifInterface;->gPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    .line 1855
    if-nez v2, :cond_1

    .line 1872
    :cond_0
    :goto_0
    return v0

    .line 1858
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1859
    iget-object v2, p0, Lcom/android/camera/exif/ExifInterface;->gPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1860
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/android/camera/util/Rational;

    new-instance v4, Lcom/android/camera/util/Rational;

    iget-object v5, p0, Lcom/android/camera/exif/ExifInterface;->gPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    .line 1864
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    aput-object v4, v3, v0

    new-instance v4, Lcom/android/camera/util/Rational;

    iget-object v5, p0, Lcom/android/camera/exif/ExifInterface;->gPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    .line 1865
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v6, v5

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    aput-object v4, v3, v1

    const/4 v4, 0x2

    new-instance v5, Lcom/android/camera/util/Rational;

    iget-object v6, p0, Lcom/android/camera/exif/ExifInterface;->gPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xd

    .line 1866
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/camera/util/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    .line 1861
    invoke-virtual {p0, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    .line 1868
    if-eqz v2, :cond_0

    .line 1871
    invoke-virtual {p0, v2}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    move v0, v1

    .line 1872
    goto :goto_0
.end method

.method public final addGpsLatLongTags(DD)Z
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 1797
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lcom/android/camera/exif/ExifInterface;->toExifLatLong(D)[Lcom/android/camera/util/Rational;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 1798
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lcom/android/camera/exif/ExifInterface;->toExifLatLong(D)[Lcom/android/camera/util/Rational;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    .line 1799
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    cmpl-double v0, p1, v6

    if-ltz v0, :cond_1

    .line 1803
    const-string v0, "N"

    .line 1800
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 1805
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    cmpl-double v0, p3, v6

    if-ltz v0, :cond_2

    .line 1809
    const-string v0, "E"

    .line 1806
    :goto_1
    invoke-virtual {p0, v4, v0}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 1811
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v0, :cond_3

    .line 1812
    :cond_0
    const/4 v0, 0x0

    .line 1818
    :goto_2
    return v0

    .line 1804
    :cond_1
    const-string v0, "S"

    goto :goto_0

    .line 1810
    :cond_2
    const-string v0, "W"

    goto :goto_1

    .line 1814
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1815
    invoke-virtual {p0, v2}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1816
    invoke-virtual {p0, v3}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1817
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1818
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public final buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const v9, 0xffff

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1370
    .line 6250
    ushr-int/lit8 v4, p1, 0x10

    .line 6345
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 6346
    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v0, v8

    .line 6357
    :cond_1
    :goto_0
    return-object v0

    .line 6349
    :cond_2
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 7231
    and-int v3, v0, v9

    .line 6351
    if-eqz v3, :cond_3

    move v5, v6

    .line 6352
    :goto_1
    invoke-static {v0, v4}, Lcom/android/camera/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v8

    .line 6353
    goto :goto_0

    :cond_3
    move v5, v7

    .line 6351
    goto :goto_1

    .line 6355
    :cond_4
    new-instance v0, Lcom/android/camera/exif/ExifTag;

    .line 7243
    int-to-short v1, p1

    .line 6355
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/exif/ExifTag;-><init>(SSIIZ)V

    .line 7444
    if-eqz p2, :cond_5

    .line 7446
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_6

    .line 7447
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v1

    and-int/2addr v1, v9

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    move-result v7

    .line 6356
    :cond_5
    :goto_2
    if-nez v7, :cond_1

    move-object v0, v8

    .line 6357
    goto :goto_0

    .line 7448
    :cond_6
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 7449
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/android/camera/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result v7

    goto :goto_2

    .line 7450
    :cond_7
    instance-of v1, p2, [I

    if-eqz v1, :cond_8

    .line 7451
    check-cast p2, [I

    invoke-virtual {v0, p2}, Lcom/android/camera/exif/ExifTag;->setValue([I)Z

    move-result v7

    goto :goto_2

    .line 7452
    :cond_8
    instance-of v1, p2, [J

    if-eqz v1, :cond_9

    .line 7453
    check-cast p2, [J

    invoke-virtual {v0, p2}, Lcom/android/camera/exif/ExifTag;->setValue([J)Z

    move-result v7

    goto :goto_2

    .line 7454
    :cond_9
    instance-of v1, p2, Lcom/android/camera/util/Rational;

    if-eqz v1, :cond_a

    .line 7455
    check-cast p2, Lcom/android/camera/util/Rational;

    .line 8385
    new-array v1, v6, [Lcom/android/camera/util/Rational;

    aput-object p2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifTag;->setValue([Lcom/android/camera/util/Rational;)Z

    move-result v7

    goto :goto_2

    .line 7456
    :cond_a
    instance-of v1, p2, [Lcom/android/camera/util/Rational;

    if-eqz v1, :cond_b

    .line 7457
    check-cast p2, [Lcom/android/camera/util/Rational;

    invoke-virtual {v0, p2}, Lcom/android/camera/exif/ExifTag;->setValue([Lcom/android/camera/util/Rational;)Z

    move-result v7

    goto :goto_2

    .line 7458
    :cond_b
    instance-of v1, p2, [B

    if-eqz v1, :cond_c

    .line 7459
    check-cast p2, [B

    invoke-virtual {v0, p2}, Lcom/android/camera/exif/ExifTag;->setValue([B)Z

    move-result v7

    goto :goto_2

    .line 7460
    :cond_c
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 7461
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifTag;->setValue(I)Z

    move-result v7

    goto :goto_2

    .line 7462
    :cond_d
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_e

    .line 7463
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 9298
    new-array v1, v6, [J

    aput-wide v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifTag;->setValue([J)Z

    move-result v7

    goto :goto_2

    .line 7464
    :cond_e
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_f

    .line 7465
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 9430
    new-array v2, v6, [B

    aput-byte v1, v2, v7

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/ExifTag;->setValue([B)Z

    move-result v7

    goto :goto_2

    .line 7466
    :cond_f
    instance-of v1, p2, [Ljava/lang/Short;

    if-eqz v1, :cond_12

    .line 7468
    check-cast p2, [Ljava/lang/Short;

    .line 7469
    array-length v1, p2

    new-array v3, v1, [I

    move v1, v7

    .line 7470
    :goto_3
    array-length v2, p2

    if-ge v1, v2, :cond_11

    .line 7471
    aget-object v2, p2, v1

    if-nez v2, :cond_10

    move v2, v7

    :goto_4
    aput v2, v3, v1

    .line 7470
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7471
    :cond_10
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    and-int/2addr v2, v9

    goto :goto_4

    .line 7473
    :cond_11
    invoke-virtual {v0, v3}, Lcom/android/camera/exif/ExifTag;->setValue([I)Z

    move-result v7

    goto/16 :goto_2

    .line 7474
    :cond_12
    instance-of v1, p2, [Ljava/lang/Integer;

    if-eqz v1, :cond_15

    .line 7476
    check-cast p2, [Ljava/lang/Integer;

    .line 7477
    array-length v1, p2

    new-array v3, v1, [I

    move v1, v7

    .line 7478
    :goto_5
    array-length v2, p2

    if-ge v1, v2, :cond_14

    .line 7479
    aget-object v2, p2, v1

    if-nez v2, :cond_13

    move v2, v7

    :goto_6
    aput v2, v3, v1

    .line 7478
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7479
    :cond_13
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_6

    .line 7481
    :cond_14
    invoke-virtual {v0, v3}, Lcom/android/camera/exif/ExifTag;->setValue([I)Z

    move-result v7

    goto/16 :goto_2

    .line 7482
    :cond_15
    instance-of v1, p2, [Ljava/lang/Long;

    if-eqz v1, :cond_18

    .line 7484
    check-cast p2, [Ljava/lang/Long;

    .line 7485
    array-length v1, p2

    new-array v1, v1, [J

    .line 7486
    :goto_7
    array-length v2, p2

    if-ge v7, v2, :cond_17

    .line 7487
    aget-object v2, p2, v7

    if-nez v2, :cond_16

    const-wide/16 v2, 0x0

    :goto_8
    aput-wide v2, v1, v7

    .line 7486
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 7487
    :cond_16
    aget-object v2, p2, v7

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_8

    .line 7489
    :cond_17
    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifTag;->setValue([J)Z

    move-result v7

    goto/16 :goto_2

    .line 7490
    :cond_18
    instance-of v1, p2, [Ljava/lang/Byte;

    if-eqz v1, :cond_5

    .line 7492
    check-cast p2, [Ljava/lang/Byte;

    .line 7493
    array-length v1, p2

    new-array v3, v1, [B

    move v1, v7

    .line 7494
    :goto_9
    array-length v2, p2

    if-ge v1, v2, :cond_1a

    .line 7495
    aget-object v2, p2, v1

    if-nez v2, :cond_19

    move v2, v7

    :goto_a
    aput-byte v2, v3, v1

    .line 7494
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 7495
    :cond_19
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    goto :goto_a

    .line 7497
    :cond_1a
    invoke-virtual {v0, v3}, Lcom/android/camera/exif/ExifTag;->setValue([B)Z

    move-result v7

    goto/16 :goto_2
.end method

.method protected final buildUninitializedTag(I)Lcom/android/camera/exif/ExifTag;
    .locals 6

    .prologue
    .line 1375
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1376
    if-nez v0, :cond_0

    .line 1377
    const/4 v0, 0x0

    .line 1384
    :goto_0
    return-object v0

    .line 1379
    :cond_0
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 10231
    const v1, 0xffff

    and-int v3, v0, v1

    .line 1381
    if-eqz v3, :cond_1

    const/4 v5, 0x1

    .line 10250
    :goto_1
    ushr-int/lit8 v4, p1, 0x10

    .line 1383
    new-instance v0, Lcom/android/camera/exif/ExifTag;

    .line 11243
    int-to-short v1, p1

    .line 1383
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/exif/ExifTag;-><init>(SSIIZ)V

    goto :goto_0

    .line 1381
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public final getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 4

    .prologue
    .line 816
    if-nez p1, :cond_0

    .line 817
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_0
    new-instance v0, Lcom/android/camera/util/ProcessingOutputStream;

    new-instance v1, Lcom/android/camera/exif/ExifTransformingStateMachine;

    new-instance v2, Ljava/io/BufferedOutputStream;

    const/high16 v3, 0x10000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iget-object v3, p0, Lcom/android/camera/exif/ExifInterface;->data:Lcom/android/camera/exif/ExifData;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/camera/exif/ExifTransformingStateMachine;-><init>(Ljava/io/OutputStream;Lcom/android/camera/exif/ExifInterface;Lcom/android/camera/exif/ExifData;)V

    invoke-direct {v0, v1}, Lcom/android/camera/util/ProcessingOutputStream;-><init>(Lcom/android/camera/util/ProcessingOutputStream$StateMachine;)V

    return-object v0
.end method

.method public final getTag(I)Lcom/android/camera/exif/ExifTag;
    .locals 1

    .prologue
    .line 1038
    invoke-direct {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1039
    invoke-direct {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTag(II)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    return-object v0
.end method

.method protected final getTagInfo()Landroid/util/SparseIntArray;
    .locals 9

    .prologue
    const/high16 v8, 0x40000

    const/high16 v7, 0x70000

    const/high16 v6, 0x50000

    const/high16 v5, 0x30000

    const/high16 v4, 0x20000

    .line 1912
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 1913
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    .line 11927
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 11928
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 11929
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    or-int v3, v0, v4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11931
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11932
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11933
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11935
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_COMPRESSION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11936
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11939
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11940
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11942
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11944
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11946
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11948
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_X_RESOLUTION:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11950
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11952
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11954
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    or-int v3, v0, v8

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11957
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11958
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    or-int v3, v0, v8

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11961
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    or-int v3, v0, v5

    or-int/lit16 v3, v3, 0x300

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11964
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_POINT:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11965
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11968
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11971
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11974
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11975
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    or-int v3, v0, v4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11978
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    or-int v3, v0, v4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11980
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_MODEL:I

    or-int v3, v0, v4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11982
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    or-int v3, v0, v4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11984
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_ARTIST:I

    or-int v3, v0, v4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11986
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_COPYRIGHT:I

    or-int v3, v0, v4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11988
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11989
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    or-int/2addr v0, v8

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 11991
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 11992
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 11993
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11996
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    or-int/2addr v0, v8

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 12000
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 12001
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 12002
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_VERSION:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12003
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12004
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_COLOR_SPACE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12005
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12007
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12010
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12012
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12014
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_MAKER_NOTE:I

    or-int v3, v0, v7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12017
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_USER_COMMENT:I

    or-int v3, v0, v7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12020
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0xd

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12021
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12022
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12023
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    or-int v3, v0, v4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12026
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    or-int v3, v0, v4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12029
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    or-int v3, v0, v4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12032
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x21

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12033
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12035
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_F_NUMBER:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12036
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12038
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    or-int v3, v0, v4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12041
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    or-int v3, v0, v5

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12044
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_OECF:I

    or-int v3, v0, v7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12046
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12048
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12050
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12052
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12054
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12056
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12058
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12059
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12060
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12061
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12063
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    or-int v3, v0, v5

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12066
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12068
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    or-int v3, v0, v7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12071
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12074
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12077
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12080
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12082
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12084
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SENSING_METHOD:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12086
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_FILE_SOURCE:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12087
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SCENE_TYPE:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12088
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_CFA_PATTERN:I

    or-int v3, v0, v7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12091
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12093
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12094
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12095
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12097
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12100
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12102
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12104
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_CONTRAST:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12105
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SATURATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12106
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SHARPNESS:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12107
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    or-int v3, v0, v7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12110
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12113
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    or-int/2addr v0, v8

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 12116
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 12117
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 12118
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v3, 0x10000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12119
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12120
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12121
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12123
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12125
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/high16 v3, 0x10000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12127
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12129
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12131
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    or-int v3, v0, v4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12134
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_STATUS:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12135
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12136
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DOP:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12137
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12138
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_SPEED:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12139
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12140
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_TRACK:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12141
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12142
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12144
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    or-int v3, v0, v4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12147
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12148
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12150
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12151
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12153
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12154
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12156
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    or-int v3, v0, v7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12159
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    or-int v3, v0, v7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12162
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12163
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    or-int/2addr v0, v5

    or-int/lit8 v0, v0, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 12166
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    .line 12167
    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 12168
    iget-object v1, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    or-int/2addr v0, v4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1916
    :cond_0
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->tagInfo:Landroid/util/SparseIntArray;

    return-object v0

    .line 11927
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public final getTagIntValue(I)Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1123
    invoke-direct {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v1

    .line 4188
    invoke-direct {p0, p1, v1}, Lcom/android/camera/exif/ExifInterface;->getTag(II)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 4189
    if-nez v1, :cond_1

    move-object v1, v0

    .line 4113
    :goto_0
    if-eqz v1, :cond_0

    array-length v2, v1

    if-gtz v2, :cond_2

    .line 4114
    :cond_0
    :goto_1
    return-object v0

    .line 4192
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/exif/ExifTag;->getValueAsInts()[I

    move-result-object v1

    goto :goto_0

    .line 4116
    :cond_2
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1
.end method

.method public final getTagRationalValue(I)Lcom/android/camera/util/Rational;
    .locals 3

    .prologue
    .line 1161
    invoke-direct {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 5150
    invoke-direct {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValues(II)[Lcom/android/camera/util/Rational;

    move-result-object v1

    .line 5151
    if-eqz v1, :cond_0

    array-length v0, v1

    if-nez v0, :cond_1

    .line 5152
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5154
    :cond_1
    new-instance v0, Lcom/android/camera/util/Rational;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/camera/util/Rational;-><init>(Lcom/android/camera/util/Rational;)V

    goto :goto_0
.end method

.method public final getTagRationalValues(I)[Lcom/android/camera/util/Rational;
    .locals 1

    .prologue
    .line 1237
    invoke-direct {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1238
    invoke-direct {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTagRationalValues(II)[Lcom/android/camera/util/Rational;

    move-result-object v0

    return-object v0
.end method

.method public final getTagStringValue(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1085
    invoke-direct {p0, p1}, Lcom/android/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 4074
    invoke-direct {p0, p1, v0}, Lcom/android/camera/exif/ExifInterface;->getTag(II)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 4075
    if-nez v0, :cond_0

    .line 4076
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4078
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final readExif(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    if-nez p1, :cond_0

    .line 606
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/camera/exif/ExifReader;

    invoke-direct {v0, p0}, Lcom/android/camera/exif/ExifReader;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    invoke-virtual {v0, p1}, Lcom/android/camera/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/android/camera/exif/ExifData;
    :try_end_0
    .catch Lcom/android/camera/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 614
    iput-object v0, p0, Lcom/android/camera/exif/ExifInterface;->data:Lcom/android/camera/exif/ExifData;

    .line 615
    return-void

    .line 611
    :catch_0
    move-exception v0

    .line 612
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid exif format : "

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final readExif(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    if-nez p1, :cond_0

    .line 627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 632
    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 634
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 635
    return-void
.end method

.method public final readExif([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 595
    return-void
.end method

.method public final removeCompressedThumbnail()V
    .locals 2

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->data:Lcom/android/camera/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifData;->setCompressedThumbnail([B)V

    .line 1691
    return-void
.end method

.method public final setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/camera/exif/ExifInterface;->data:Lcom/android/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/camera/exif/ExifData;->addTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    return-object v0
.end method

.method public final writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 703
    if-nez p1, :cond_0

    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 707
    invoke-static {p1, v0}, Lcom/android/camera/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 708
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 709
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 710
    return-void
.end method

.method public final writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 770
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 775
    invoke-static {p1, v0}, Lcom/android/camera/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 776
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 778
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 779
    return-void
.end method

.method public final writeExif([BLjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    if-nez p1, :cond_0

    .line 666
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 669
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 670
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 671
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 672
    return-void
.end method
