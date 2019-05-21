.class final Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver$SessionImpl;
.super Ljava/lang/Object;
.source "FilteredImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SessionImpl"
.end annotation


# instance fields
.field private final delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver$SessionImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver$SessionImpl;->delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    .line 28
    return-void
.end method


# virtual methods
.method public final addFullSizeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .line 1051
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver$SessionImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;->access$000(Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver$SessionImpl;->delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->addFullSizeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FilteredImageSaver$SessionImpl;->delegateSession:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->close()V

    .line 48
    return-void
.end method
