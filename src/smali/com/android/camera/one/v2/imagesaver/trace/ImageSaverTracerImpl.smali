.class final Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;
.super Ljava/lang/Object;
.source "ImageSaverTracerImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer;


# instance fields
.field private final inputImageMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final processingMethod:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

.field private final reprocessingOutputMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final traceProcessors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTraceProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTraceProcessor;",
            ">;",
            "Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;->traceProcessors:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;->inputImageMetadata:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;->reprocessingOutputMetadata:Ljava/util/List;

    .line 51
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;->processingMethod:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;B)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;-><init>(Ljava/util/Set;Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;->traceProcessors:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;)Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;->processingMethod:Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracer$ProcessingMethod;

    return-object v0
.end method


# virtual methods
.method public final addInputImageMetadata(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;->inputImageMetadata:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 67
    .line 1090
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;->inputImageMetadata:Ljava/util/List;

    .line 1091
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;->reprocessingOutputMetadata:Ljava/util/List;

    .line 1092
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl$2;

    invoke-direct {v2, p0}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl$2;-><init>(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;)V

    .line 1090
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$Function2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl$1;-><init>(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTracerImpl;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 85
    return-void
.end method
