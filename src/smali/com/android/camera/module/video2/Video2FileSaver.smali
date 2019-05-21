.class public final Lcom/android/camera/module/video2/Video2FileSaver;
.super Ljava/lang/Object;
.source "Video2FileSaver.java"


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "Video2FilSaver"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2FileSaver;->contentResolver:Landroid/content/ContentResolver;

    .line 31
    new-instance v0, Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

    invoke-direct {v0}, Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/video2/Video2FileSaver;->contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

    .line 32
    return-void
.end method


# virtual methods
.method public final insertVideoSnapshot$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIADN62S3JD1NN8EP99HHMUR9FCTNMUPRCCKNM6RRDDLNMSBR2C5PMABQFE1Q6IRREC5M3M___(Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;)Lcom/google/common/base/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    iget-object v1, p0, Lcom/android/camera/module/video2/Video2FileSaver;->contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

    invoke-direct {v0, v1}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;-><init>(Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;)V

    iget-object v1, p1, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;->filePath:Ljava/io/File;

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->file(Ljava/io/File;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;->location:Lcom/google/common/base/Optional;

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->location(Lcom/google/common/base/Optional;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;->mimeType:Lcom/android/camera/storage/MimeType;

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->mimeType(Lcom/android/camera/storage/MimeType;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;->orientation:I

    .line 68
    invoke-static {v1}, Lcom/google/android/apps/camera/util/layout/Orientation;->from(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->orientation(Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;->size:Lcom/android/camera/util/Size;

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->size(Lcom/android/camera/util/Size;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;->takenTime:J

    .line 70
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->takenTime(J)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule;->filePath:Ljava/io/File;

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->title(Ljava/lang/String;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->build()Lcom/android/camera/storage/mediastore/ContentValuesProxy;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/camera/module/video2/Video2FileSaver;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 75
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final saveFile$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBIAPKM8PBF8PKMOP9R55666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEO_(Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;)Lcom/google/common/base/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    iget-object v1, p0, Lcom/android/camera/module/video2/Video2FileSaver;->contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

    invoke-direct {v0, v1}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;-><init>(Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;)V

    .line 43
    invoke-virtual {p1}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->title(Ljava/lang/String;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->file(Ljava/io/File;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getTakenTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->takenTime(J)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->duration(J)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getMimeType()Lcom/android/camera/storage/MimeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->mimeType(Lcom/android/camera/storage/MimeType;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/util/Size;

    .line 48
    invoke-virtual {p1}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getResolution()Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/util/Size;-><init>(Landroid/util/Size;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->size(Lcom/android/camera/util/Size;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->getOptionalLocation()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->location(Lcom/google/common/base/Optional;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->build()Lcom/android/camera/storage/mediastore/ContentValuesProxy;

    move-result-object v0

    .line 51
    const-string v1, "content://media/external/video/media"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/android/camera/module/video2/Video2FileSaver;->contentResolver:Landroid/content/ContentResolver;

    .line 53
    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
