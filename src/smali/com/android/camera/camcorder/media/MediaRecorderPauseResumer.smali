.class public final Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;
.super Ljava/lang/Object;
.source "MediaRecorderPauseResumer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "CdrMediaRecPauseRsm"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/camcorder/media/PreparedMediaRecorder;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    .line 18
    return-void
.end method


# virtual methods
.method public final pause()V
    .locals 4

    .prologue
    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->pause()V
    :try_end_0
    .catch Lcom/google/android/apps/camera/proxy/media/MediaRecorderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    sget-object v1, Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed when calling MediaRecorder#pause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final resume()V
    .locals 4

    .prologue
    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->resume()V
    :try_end_0
    .catch Lcom/google/android/apps/camera/proxy/media/MediaRecorderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    sget-object v1, Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed when calling MediaRecorder#resume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
