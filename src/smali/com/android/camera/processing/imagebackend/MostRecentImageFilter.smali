.class public final Lcom/android/camera/processing/imagebackend/MostRecentImageFilter;
.super Ljava/lang/Object;
.source "MostRecentImageFilter.java"

# interfaces
.implements Lcom/android/camera/processing/imagebackend/ImageFilter;


# instance fields
.field private mostRecentImage:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

.field private result:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/MostRecentImageFilter;->result:Lcom/google/common/util/concurrent/SettableFuture;

    .line 26
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/MostRecentImageFilter;->mostRecentImage:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/MostRecentImageFilter;->result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/MostRecentImageFilter;->result:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/MostRecentImageFilter;->mostRecentImage:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final start()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/MostRecentImageFilter;->result:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public final submit(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/SessionBase;)V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/MostRecentImageFilter;->mostRecentImage:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/MostRecentImageFilter;->mostRecentImage:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v0, v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 36
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/MostRecentImageFilter;->mostRecentImage:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/MostRecentImageFilter;->mostRecentImage:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v0, v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 40
    :cond_1
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/MostRecentImageFilter;->mostRecentImage:Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_2
    iget-object v0, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    goto :goto_0
.end method
