.class public Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;
.super Ljava/lang/Object;
.source "FrameClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/common/FrameClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RepeatTask"
.end annotation


# instance fields
.field private final camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

.field private final cameraFrameDropCount:I

.field private final durationMs:J

.field private final endTimeUtcMs:J

.field private final file:Ljava/io/File;

.field private final initialFrameNumber:J

.field private final interval:J

.field private final isTorchOn:Z

.field private final optionalLocation:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Lcom/google/common/base/Optional;ZJJI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;ZJJI)V"
        }
    .end annotation

    .prologue
    .line 2029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2030
    iput-object p1, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->file:Ljava/io/File;

    .line 2031
    iput-object p2, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    .line 2032
    iput-object p3, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->optionalLocation:Lcom/google/common/base/Optional;

    .line 2033
    iput-boolean p4, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->isTorchOn:Z

    .line 2034
    iput-wide p5, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->endTimeUtcMs:J

    .line 2035
    iput-wide p7, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->durationMs:J

    .line 2036
    iput p9, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->cameraFrameDropCount:I

    .line 2037
    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;)J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->initialFrameNumber:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;)J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->interval:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->task:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static provideDefaultRequestTemplate(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1048
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1050
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/RequestTransformer;

    .line 1051
    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1055
    :cond_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1057
    new-instance v2, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule$1;

    invoke-direct {v2, v1}, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule$1;-><init>(Ljava/util/List;)V

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static provideResponseManager(Lcom/android/camera/one/v2/common/ResponseManagerImpl;)Lcom/android/camera/one/v2/core/ResponseManager;
    .locals 0

    .prologue
    .line 1033
    return-object p0
.end method

.method public static provideResponseManagerRequestTransformer(Lcom/android/camera/one/v2/common/ResponseManagerImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/common/ResponseManagerImpl;",
            ")",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1039
    return-object p0
.end method


# virtual methods
.method public getCameraFrameDropCount()I
    .locals 1

    .prologue
    .line 2091
    iget v0, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->cameraFrameDropCount:I

    return v0
.end method

.method public getCaptureFrameRate()I
    .locals 1

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->getVideoCaptureFrameRate()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 2079
    iget-wide v0, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->durationMs:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->file:Ljava/io/File;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMimeType()Lcom/android/camera/storage/MimeType;
    .locals 1

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->getVideoFileFormat()Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->getMimeType()Lcom/android/camera/storage/MimeType;

    move-result-object v0

    return-object v0
.end method

.method public getOptionalLocation()Lcom/google/common/base/Optional;
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
    .line 2083
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->optionalLocation:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public getResolution()Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->getVideoResolution()Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    move-result-object v0

    return-object v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 2072
    iget-wide v0, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->endTimeUtcMs:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoResolution()Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;
    .locals 1

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->getVideoResolution()Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    move-result-object v0

    return-object v0
.end method

.method public isTorchOn()Z
    .locals 1

    .prologue
    .line 2068
    iget-boolean v0, p0, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;->isTorchOn:Z

    return v0
.end method
