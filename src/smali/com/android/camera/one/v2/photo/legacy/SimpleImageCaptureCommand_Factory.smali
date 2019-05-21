.class public final Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand_Factory;
.super Ljava/lang/Object;
.source "SimpleImageCaptureCommand_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final frameServerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            ">;"
        }
    .end annotation
.end field

.field private final imageReaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private final imageSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final requestTemplateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final traceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand_Factory;->frameServerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand_Factory;->requestTemplateProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand_Factory;->imageReaderProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand_Factory;->imageSaverProvider:Ljavax/inject/Provider;

    .line 47
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 14
    .line 1051
    new-instance v0, Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 1052
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/Logger$Factory;

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 1053
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/debug/trace/Trace;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand_Factory;->frameServerProvider:Ljavax/inject/Provider;

    .line 1054
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/core/FrameServer;

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand_Factory;->requestTemplateProvider:Ljavax/inject/Provider;

    .line 1055
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v5, p0, Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand_Factory;->imageReaderProvider:Ljavax/inject/Provider;

    .line 1056
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

    iget-object v6, p0, Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand_Factory;->imageSaverProvider:Ljavax/inject/Provider;

    .line 1057
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/one/v2/photo/legacy/SimpleImageCaptureCommand;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;)V

    .line 14
    return-object v0
.end method
