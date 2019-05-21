.class Lcom/android/camera/exif/JpegHeader;
.super Ljava/lang/Object;
.source "JpegHeader.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lcom/android/camera/exif/ExifOrientation;)Ljava/lang/Short;
    .locals 1

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/android/camera/exif/ExifOrientation;->getTagExifValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static final isSofMarker(S)Z
    .locals 2

    .prologue
    .line 30
    and-int/lit8 v0, p0, -0x10

    const/16 v1, -0x40

    if-ne v0, v1, :cond_0

    const/16 v0, -0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, -0x38

    if-eq p0, v0, :cond_0

    const/16 v0, -0x34

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2043
    check-cast p1, Lcom/android/camera/exif/ExifOrientation;

    invoke-static {p1}, Lcom/android/camera/exif/JpegHeader;->apply(Lcom/android/camera/exif/ExifOrientation;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method
