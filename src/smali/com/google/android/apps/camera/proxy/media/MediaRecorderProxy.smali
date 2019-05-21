.class public final Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;
.super Ljava/lang/Object;
.source "MediaRecorderProxy.java"


# instance fields
.field private isReleased:Z

.field private final mediaRecorder:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>(Landroid/media/MediaRecorder;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    .line 19
    iput-object p1, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 20
    return-void
.end method


# virtual methods
.method public final getMediaRecorder()Landroid/media/MediaRecorder;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method public final declared-synchronized getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 36
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;
        }
    .end annotation

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 201
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :cond_0
    monitor-exit p0

    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    :try_start_2
    new-instance v1, Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized prepare()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;
        }
    .end annotation

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :cond_0
    monitor-exit p0

    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    :try_start_2
    new-instance v1, Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized release()V
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;
        }
    .end annotation

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 211
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_0
    monitor-exit p0

    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    :try_start_2
    new-instance v1, Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAudioChannels(I)V
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAudioEncoder(I)V
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAudioEncodingBitRate(I)V
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAudioSamplingRate(I)V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAudioSource(I)V
    .locals 2

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setCaptureRate(D)V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setInputSurface(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setLocation(FF)V
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setLocation(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setMaxDuration(I)V
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setMaxFileSize(J)V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setOrientationHint(I)V
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setOutputFile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setOutputFormat(I)V
    .locals 1

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setVideoEncoder(I)V
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_0
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setVideoEncodingBitRate(I)V
    .locals 1

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setVideoFrameRate(I)V
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setVideoSize(II)V
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRecorder;->setVideoSize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_0
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setVideoSource(I)V
    .locals 2

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_0
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;
        }
    .end annotation

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 191
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :cond_0
    monitor-exit p0

    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    :try_start_2
    new-instance v1, Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;
        }
    .end annotation

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->isReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 221
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/media/MediaRecorderProxy;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :cond_0
    monitor-exit p0

    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 232
    :try_start_2
    new-instance v1, Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/proxy/media/MediaRecorderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
