.class public final Lcom/android/camera/camcorder/media/PreparedMediaRecorder;
.super Ljava/lang/Object;
.source "PreparedMediaRecorder.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final intentFileDescriptor:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaRecorderProxy:Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;

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

.field private final recordingFile:Ljava/io/File;

.field private final recordingSurface:Landroid/view/Surface;

.field private final usePersistentSurface:Z

.field private final videoOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "PreparedMediaRec"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/io/File;ILcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;Lcom/google/common/base/Optional;Landroid/view/Surface;Lcom/google/common/base/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/io/File;",
            "I",
            "Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;",
            "Landroid/view/Surface;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean p1, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->usePersistentSurface:Z

    .line 67
    iput-object p2, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->recordingFile:Ljava/io/File;

    .line 68
    iput p3, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->videoOrientation:I

    .line 69
    iput-object p4, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->mediaRecorderProxy:Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;

    .line 70
    iput-object p5, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->optionalLocation:Lcom/google/common/base/Optional;

    .line 71
    iput-object p6, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->recordingSurface:Landroid/view/Surface;

    .line 72
    iput-object p7, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->intentFileDescriptor:Lcom/google/common/base/Optional;

    .line 73
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 4

    .prologue
    .line 77
    sget-object v0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->TAG:Ljava/lang/String;

    const-string v1, "reset and release MediaRecorder"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->mediaRecorderProxy:Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->reset()V

    .line 79
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->mediaRecorderProxy:Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->release()V

    .line 80
    iget-boolean v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->usePersistentSurface:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->recordingSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->intentFileDescriptor:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->intentFileDescriptor:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    sget-object v1, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getIntentFileDescriptor()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->intentFileDescriptor:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public final getOptionalLocation()Lcom/google/common/base/Optional;
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
    .line 109
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->optionalLocation:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public final getRecordingFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->recordingFile:Ljava/io/File;

    return-object v0
.end method

.method public final getRecordingSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->recordingSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public final getVideoOrientation()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->videoOrientation:I

    return v0
.end method

.method public final isUsePersistentSurface()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->usePersistentSurface:Z

    return v0
.end method

.method public final pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->mediaRecorderProxy:Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->pause()V

    .line 158
    return-void
.end method

.method public final resume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->mediaRecorderProxy:Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->resume()V

    .line 162
    return-void
.end method

.method public final start$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5TMMAP39C4NL0SJ5E1GN4PB49LIM8QB1A9IM6RRICHIN4GR1DHM64OB3DCTIILG_(Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->mediaRecorderProxy:Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;

    new-instance v1, Lcom/android/camera/camcorder/media/PreparedMediaRecorder$1;

    invoke-direct {v1, p1}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder$1;-><init>(Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->mediaRecorderProxy:Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->start()V

    .line 150
    return-void
.end method

.method public final stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->mediaRecorderProxy:Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->stop()V

    .line 154
    return-void
.end method
