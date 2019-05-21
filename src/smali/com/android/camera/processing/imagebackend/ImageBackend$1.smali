.class final Lcom/android/camera/processing/imagebackend/ImageBackend$1;
.super Ljava/lang/Object;
.source "ImageBackend.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/SessionBase;Lcom/google/common/base/Optional;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field private synthetic val$finalImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$1;->this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$1;->val$finalImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$1;->this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$1;->val$finalImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->unregisterListener(Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)V

    .line 693
    return-void
.end method
