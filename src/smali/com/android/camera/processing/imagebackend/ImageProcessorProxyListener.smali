.class public final Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;
.super Ljava/lang/Object;
.source "ImageProcessorProxyListener.java"

# interfaces
.implements Lcom/android/camera/processing/imagebackend/ImageProcessorListener;


# instance fields
.field private final imageFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageProcessorListener;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageProcessorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "IProxyListener"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->imageFilter:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method private final filteredListeners(J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageProcessorListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 105
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->imageFilter:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->imageFilter:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-nez v1, :cond_0

    .line 106
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_2
    return-object v2
.end method


# virtual methods
.method public final getMapSize()I
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->imageFilter:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getNumRegisteredListeners()I
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-wide v2, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->contentId:J

    invoke-direct {p0, v2, v3}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->filteredListeners(J)Ljava/util/List;

    move-result-object v0

    .line 144
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 147
    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 149
    :cond_0
    return-void
.end method

.method public final onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V
    .locals 4

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-wide v2, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->contentId:J

    invoke-direct {p0, v2, v3}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->filteredListeners(J)Ljava/util/List;

    move-result-object v0

    .line 156
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 159
    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 161
    :cond_0
    return-void
.end method

.method public final onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-wide v2, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->contentId:J

    invoke-direct {p0, v2, v3}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->filteredListeners(J)Ljava/util/List;

    move-result-object v0

    .line 167
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 170
    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 172
    :cond_0
    return-void
.end method

.method public final onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V
    .locals 4

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-wide v2, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->contentId:J

    invoke-direct {p0, v2, v3}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->filteredListeners(J)Ljava/util/List;

    move-result-object v0

    .line 132
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 135
    invoke-interface {v0, p1}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 137
    :cond_0
    return-void
.end method

.method public final registerListener(Lcom/android/camera/processing/imagebackend/ImageProcessorListener;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 4

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "There are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " listeners before addition"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    if-nez p2, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->imageFilter:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "There are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " listeners after addition"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    monitor-exit v1

    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->imageFilter:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final unregisterListener(Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)V
    .locals 4

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->imageFilter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "There are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " listeners after removal"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :goto_0
    monitor-exit v1

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registeredListeners:Ljava/util/List;

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x46

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Couldn\'t find listener.  There are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " listeners after removal"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
