.class public final enum Lcom/android/camera/exif/ExifOrientation;
.super Ljava/lang/Enum;
.source "ExifOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/exif/ExifOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/exif/ExifOrientation;

.field private static enum BOTTOM_LEFT:Lcom/android/camera/exif/ExifOrientation;

.field public static final enum BOTTOM_RIGHT:Lcom/android/camera/exif/ExifOrientation;

.field public static final enum LEFT_BOTTOM:Lcom/android/camera/exif/ExifOrientation;

.field private static enum LEFT_TOP:Lcom/android/camera/exif/ExifOrientation;

.field private static final LOOKUP:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Short;",
            "Lcom/android/camera/exif/ExifOrientation;",
            ">;"
        }
    .end annotation
.end field

.field private static enum RIGHT_BOTTOM:Lcom/android/camera/exif/ExifOrientation;

.field public static final enum RIGHT_TOP:Lcom/android/camera/exif/ExifOrientation;

.field private static final TAG:Ljava/lang/String;

.field public static final enum TOP_LEFT:Lcom/android/camera/exif/ExifOrientation;

.field private static enum TOP_RIGHT:Lcom/android/camera/exif/ExifOrientation;


# instance fields
.field private final tagExifValue:S


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 31
    new-instance v0, Lcom/android/camera/exif/ExifOrientation;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera/exif/ExifOrientation;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/camera/exif/ExifOrientation;->TOP_LEFT:Lcom/android/camera/exif/ExifOrientation;

    .line 32
    new-instance v0, Lcom/android/camera/exif/ExifOrientation;

    const-string v1, "TOP_RIGHT"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/camera/exif/ExifOrientation;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/camera/exif/ExifOrientation;->TOP_RIGHT:Lcom/android/camera/exif/ExifOrientation;

    .line 33
    new-instance v0, Lcom/android/camera/exif/ExifOrientation;

    const-string v1, "BOTTOM_RIGHT"

    invoke-direct {v0, v1, v5, v6}, Lcom/android/camera/exif/ExifOrientation;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/camera/exif/ExifOrientation;->BOTTOM_RIGHT:Lcom/android/camera/exif/ExifOrientation;

    .line 34
    new-instance v0, Lcom/android/camera/exif/ExifOrientation;

    const-string v1, "BOTTOM_LEFT"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/camera/exif/ExifOrientation;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/camera/exif/ExifOrientation;->BOTTOM_LEFT:Lcom/android/camera/exif/ExifOrientation;

    .line 35
    new-instance v0, Lcom/android/camera/exif/ExifOrientation;

    const-string v1, "LEFT_TOP"

    invoke-direct {v0, v1, v7, v8}, Lcom/android/camera/exif/ExifOrientation;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/camera/exif/ExifOrientation;->LEFT_TOP:Lcom/android/camera/exif/ExifOrientation;

    .line 36
    new-instance v0, Lcom/android/camera/exif/ExifOrientation;

    const-string v1, "RIGHT_TOP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/android/camera/exif/ExifOrientation;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/camera/exif/ExifOrientation;->RIGHT_TOP:Lcom/android/camera/exif/ExifOrientation;

    .line 37
    new-instance v0, Lcom/android/camera/exif/ExifOrientation;

    const-string v1, "RIGHT_BOTTOM"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/exif/ExifOrientation;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/camera/exif/ExifOrientation;->RIGHT_BOTTOM:Lcom/android/camera/exif/ExifOrientation;

    .line 38
    new-instance v0, Lcom/android/camera/exif/ExifOrientation;

    const-string v1, "LEFT_BOTTOM"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/exif/ExifOrientation;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/camera/exif/ExifOrientation;->LEFT_BOTTOM:Lcom/android/camera/exif/ExifOrientation;

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/camera/exif/ExifOrientation;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/camera/exif/ExifOrientation;->TOP_LEFT:Lcom/android/camera/exif/ExifOrientation;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/camera/exif/ExifOrientation;->TOP_RIGHT:Lcom/android/camera/exif/ExifOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/exif/ExifOrientation;->BOTTOM_RIGHT:Lcom/android/camera/exif/ExifOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/exif/ExifOrientation;->BOTTOM_LEFT:Lcom/android/camera/exif/ExifOrientation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/exif/ExifOrientation;->LEFT_TOP:Lcom/android/camera/exif/ExifOrientation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/camera/exif/ExifOrientation;->RIGHT_TOP:Lcom/android/camera/exif/ExifOrientation;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/exif/ExifOrientation;->RIGHT_BOTTOM:Lcom/android/camera/exif/ExifOrientation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/exif/ExifOrientation;->LEFT_BOTTOM:Lcom/android/camera/exif/ExifOrientation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/exif/ExifOrientation;->$VALUES:[Lcom/android/camera/exif/ExifOrientation;

    .line 42
    invoke-static {}, Lcom/android/camera/exif/ExifOrientation;->values()[Lcom/android/camera/exif/ExifOrientation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/camera/exif/JpegHeader;

    invoke-direct {v1}, Lcom/android/camera/exif/JpegHeader;-><init>()V

    .line 41
    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->uniqueIndex(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/camera/exif/ExifOrientation;->LOOKUP:Lcom/google/common/collect/ImmutableMap;

    .line 51
    const-string v0, "ExifOrientation"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/exif/ExifOrientation;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput-short p3, p0, Lcom/android/camera/exif/ExifOrientation;->tagExifValue:S

    .line 57
    return-void
.end method

.method public static fromRotation(Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/android/camera/exif/ExifOrientation;
    .locals 2

    .prologue
    .line 95
    const-string v0, "must supply a valid orientation to convert to exif"

    invoke-static {p0, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/camera/util/layout/Orientation;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be one of 4 defined values!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :pswitch_0
    sget-object v0, Lcom/android/camera/exif/ExifOrientation;->TOP_LEFT:Lcom/android/camera/exif/ExifOrientation;

    .line 104
    :goto_0
    return-object v0

    .line 100
    :pswitch_1
    sget-object v0, Lcom/android/camera/exif/ExifOrientation;->RIGHT_TOP:Lcom/android/camera/exif/ExifOrientation;

    goto :goto_0

    .line 102
    :pswitch_2
    sget-object v0, Lcom/android/camera/exif/ExifOrientation;->BOTTOM_RIGHT:Lcom/android/camera/exif/ExifOrientation;

    goto :goto_0

    .line 104
    :pswitch_3
    sget-object v0, Lcom/android/camera/exif/ExifOrientation;->LEFT_BOTTOM:Lcom/android/camera/exif/ExifOrientation;

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRotation(Lcom/android/camera/exif/ExifOrientation;)Lcom/google/android/apps/camera/util/layout/Orientation;
    .locals 4

    .prologue
    .line 116
    if-nez p0, :cond_0

    .line 117
    sget-object v0, Lcom/android/camera/exif/ExifOrientation;->TAG:Ljava/lang/String;

    const-string v1, "Computing rotation for an null exif orientation, returning 0"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 131
    :goto_0
    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifOrientation;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :pswitch_0
    sget-object v0, Lcom/android/camera/exif/ExifOrientation;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Computing rotation for an invalid orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    goto :goto_0

    .line 122
    :pswitch_1
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    goto :goto_0

    .line 124
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_90:Lcom/google/android/apps/camera/util/layout/Orientation;

    goto :goto_0

    .line 126
    :pswitch_3
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_180:Lcom/google/android/apps/camera/util/layout/Orientation;

    goto :goto_0

    .line 128
    :pswitch_4
    sget-object v0, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_270:Lcom/google/android/apps/camera/util/layout/Orientation;

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static parseFromExif(Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/exif/ExifOrientation;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 70
    if-nez p0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :cond_1
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    .line 1065
    sget-object v1, Lcom/android/camera/exif/ExifOrientation;->LOOKUP:Lcom/google/common/collect/ImmutableMap;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/exif/ExifOrientation;

    goto :goto_0
.end method

.method public static parseFromExif([B)Lcom/android/camera/exif/ExifOrientation;
    .locals 1

    .prologue
    .line 83
    const-string v0, "byte array must be present and should contain jpeg data"

    invoke-static {p0, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {p0}, Lcom/android/camera/util/ExifUtil;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/android/camera/exif/ExifOrientation;->parseFromExif(Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/exif/ExifOrientation;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lcom/android/camera/exif/ExifOrientation;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/camera/exif/ExifOrientation;->$VALUES:[Lcom/android/camera/exif/ExifOrientation;

    invoke-virtual {v0}, [Lcom/android/camera/exif/ExifOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/exif/ExifOrientation;

    return-object v0
.end method


# virtual methods
.method public final getTagExifValue()S
    .locals 1

    .prologue
    .line 60
    iget-short v0, p0, Lcom/android/camera/exif/ExifOrientation;->tagExifValue:S

    return v0
.end method
