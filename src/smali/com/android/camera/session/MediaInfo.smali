.class public final Lcom/android/camera/session/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# instance fields
.field private duration:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private exif:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/exif/ExifInterface;",
            ">;"
        }
    .end annotation
.end field

.field private location:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mimeType:Lcom/android/camera/storage/MimeType;

.field private orientation:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final size:Lcom/android/camera/util/Size;


# direct methods
.method public constructor <init>(Lcom/android/camera/util/Size;Lcom/android/camera/storage/MimeType;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/MediaInfo;->orientation:Lcom/google/common/base/Optional;

    .line 21
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/MediaInfo;->exif:Lcom/google/common/base/Optional;

    .line 23
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/MediaInfo;->duration:Lcom/google/common/base/Optional;

    .line 25
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/MediaInfo;->location:Lcom/google/common/base/Optional;

    .line 28
    iput-object p1, p0, Lcom/android/camera/session/MediaInfo;->size:Lcom/android/camera/util/Size;

    .line 29
    iput-object p2, p0, Lcom/android/camera/session/MediaInfo;->mimeType:Lcom/android/camera/storage/MimeType;

    .line 30
    return-void
.end method


# virtual methods
.method public final getDuration()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/session/MediaInfo;->duration:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public final getExif()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/exif/ExifInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/session/MediaInfo;->exif:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public final getLocation()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/session/MediaInfo;->location:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public final getMimeType()Lcom/android/camera/storage/MimeType;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/session/MediaInfo;->mimeType:Lcom/android/camera/storage/MimeType;

    return-object v0
.end method

.method public final getOrientation()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/session/MediaInfo;->orientation:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public final getSize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/session/MediaInfo;->size:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method public final setDuration(Ljava/lang/Long;)Lcom/android/camera/session/MediaInfo;
    .locals 1

    .prologue
    .line 67
    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/MediaInfo;->duration:Lcom/google/common/base/Optional;

    .line 68
    return-object p0
.end method

.method public final setExif(Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/session/MediaInfo;
    .locals 1

    .prologue
    .line 62
    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/MediaInfo;->exif:Lcom/google/common/base/Optional;

    .line 63
    return-object p0
.end method

.method public final setLocation(Landroid/location/Location;)Lcom/android/camera/session/MediaInfo;
    .locals 1

    .prologue
    .line 72
    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/MediaInfo;->location:Lcom/google/common/base/Optional;

    .line 73
    return-object p0
.end method

.method public final setOrientation(Ljava/lang/Integer;)Lcom/android/camera/session/MediaInfo;
    .locals 1

    .prologue
    .line 57
    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/MediaInfo;->orientation:Lcom/google/common/base/Optional;

    .line 58
    return-object p0
.end method
